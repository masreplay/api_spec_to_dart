import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/generator/model/model_property_generator_strategy.dart';
import 'package:swagger_to_dart/src/schema/openapi/extension.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';
import 'package:swagger_to_dart/src/utils/utils.dart';

import 'model_strategy.dart';

class UnionModelStrategy extends ModelStrategy {
  const UnionModelStrategy(super.context);

  Library generate(MapEntry<String, OpenApiSchemas> model) {
    final className = Renaming.instance.renameClass(model.key);
    final filename = Renaming.instance.renameFile(className);

    final refs =
        (model.value.properties ?? {}).values.whereType<OpenApiSchemaRef>();
    final propertyGeneratorStrategy = PropertyGeneratorStrategy(context);
    final unions = refs.map((e) {
      final name = e.ref!.split('/').last;
      final schemas = context.openApi.getOpenApiSchemasByRef(e.ref!);
      final properties = schemas?.properties ?? {};

      return Constructor(
        (b) => b
          ..annotations.addAll([refer('generationJsonSerializable')])
          ..constant = true
          ..factory = true
          ..name = Recase.instance.toCamelCase(name)
          ..redirect = refer(className + Recase.instance.toPascalCase(name))
          ..optionalParameters.addAll([
            for (final entry in properties.entries)
              propertyGeneratorStrategy.generate(
                entry,
                modelClassName: className,
              ),
          ]),
      );
    }).toList();

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
              ..abstract = true
              ..name = className
              ..fields.addAll([
                for (final property in {
                  ...unions
                      .expand((e) => e.optionalParameters)
                      .map((p) => p.name)
                }.map((name) => unions
                    .expand((e) => e.optionalParameters)
                    .firstWhere((p) => p.name == name)))
                  Field(
                    (b) => b
                      ..static = true
                      ..modifier = FieldModifier.constant
                      ..name = '${property.name}Key'
                      ..type = refer('String')
                      ..assignment = Code('"${property.name}"'),
                  ),
              ])
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
