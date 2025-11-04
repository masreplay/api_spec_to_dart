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
    final supportGenericArguments =
        context.config.model.supportGenericArguments;

    String effectiveTitle = title ?? model.key;

    switch (context.config.generationSource) {
      case GenerationSource.abpIO:
        effectiveTitle =
            AbpGenericParser.toStandardFormat(effectiveTitle) ?? effectiveTitle;
        break;
      case GenerationSource.fastAPI:
        effectiveTitle =
            FastApiGenericParser.toStandardFormat(effectiveTitle) ??
                effectiveTitle;
        break;
      default:
    }

    final isAbpGeneric = AbpGenericParser.isAbpFormat(effectiveTitle);
    final isFastApiGeneric =
        !isAbpGeneric && FastApiGenericParser.isFastApiFormat(effectiveTitle);

    if (isAbpGeneric) {
      final converted = AbpGenericParser.toStandardFormat(effectiveTitle);
      if (converted != null) {
        effectiveTitle = converted;
      }
    } else if (isFastApiGeneric) {
      final converted = FastApiGenericParser.toStandardFormat(effectiveTitle);
      if (converted != null) {
        effectiveTitle = converted;
      }
    }

    final prefixes = context.config.model.removeModelPrefixes;
    final className = Renaming.instance.renameClass(
      effectiveTitle,
      prefixes: prefixes.isNotEmpty ? prefixes : null,
    );
    final filename = Renaming.instance.renameFile(className);

    if (supportGenericArguments && title != null) {
      if (isAbpGeneric || isFastApiGeneric) {
        final genericClass = _genericClass(effectiveTitle, model);
        if (genericClass != null) return genericClass;
      }
    }

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

  /// "title": "BaseResponse[PaginationResponse[ItemResponse]]"
  /// or for ABP: "Volo.Abp.Application.Dtos.PagedResultDto`1[[Elitesoft.SuperApp.Gateway.CardRequests.AgentDto, ...]]"
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

    // Extract base class name
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

    // Map generic type names to their corresponding refs in the schema
    // For ABP, we need to match full type names like "Elitesoft.SuperApp.Gateway.CardRequests.AgentDto"
    // to refs like "#/components/schemas/Elitesoft.SuperApp.Gateway.CardRequests.AgentDto"
    final overrideTypes = <String, String>{};
    final genericTypeParams = <String>[];
    final fromJsonParams = <Parameter>[];

    for (var i = 0; i < genericArguments.length; i++) {
      final genericType = i == 0 ? 'T' : 'T${i + 1}';
      genericTypeParams.add(genericType);

      final genericArg = genericArguments[i];
      // Try to find the schema ref for this type
      String? resolvedType;

      if (isAbpGeneric) {
        // For ABP, the generic argument is the full type name
        // Try to find it in the schemas
        final schemas = context.openApi.components?.schemas ?? {};
        for (final entry in schemas.entries) {
          // Match by full type name or by short name
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
        // For FastAPI, the generic argument might already be a simple name
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

      // If not found, use the generic argument as-is (might be a nested generic)
      resolvedType ??= genericArg;
      overrideTypes[genericType] = resolvedType;

      // Add fromJson parameter
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
      prefixes: prefixes.isNotEmpty ? prefixes : null,
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
                    'JsonSerializable(converters: jsonSerializableConverters, genericArgumentFactories: true)',
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
