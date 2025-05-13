import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/builder/builder.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';
import 'package:swagger_to_dart/src/utils/utils.dart';

import 'model_property_generator_strategy.dart';
import 'model_strategy.dart';
import 'regular_model_strategy.dart';

class UnionModelStrategy extends ModelStrategy {
  const UnionModelStrategy(super.context);

  Library generate(MapEntry<String, OpenApiSchemas> model) {
    final propertyGenerators = {
      OpenApiSchemaType: TypePropertyGenerator(context),
      OpenApiSchemaRef: RefPropertyGenerator(context),
      OpenApiSchemaAnyOf: AnyOfPropertyGenerator(context),
      OpenApiSchemaOneOf: AnyOfPropertyGenerator(context),
    };

    // model.value.title ??
    final className = Renaming.instance.renameClass(model.key);
    final filename = Renaming.instance.renameFile(className);
    final schema = model.value;

    final schemaJson = schema.toJson();

    if (schemaJson.containsKey('anyOf')) {
      final openApiSchema = OpenApiSchema.fromJson(schemaJson);

      if (openApiSchema is OpenApiSchemaAnyOf) {
        final nonNullSchemas = openApiSchema.anyOf!
            .where(
              (e) => !(e is OpenApiSchemaType &&
                  e.type == OpenApiSchemaVarType.null_),
            )
            .toList();

        if (nonNullSchemas.length == 1) {
          final regularModel = OpenApiSchemas(
            type: 'object',
            properties: {'value': nonNullSchemas.first},
          );
          return RegularModelStrategy(
            context,
          ).generate(MapEntry(model.key, regularModel));
        }

        final types = nonNullSchemas.map((schema) {
          return switch (schema) {
            OpenApiSchemaType value => context.dartTypeConverter.getDartType(
                type: value.type,
                format: value.format,
                genericType: switch (value.items) {
                  OpenApiSchemaRef value => Renaming.instance.renameRefClass(
                      value,
                    ),
                  OpenApiSchemaAnyOf value => context.dartTypeConverter
                      .convertOpenApiAnyOfToDartType(value),
                  _ => null,
                },
                items: value.items,
                title: value.title,
                parentTitle: schema.title,
              ),
            OpenApiSchemaRef value => Renaming.instance.renameRefClass(
                value,
              ),
            OpenApiSchemaAnyOf value =>
              context.dartTypeConverter.convertOpenApiAnyOfToDartType(value),
            _ => throw ArgumentError(
                'Unsupported schema type: ${schema.runtimeType}',
              ),
          };
        }).toList();

        final unionClassName =
            types.map(Renaming.instance.renameClass).join('Or');

        throw Library();
      }
    }

    final properties = schema.properties ?? {};
    final unionProps = <Parameter>[];
    final normalProps = StringBuffer();

    for (final entry in properties.entries) {
      final key = entry.key;
      final schema = entry.value;
      final propertyName = Renaming.instance.renameProperty(key);

      switch (schema) {
        case OpenApiSchemaType():
          final generator = TypePropertyGenerator(context);

          final fieldCode = generator.generate(
            className: className,
            propertyName: propertyName,
            key: key,
            schema: schema,
          );
          normalProps.writeln(fieldCode);

          break;
        case OpenApiSchemaRef():
          final generator = propertyGenerators[schema.runtimeType];
          if (generator != null) {
            final fieldCode = generator.generate(
              className: className,
              propertyName: propertyName,
              key: key,
              schema: schema,
            );
            normalProps.writeln(fieldCode);
          }
          break;
        case OpenApiSchemaAnyOf():
          final generator = propertyGenerators[OpenApiSchemaAnyOf];
          if (generator != null) {
            final fieldCode = generator.generate(
              className: className,
              propertyName: propertyName,
              key: key,
              schema: schema,
            );
            normalProps.writeln(fieldCode);
          }
          break;
        case OpenApiSchemaOneOf():
          for (final mapping in schema.discriminator.mapping.entries) {
            unionProps.add(
              FreezedClassCodeBuilder.instance.parameter(
                className: className,
                type: Renaming.instance
                    .renameClass(mapping.value.split('/').last),
                name: propertyName,
              ),
            );
          }
          break;
      }
    }

    return Library(
      (b) => b
        ..comments.addAll([
          '${model.key}',
          ...JsonFactory.instance.encode(model.value.toJson()).split('\n'),
        ])
        ..name = filename
        ..directives.addAll([
          Directive.import('exports.dart'),
          Directive.part('${filename}.freezed.dart'),
          Directive.part('${filename}.g.dart'),
        ])
        ..body.addAll([
          Class(
            (b) => b
              ..docs.addAll([
                '// ${className}',
              ])
              ..annotations.addAll([refer('freezed')])
              ..sealed = true
              ..name = className
              ..mixins.addAll([refer('_\$${className}')])
              ..fields.addAll([
                for (final entry in [].expand((e) => e.parameters))
                  Field(
                    (b) => b
                      ..static = true
                      ..modifier = FieldModifier.constant
                      ..name = '${entry.name}Key'
                      ..type = refer('$String')
                      ..assignment = Code('"${entry.name}"'),
                  ),
              ])
              ..constructors.addAll([
                Constructor(
                  (b) => b
                    ..constant = true
                    ..name = '_',
                ),
                Constructor(
                  (b) => b
                    ..constant = true
                    ..factory = true
                    ..name = 'fallback'
                    ..redirect = refer('${className}Fallback')
                    ..requiredParameters.addAll([
                      Parameter(
                        (b) => b
                          ..name = 'value'
                          ..type = refer('Map<String,dynamic>'),
                      ),
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
}
