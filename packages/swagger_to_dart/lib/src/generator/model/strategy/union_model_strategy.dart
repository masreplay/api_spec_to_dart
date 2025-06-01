import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/strategy.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';
import 'package:swagger_to_dart/src/utils/utils.dart';

class UnionModelStrategyParams {
  final String key;
  final OpenApiSchema schema;
  final Map<String, OpenApiSchemaRef> refSchemaMap;

  const UnionModelStrategyParams({
    required this.key,
    required this.schema,
    required this.refSchemaMap,
  });
}

class UnionModelStrategy
    extends ModelGeneratorStrategy<UnionModelStrategyParams> {
  const UnionModelStrategy(super.context);

  Library build(UnionModelStrategyParams params) {
    final unionClassFallbackName = context.config.model.unionClassFallbackName;

    final className = Renaming.instance.renameClass(params.key);
    final filename = Renaming.instance.renameFile(className);

    const String valueKeyName = 'value';

    final unions = params.refSchemaMap.entries.map((entry) {
      final name = entry.key;

      final type = context.extension.typeConverter.get(
        entry.value,
        className: className,
      );

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
          ..requiredParameters.addAll([
            Parameter(
              (b) => b
                ..named = true
                ..name = valueKeyName
                ..type = refer(type),
            )
          ]),
      );
    }).toList();

    context.addJsonConvertor(
      Class(
        (b) => b
          ..name = '${className}MapJsonConverter'
          ..implements.addAll([
            refer('JsonConverter<${className}, Map<String, dynamic>>'),
          ])
          ..constructors.add(Constructor((b) => b..constant = true))
          ..fields.addAll([
            Field(
              (b) => b
                ..modifier = FieldModifier.constant
                ..static = true
                ..name = 'unionKey'
                ..type = refer('String')
                ..assignment = stringCode(valueKeyName),
            )
          ])
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
                ..body = Code(
                    'return $className.fromJson({unionKey: json, ...json});'),
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
                ..body = Code(
                    'return {unionKey: object.toJson(), ...object.toJson()};'),
            )
          ]),
      ),
    );

    return Library(
      (b) => b
        ..name = filename
        ..directives.addAll([
          Directive.import('exports.dart'),
          Directive.part('${filename}.freezed.dart'),
          Directive.part('${filename}.g.dart'),
        ])
        ..docs.addAll([
          '/// ${params.key}',
          ...JsonFactory.instance
              .encode(params.schema.toJson())
              .split('\n')
              .map((e) => '/// $e')
              .toList(),
        ])
        ..body.addAll([
          Class(
            (b) => b
              ..docs.addAll([
                '// ${className}',
              ])
              ..annotations.addAll([
                if (unionClassFallbackName case final fallbackName?)
                  refer('$Freezed(fallbackUnion: r"$fallbackName")')
                else
                  refer('Freezed()'),
              ])
              ..sealed = true
              ..name = className
              ..mixins.addAll([refer('_\$${className}')])
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
                      ..requiredParameters.addAll([
                        Parameter(
                          (b) => b
                            ..named = true
                            ..name = valueKeyName
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

    final String className;
    if (schema.title case final title?) {
      className = Renaming.instance.renameClass(title);
    } else if (discriminator case final discriminator?) {
      className = Renaming.instance.renameClass(
        discriminator.mapping.keys.join('Or') + '_Union',
      );
    } else {
      className = Renaming.instance.renameClass(schema.oneOf
              .whereType<OpenApiSchemaRef>()
              .map((e) => e.name)
              .join('Or') +
          '_Union');
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
      ),
    );

    return (model, className);
  }

  (Library, String) buildAnyOf(OpenApiSchemaAnyOf schema) {
    final schemas = schema.anyOf;

    final className = Renaming.instance.renameClass(
      schema.title ??
          schemas
              .whereType<OpenApiSchemaRef>()
              .map(context.extension.typeConverter.getRef)
              .map(Renaming.instance.renameClass)
              .sorted((a, b) => a.compareTo(b))
              .join(),
    );

    final model = build(
      UnionModelStrategyParams(
        key: className,
        schema: schema,
        refSchemaMap: {
          for (final refSchema in schemas.whereType<OpenApiSchemaRef>())
            refSchema.name: refSchema,
        },
      ),
    );

    return (model, className);
  }
}
