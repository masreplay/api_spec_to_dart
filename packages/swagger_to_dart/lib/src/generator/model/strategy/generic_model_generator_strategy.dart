import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/src/config/abp_generic_parser.dart';
import 'package:swagger_to_dart/src/config/fastapi_generic_parser.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class GenericModelGeneratorStrategy
    extends ModelGeneratorStrategy<MapEntry<String, OpenApiSchemas>> {
  const GenericModelGeneratorStrategy(super.context);

  @override
  Library build(MapEntry<String, OpenApiSchemas> model) {
    final title = model.value.title;
    String effectiveTitle = title ?? model.key;

    final generationSource = context.config.generationSource;
    String? standardTitle;

    if (generationSource == GenerationSource.abpIO) {
      _debug('abpIO: $effectiveTitle');
      standardTitle = AbpGenericParser.toStandardFormat(effectiveTitle);
      _debug('abpIO.generic.standardTitle: $standardTitle');
    } else if (generationSource == GenerationSource.fastAPI &&
        FastApiGenericParser.isFastApiFormat(effectiveTitle)) {
      standardTitle = FastApiGenericParser.toStandardFormat(effectiveTitle);
    }

    if (standardTitle == null) {
      throw ArgumentError(
          'Cannot generate generic model for title: $effectiveTitle');
    }

    return _buildGenericClass(standardTitle, model);
  }

  Library _buildGenericClass(
    String title,
    MapEntry<String, OpenApiSchemas> model,
  ) {
    _debug('buildGenericClass: $title');
    final isAbpGeneric = AbpGenericParser.isAbpFormat(title);
    final isFastApiGeneric =
        !isAbpGeneric && FastApiGenericParser.isFastApiFormat(title);

    if (!isAbpGeneric && !isFastApiGeneric) {
      throw ArgumentError(
          'Title is not in a recognized generic format: $title');
    }

    String? baseClass;
    List<String> genericArguments;

    if (isAbpGeneric) {
      baseClass = AbpGenericParser.extractBaseClassName(title);
      genericArguments = AbpGenericParser.extractGenericArguments(title);
    } else {
      baseClass = FastApiGenericParser.extractBaseClassName(title);
      genericArguments = FastApiGenericParser.extractGenericArguments(title);
    }

    if (baseClass == null || genericArguments.isEmpty) {
      throw ArgumentError(
          'Cannot extract base class or generic arguments from: $title');
    }

    final overrideTypes = <String, String>{};
    final genericTypeParams = <String>[];
    final fromJsonParams = <Parameter>[];

    for (var i = 0; i < genericArguments.length; i++) {
      final genericType = i == 0 ? 'T' : 'T${i + 1}';
      genericTypeParams.add(genericType);

      final genericArg = genericArguments[i];
      String? resolvedType;

      if (isAbpGeneric) {
        final schemas = context.openApi.components?.schemas ?? {};
        for (final entry in schemas.entries) {
          if (entry.key == genericArg ||
              entry.value.title == genericArg ||
              entry.key.endsWith(genericArg.split('.').last)) {
            resolvedType = context.extension.typeConverter.getRef(
              OpenApiSchemaRef(ref: '#/components/schemas/${entry.key}'),
            );
            break;
          }
        }
      } else {
        final schemas = context.openApi.components?.schemas ?? {};
        for (final entry in schemas.entries) {
          if (entry.key == genericArg ||
              entry.value.title == genericArg ||
              entry.key.contains(genericArg)) {
            resolvedType = context.extension.typeConverter.getRef(
              OpenApiSchemaRef(ref: '#/components/schemas/${entry.key}'),
            );
            break;
          }
        }
      }

      resolvedType ??= genericArg;
      overrideTypes[resolvedType] = genericType;

      fromJsonParams.add(
        Parameter(
          (b) => b
            ..name = 'fromJson$genericType'
            ..type = refer('$genericType Function(Object? json)'),
        ),
      );
    }

    final prefixes = context.config.model.removeModelPrefixes;
    final className = Renaming.instance.renameClass(
      baseClass,
      removePrefixes: prefixes.isNotEmpty ? prefixes : null,
    );
    final filename = Renaming.instance.renameFile(className);

    final properties = model.value.properties ?? {};
    final genericTypesString = genericTypeParams.join(', ');

    return Library((b) => b
      ..name = filename
      ..directives.addAll([
        Directive.import('exports.dart'),
        Directive.part('$filename.freezed.dart'),
        Directive.part('$filename.g.dart'),
      ])
      ..docs.addAll([
        '/// ${model.key}',
        '/// $className',
        ...JsonFactory.instance
            .encode(model.value.toJson())
            .split('\n')
            .map((e) => '/// $e'),
      ])
      ..body.addAll([
        Class((b) => b
          ..annotations.addAll([
            refer('Freezed(genericArgumentFactories: true)'),
          ])
          ..abstract = true
          ..name = className
          ..types.addAll(genericTypeParams.map((t) => refer(t)))
          ..mixins.add(refer('_\$$className<$genericTypesString>'))
          ..fields.addAll([
            ...properties.entries.map((entry) {
              final name = Renaming.instance.renameProperty(entry.key);

              return Field(
                (b) => b
                  ..static = true
                  ..modifier = FieldModifier.constant
                  ..name = _getKey(name)
                  ..type = refer('String')
                  ..assignment = stringCode(entry.key),
              );
            }),
          ])
          ..constructors.addAll([
            Constructor(
              (b) => b
                ..constant = true
                ..name = '_',
            ),
            Constructor(
              (b) => b
                ..annotations.addAll([
                  refer(
                    'JsonSerializable(converters: jsonSerializableConverters, genericArgumentFactories: true, createFieldMap: true)',
                  ),
                ])
                ..constant = true
                ..factory = true
                ..redirect = refer('_$className<$genericTypesString>')
                ..optionalParameters.addAll([
                  ...properties.entries.map((entry) {
                    return context.extension.propertyGenerator.build(
                      entry,
                      className: className,
                      overrideTypes: overrideTypes,
                    );
                  }),
                ]),
            ),
            Constructor(
              (b) => b
                ..factory = true
                ..name = 'fromJson'
                ..lambda = false
                ..requiredParameters.addAll([
                  Parameter(
                    (b) => b
                      ..name = 'json'
                      ..type = refer('Map<String, dynamic>'),
                  ),
                  ...fromJsonParams,
                ])
                ..body = Code(
                  '_\$${className}FromJson<$genericTypesString>(json, ${fromJsonParams.map((p) => p.name).join(', ')})',
                ),
            ),
          ]))
      ]));
  }

  static String? _getKey(String name) => '${name}Key_';
  
  void _debug(String s) {
    print('GenericModelGeneratorStrategy._debug: $s');
  }


  bool shouldUseGenericStrategy(MapEntry<String, OpenApiSchemas> model) {
    final supportGenericArguments =
        context.config.model.supportGenericArguments;
    if (!supportGenericArguments) {
      return false;
    }

    final title = model.value.title;
    String effectiveTitle = title ?? model.key;
    final generationSource = context.config.generationSource;

    if (generationSource == GenerationSource.abpIO) {
      final standardTitle = AbpGenericParser.toStandardFormat(effectiveTitle);
      return standardTitle != null;
    }

    if (generationSource == GenerationSource.fastAPI) {
      return FastApiGenericParser.isFastApiFormat(effectiveTitle);
    }

    return false;
  }
}
