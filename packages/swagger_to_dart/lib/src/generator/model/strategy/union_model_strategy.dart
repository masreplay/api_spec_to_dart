import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/strategy.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';
import 'package:swagger_to_dart/src/utils/utils.dart';

class UnionModelStrategyParams {
  const UnionModelStrategyParams({
    required this.key,
    required this.schema,
    required this.refSchemaMap,
    required this.discriminator,
  });

  final String key;
  final OpenApiSchema schema;
  final Map<String, OpenApiSchemaRef> refSchemaMap;
  final OpenApiSchemaOneOfDiscriminator? discriminator;
}

class UnionModelStrategy
    extends ModelGeneratorStrategy<UnionModelStrategyParams> {
  const UnionModelStrategy(super.context);

  /// Helper to generate a key field name (e.g., 'productIdKey_')
  static String getKey(String name) => '${name}Key_';

  @override
  Library build(UnionModelStrategyParams params) {
    final unionClassFallbackName = context.config.model.unionClassFallbackName;
    final prefixes = context.config.model.removeModelPrefixes;

    final className = Renaming.instance.renameClass(
      params.key,
      removePrefixes: prefixes.isNotEmpty ? prefixes : null,
    );
    final filename = Renaming.instance.renameFile(className);

    // First pass: collect all unique property keys across all union cases
    // Map from original JSON key -> renamed Dart property name
    final Map<String, String> allPropertyKeys = {};
    
    for (final entry in params.refSchemaMap.entries) {
      final refSchema = entry.value;
      final referencedSchema = context.openApi.getOpenApiSchemasByRef(refSchema.ref!);
      final properties = referencedSchema?.properties ?? {};
      
      for (final propEntry in properties.entries) {
        final originalKey = propEntry.key;
        final propName = Renaming.instance.renameProperty(originalKey);
        allPropertyKeys[originalKey] = propName;
      }
    }

    // Generate static const String fields for all unique property keys
    final keyFields = allPropertyKeys.entries.map((entry) {
      final originalKey = entry.key;
      final propName = entry.value;
      
      return Field(
        (b) => b
          ..static = true
          ..modifier = FieldModifier.constant
          ..name = getKey(propName)
          ..type = refer('$String')
          ..assignment = stringCode(originalKey),
      );
    }).toList();

    // Second pass: generate union constructors with proper key references
    final unions = params.refSchemaMap.entries.map((entry) {
      final name = entry.key;
      final refSchema = entry.value;

      // Get the referenced schema to inline its properties
      final referencedSchema = context.openApi.getOpenApiSchemasByRef(refSchema.ref!);
      final properties = referencedSchema?.properties ?? {};
      final requiredProps = referencedSchema?.required_ ?? [];

      // Generate parameters for each property of the referenced schema
      final parameters = properties.entries.map((propEntry) {
        final propName = Renaming.instance.renameProperty(propEntry.key);
        final dartType = context.extension.typeConverter.get(
          propEntry.value,
          className: className,
        );
        final defaultValue = context.extension.typeConverter.getDefaultValue(propEntry.value);
        final isRequired = requiredProps.contains(propEntry.key) && defaultValue == null;
        final isNullable = dartType.endsWith('?');
        final hasDefaultValue = defaultValue != null;
        final adjustedDartType = (!hasDefaultValue && !isNullable && !isRequired)
            ? '$dartType?'
            : dartType;

        return Parameter(
          (b) => b
            ..docs.add('/// $propName')
            ..named = true
            ..required = isRequired
            ..annotations.addAll([
              if (hasDefaultValue) refer('$Default($defaultValue)'),
              refer('JsonKey(name: $className.${getKey(propName)})'),
            ])
            ..name = propName
            ..type = refer(adjustedDartType),
        );
      }).toList();

      return Constructor(
        (b) => b
          ..annotations.addAll([
            refer('jsonSerializable'),
            refer('$FreezedUnionValue(r"$name")'),
          ])
          ..constant = true
          ..factory = true
          ..name = Recase.instance.toCamelCase(name)
          ..redirect = refer(className + Recase.instance.toPascalCase(name))
          ..optionalParameters.addAll(parameters),
      );
    }).toList();

    // With inlined properties, the JSON converter simply passes through the JSON
    context.addJsonConvertor(
      Class(
        (b) => b
          ..name = '${className}MapJsonConverter'
          ..implements.addAll([
            refer('JsonConverter<$className, Map<String, dynamic>>'),
          ])
          ..constructors.add(Constructor((b) => b..constant = true))
          ..methods.addAll([
            Method(
              (b) => b
                ..annotations.addAll([
                  refer('override'),
                ])
                ..returns = refer(className)
                ..name = 'fromJson'
                ..requiredParameters.addAll([
                  Parameter((b) => b
                    ..name = 'json'
                    ..type = refer('Map<String, dynamic>')),
                ])
                ..body = Code('return $className.fromJson(json);'),
            ),
            Method(
              (b) => b
                ..annotations.addAll([
                  refer('override'),
                ])
                ..returns = refer('Map<String, dynamic>')
                ..name = 'toJson'
                ..requiredParameters.addAll([
                  Parameter((b) => b
                    ..name = 'object'
                    ..type = refer(className)),
                ])
                ..body = Code('return object.toJson();'),
            )
          ]),
      ),
    );

    return Library(
      (b) => b
        ..name = filename
        ..directives.addAll([
          for (final import in context.config.imports?.globalImports ?? [])
            Directive.import(import),
          Directive.import('exports.dart'),
          Directive.part('$filename.freezed.dart'),
          Directive.part('$filename.g.dart'),
        ])
        ..docs.addAll([
          '/// ${params.key}',
          ...JsonFactory.instance
              .encode(params.schema.toJson())
              .split('\n')
              .map((e) => '/// $e'),
        ])
        ..body.addAll([
          Class(
            (b) => b
              ..docs.addAll([
                '// $className',
              ])
              ..annotations.addAll([
                _freezedAnnotation(
                  unionClassFallbackName: unionClassFallbackName,
                  unionKey: params.discriminator?.propertyName,
                ),
              ])
              ..sealed = true
              ..name = className
              ..mixins.addAll([refer('_\$$className')])
              ..fields.addAll(keyFields)
              ..constructors.addAll([
                Constructor(
                  (b) => b
                    ..constant = true
                    ..name = '_',
                ),
                ...unions,
                if (unionClassFallbackName case final fallbackName?)
                  Constructor(
                    (b) => b
                      ..annotations.addAll([
                        refer('jsonSerializable'),
                        refer('$FreezedUnionValue(r"$fallbackName")'),
                      ])
                      ..constant = true
                      ..factory = true
                      ..name = Recase.instance.toCamelCase(fallbackName)
                      ..redirect = refer(
                        className + Recase.instance.toPascalCase(fallbackName),
                      )
                      ..optionalParameters.addAll([
                        Parameter(
                          (b) => b
                            ..named = true
                            ..name = 'json'
                            ..type = refer('Map<String,dynamic>?'),
                        )
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

  /// {
  ///     "oneOf": [
  ///         {
  ///             "$ref": "#/components/schemas/AdvertisementsHomeSectionResponse"
  ///         },
  ///         {
  ///             "$ref": "#/components/schemas/CategoriesHomeSectionResponse"
  ///         },
  ///         {
  ///             "$ref": "#/components/schemas/OrdersHomeSectionResponse"
  ///         },
  ///         {
  ///             "$ref": "#/components/schemas/FoodItemHomeSectionResponse"
  ///         }
  ///     ],
  ///     "title": "HomeSectionUnion",
  ///     "discriminator": {
  ///         "propertyName": "type",
  ///         "mapping": {
  ///             "advertisements": "#/components/schemas/AdvertisementsHomeSectionResponse",
  ///             "categories": "#/components/schemas/CategoriesHomeSectionResponse",
  ///             "food_items": "#/components/schemas/FoodItemHomeSectionResponse",
  ///             "orders": "#/components/schemas/OrdersHomeSectionResponse"
  ///         }
  ///     },
  ///     "runtimeType": "oneOf"
  /// }
  (Library, String) buildOneOf(OpenApiSchemaOneOf schema) {
    final schemas = schema.oneOf;

    final discriminator = schema.discriminator;

    final prefixes = context.config.model.removeModelPrefixes;
    final String className;
    if (schema.title case final title?) {
      className = Renaming.instance.renameClass(
        title,
        removePrefixes: prefixes.isNotEmpty ? prefixes : null,
      );
    } else if (discriminator case final discriminator?) {
      className = Renaming.instance.renameClass(
        '${discriminator.mapping.keys.join('Or')}_Union',
        removePrefixes: prefixes.isNotEmpty ? prefixes : null,
      );
    } else {
      className = Renaming.instance.renameClass(
        '${schema.oneOf.whereType<OpenApiSchemaRef>().map((e) => e.name).join('Or')}_Union',
        removePrefixes: prefixes.isNotEmpty ? prefixes : null,
      );
    }

    final Map<String, OpenApiSchemaRef> refSchemaMap;
    if (discriminator case final discriminator?) {
      refSchemaMap = {
        for (final entry in discriminator.mapping.entries)
          entry.key: schemas
              .whereType<OpenApiSchemaRef>()
              .firstWhere((e) => e.ref == entry.value),
      };
    } else {
      refSchemaMap = {
        for (final refSchema in schemas.whereType<OpenApiSchemaRef>())
          refSchema.name: refSchema,
      };
    }

    final model = build(
      UnionModelStrategyParams(
        key: className,
        schema: schema,
        refSchemaMap: refSchemaMap,
        discriminator: discriminator,
      ),
    );

    return (model, className);
  }

  (Library, String) buildAnyOf(OpenApiSchemaAnyOf schema) {
    final schemas = schema.anyOf;
    final prefixes = context.config.model.removeModelPrefixes;

    final className = Renaming.instance.renameClass(
      schema.title ??
          schemas
              .whereType<OpenApiSchemaRef>()
              .map(context.extension.typeConverter.getRef)
              .map((name) => Renaming.instance.renameClass(
                    name,
                    removePrefixes: prefixes.isNotEmpty ? prefixes : null,
                  ))
              .sorted((a, b) => a.compareTo(b))
              .join(),
      removePrefixes: prefixes.isNotEmpty ? prefixes : null,
    );

    final model = build(
      UnionModelStrategyParams(
        key: className,
        schema: schema,
        refSchemaMap: {
          for (final refSchema in schemas.whereType<OpenApiSchemaRef>())
            refSchema.name: refSchema,
        },
        discriminator: schema.discriminator,
      ),
    );

    return (model, className);
  }

  /// Build a union model from a top-level schema (OpenApiSchemas) that has oneOf.
  /// This handles the case when oneOf/discriminator are defined at the schema level
  /// rather than as a nested property.
  Library buildFromTopLevelSchema(MapEntry<String, OpenApiSchemas> entry) {
    final schemaName = entry.key;
    final schema = entry.value;
    final oneOf = schema.oneOf!;
    final discriminator = schema.discriminator;

    final prefixes = context.config.model.removeModelPrefixes;
    final String className = Renaming.instance.renameClass(
      schema.title ?? schemaName,
      removePrefixes: prefixes.isNotEmpty ? prefixes : null,
    );

    final Map<String, OpenApiSchemaRef> refSchemaMap;
    if (discriminator case final discriminator?) {
      refSchemaMap = {
        for (final mapEntry in discriminator.mapping.entries)
          mapEntry.key: oneOf
              .whereType<OpenApiSchemaRef>()
              .firstWhere((e) => e.ref == mapEntry.value),
      };
    } else {
      refSchemaMap = {
        for (final refSchema in oneOf.whereType<OpenApiSchemaRef>())
          refSchema.name: refSchema,
      };
    }

    // Create an OpenApiSchemaOneOf to pass to the build method
    final oneOfSchema = OpenApiSchemaOneOf(
      oneOf: oneOf,
      title: schema.title ?? schemaName,
      discriminator: discriminator,
      description: schema.description,
    );

    return build(
      UnionModelStrategyParams(
        key: className,
        schema: oneOfSchema,
        refSchemaMap: refSchemaMap,
        discriminator: discriminator,
      ),
    );
  }

  Reference _freezedAnnotation({
    required String? unionClassFallbackName,
    required String? unionKey,
  }) {
    final string = StringBuffer();

    string.write('$Freezed(');

    if (unionClassFallbackName != null) {
      string.write('fallbackUnion: r"$unionClassFallbackName", ');
    }

    if (unionKey != null) {
      string.write('unionKey: r"$unionKey", ');
    }

    string.write(')');

    return refer(string.toString());
  }
}
