import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/generic_parser_factory.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class GenericModelGeneratorStrategy
    extends ModelGeneratorStrategy<MapEntry<String, OpenApiSchemas>> {
  const GenericModelGeneratorStrategy(super.context);

  @override
  Library build(MapEntry<String, OpenApiSchemas> model) {
    final title = model.value.title;
    final effectiveTitle = title ?? model.key;

    final generationSource = context.config.generationSource;
    final parser = GenericParserFactory.instance.getParser(
      source: generationSource,
      title: effectiveTitle,
    );

    if (parser == null) {
      throw ArgumentError(
          'Cannot generate generic model for title: $effectiveTitle');
    }

    if (generationSource == GenerationSource.abpIO) {
      _debug('abpIO: $effectiveTitle');
    }

    final standardTitle = parser.toStandardFormat(effectiveTitle);
    if (standardTitle == null) {
      throw ArgumentError('Cannot convert to standard format: $effectiveTitle');
    }

    if (generationSource == GenerationSource.abpIO) {
      _debug('abpIO.generic.standardTitle: $standardTitle');
    }

    return _buildGenericClass(standardTitle, model);
  }

  Library _buildGenericClass(
    String title,
    MapEntry<String, OpenApiSchemas> model,
  ) {
    _debug('buildGenericClass: $title');

    // Standard format uses angle brackets <>, so we can use DotNet parser
    // or detect which parser can handle the standard format
    final parser = GenericParserFactory.instance.detectParser(title);
    if (parser == null) {
      throw ArgumentError(
          'Title is not in a recognized generic format: $title');
    }

    final baseClass = parser.extractBaseClassName(title);
    final genericArguments = parser.extractGenericArguments(title);

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
      final resolvedType = _resolveGenericType(genericArg);

      final finalResolvedType = resolvedType ?? genericArg;
      overrideTypes[finalResolvedType] = genericType;

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
                ..lambda = true
                ..requiredParameters.addAll([
                  Parameter(
                    (b) => b
                      ..name = 'json'
                      ..type = refer('Map<String, dynamic>'),
                  ),
                  ...fromJsonParams,
                ])
                ..body = Code(
                  '_\$${className}FromJson<$genericTypesString>(json${fromJsonParams.isEmpty ? '' : ', '}${fromJsonParams.map((p) => p.name).join(', ')})',
                ),
            ),
          ]))
      ]));
  }

  String? _resolveGenericType(String genericArg) {
    final schemas = context.openApi.components?.schemas ?? {};

    for (final entry in schemas.entries) {
      final matches = (entry.key == genericArg ||
          entry.value.title == genericArg ||
          entry.key.contains(genericArg));

      if (matches) {
        return context.extension.typeConverter.getRef(
          OpenApiSchemaRef(ref: '#/components/schemas/${entry.key}'),
        );
      }
    }

    return null;
  }

  static String? _getKey(String name) => '${name}Key_';

  void _debug(String s) {
    print('GenericModelGeneratorStrategy._debug: $s');
  }

  bool shouldUseGenericStrategy(MapEntry<String, OpenApiSchemas> model) {
    final supportGenericArguments =
        context.config.model.supportGenericArguments;
    if (!supportGenericArguments) return false;

    final title = model.value.title;
    final effectiveTitle = title ?? model.key;
    final generationSource = context.config.generationSource;

    final parser = GenericParserFactory.instance.getParser(
      source: generationSource,
      title: effectiveTitle,
    );

    if (parser == null) {
      return false;
    }

    // For ABP, check if conversion succeeds
    if (generationSource == GenerationSource.abpIO) {
      return parser.toStandardFormat(effectiveTitle) != null;
    }

    // For others, just check format
    return parser.isFormat(effectiveTitle);
  }
}
