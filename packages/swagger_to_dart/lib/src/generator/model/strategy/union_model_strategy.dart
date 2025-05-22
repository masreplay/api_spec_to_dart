import 'package:code_builder/code_builder.dart';
import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/strategy.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';
import 'package:swagger_to_dart/src/utils/utils.dart';

class UnionModelStrategy extends ModelGeneratorStrategy {
  const UnionModelStrategy(super.context);

  (Library, String) buildSchemas(List<OpenApiSchema> schemas) {
    final className = schemas
        .whereType<OpenApiSchemaRef>()
        .map(OpenApiSchemaDartTypeConverter(context).getRef)
        .map(Renaming.instance.renameClass)
        .sorted((a, b) => a.compareTo(b))
        .join();

    final unionModel = MapEntry<String, OpenApiSchemas>(
      className,
      OpenApiSchemas(
        type: 'dynamic',
        properties: {
          for (final value in schemas.whereType<OpenApiSchemaRef>())
            value.ref!: OpenApiSchemaRef(ref: value.ref!),
        },
      ),
    );

    return (build(unionModel), className);
  }

  Library build(MapEntry<String, OpenApiSchemas> model) {
    final className = Renaming.instance.renameClass(model.key);
    final filename = Renaming.instance.renameFile(className);

    final dartTypeConverter = OpenApiSchemaDartTypeConverter(context);

    final properties = model.value.properties ?? {};
    final refsSchema = properties.values.whereType<OpenApiSchemaRef>();

    const String valueKeyName = 'value';

    final unions = refsSchema.map((schema) {
      final name = schema.ref!.split('/').last;

      final type = dartTypeConverter.get(
        schema,
        className: className,
      );

      return Constructor(
        (b) => b
          ..annotations.addAll([
            refer('jsonSerializable'),
            refer('$FreezedUnionValue("${Recase.instance.toCamelCase(name)}")'),
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
          ..implements
              .add(refer('JsonConverter<${className}, Map<String, dynamic>>'))
          ..constructors.add(Constructor((b) => b..constant = true))
          ..fields.addAll([
            Field(
              (b) => b
                ..modifier = FieldModifier.constant
                ..static = true
                ..name = 'unionKey'
                ..type = refer('String')
                ..assignment = Code('"${valueKeyName}"'),
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
              ..constructors.addAll([
                Constructor(
                  (b) => b
                    ..constant = true
                    ..name = '_',
                ),
                ...unions,
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
