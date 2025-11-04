import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/src/config/abp_generic_parser.dart';
import 'package:swagger_to_dart/src/config/fastapi_generic_parser.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class RegularModelGeneratorStrategy
    extends ModelGeneratorStrategy<MapEntry<String, OpenApiSchemas>> {
  const RegularModelGeneratorStrategy(super.context);

  @override
  Library build(MapEntry<String, OpenApiSchemas> model) {
    final title = model.value.title;
    final properties = model.value.properties ?? {};

    String effectiveTitle = title ?? model.key;

    if (context.config.model.supportGenericArguments) {
      if (context.config.generationSource == GenerationSource.abpIO &&
          AbpGenericParser.isAbpFormat(effectiveTitle)) {
        if (AbpGenericParser.toStandardFormat(effectiveTitle)
            case final title?) {
          if (_genericClass(title, model) case final genericClass?) {
            return genericClass;
          }
        }
      }
      if (context.config.generationSource == GenerationSource.fastAPI &&
          FastApiGenericParser.isFastApiFormat(effectiveTitle)) {
        if (FastApiGenericParser.toStandardFormat(effectiveTitle)
            case final title?) {
          if (_genericClass(title, model) case final genericClass?) {
            return genericClass;
          }
        }
      }
    }

    final prefixes = context.config.model.removeModelPrefixes;
    final className = Renaming.instance.renameClass(
      effectiveTitle,
      removePrefixes: prefixes.isNotEmpty ? prefixes : null,
    );

    final filename = Renaming.instance.renameFile(className);

    return Library(
      (b) => b
        ..name = filename
        ..directives.addAll([
          Directive.import('exports.dart'),
          Directive.part('$filename.freezed.dart'),
          Directive.part('$filename.g.dart'),
        ])
        ..docs.addAll([
          '/// ${model.key}',
          ...JsonFactory.instance
              .encode(model.value.toJson())
              .split('\n')
              .map((e) => '/// $e'),
        ])
        ..body.addAll([
          Class(
            (b) => b
              ..docs.addAll([
                '// $className',
              ])
              ..annotations.addAll([refer('freezed')])
              ..abstract = true
              ..name = className
              ..mixins.addAll([refer('_\$$className')])
              ..fields.addAll([
                ...properties.entries.map((entry) {
                  final name = Renaming.instance.renameProperty(entry.key);

                  return Field(
                    (b) => b
                      ..static = true
                      ..modifier = FieldModifier.constant
                      ..name = getKey(name)
                      ..type = refer('$String')
                      ..assignment = stringCode(entry.key),
                  );
                })
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
                      refer('jsonSerializable'),
                    ])
                    ..constant = true
                    ..factory = true
                    ..redirect = refer('_$className')
                    ..optionalParameters.addAll([
                      ...properties.entries.map((entry) {
                        return context.extension.propertyGenerator.build(
                          entry,
                          className: className,
                          required:
                              (model.value.required_ ?? []).contains(entry.key),
                        );
                      }),
                    ]),
                ),
                Constructor(
                  (b) => b
                    ..factory = true
                    ..name = 'fromJson'
                    ..requiredParameters.addAll([
                      Parameter((b) => b
                        ..name = 'json'
                        ..type = refer('Map<String, dynamic>')),
                    ])
                    ..lambda = true
                    ..body = Code('_\$${className}FromJson(json)'),
                )
              ]),
          )
        ]),
    );
  }

  Library? _genericClass(
    String title,
    MapEntry<String, OpenApiSchemas> model,
  ) {
    final isAbpGeneric = AbpGenericParser.isAbpFormat(title);
    final isFastApiGeneric =
        !isAbpGeneric && FastApiGenericParser.isFastApiFormat(title);

    if (!isAbpGeneric && !isFastApiGeneric) {
      return null;
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
      return null;
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
                  ..name = getKey(name)
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

  static String? getKey(String name) => '${name}Key_';
}
