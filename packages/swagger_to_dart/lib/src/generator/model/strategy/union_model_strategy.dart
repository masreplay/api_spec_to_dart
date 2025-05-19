import 'package:code_builder/code_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/model_property_generator_strategy.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';
import 'package:swagger_to_dart/src/utils/utils.dart';

import '../model_generator_strategy.dart';

class UnionModelStrategy extends ModelGeneratorStrategy {
  const UnionModelStrategy(super.context);

  Library build(MapEntry<String, OpenApiSchemas> model) {
    final className = Renaming.instance.renameClass(model.key);
    final filename = Renaming.instance.renameFile(className);

    final refs =
        (model.value.properties ?? {}).values.whereType<OpenApiSchemaRef>();
    final propertyGeneratorStrategy = PropertyGeneratorStrategy(context);

    final unions = refs.map((e) {
      final name = e.ref!.split('/').last;

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
            propertyGeneratorStrategy.buildUnionValue(
              e,
              modelClassName: className,
            )
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
                        ..type = refer('$Map<$String, dynamic>')),
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
