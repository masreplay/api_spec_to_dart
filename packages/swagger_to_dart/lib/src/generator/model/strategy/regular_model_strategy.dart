import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/schema/schema.dart';
import 'package:swagger_to_dart/src/utils/utils.dart';

import 'model_property_generator_strategy.dart';
import '../model_generator_strategy.dart';

extension MapEntryStringOpenApiSchemas on MapEntry<String, OpenApiSchemas> {
  String get className => Renaming.instance.renameClass(key);
  String get filename => Renaming.instance.renameFile(className);
}

class RegularModelStrategy extends ModelGeneratorStrategy {
  const RegularModelStrategy(super.context);

  Library generate(MapEntry<String, OpenApiSchemas> model) {
    final className = model.className;
    final filename = model.filename;

    final propertyGenerator = PropertyGeneratorStrategy(context);

    final properties = model.value.properties ?? {};

    return Library(
      (b) => b
        ..name = filename
        ..directives.addAll([
          Directive.import('exports.dart'),
          Directive.part('${filename}.freezed.dart'),
          Directive.part('${filename}.g.dart'),
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
                '// ${className}',
              ])
              ..annotations.addAll([refer('freezed')])
              ..abstract = true
              ..name = className
              ..mixins.addAll([refer('_\$${className}')])
              ..fields.addAll([
                ...properties.entries.map((value) {
                  final name = Renaming.instance.renameProperty(value.key);

                  return Field(
                    (b) => b
                      ..static = true
                      ..modifier = FieldModifier.constant
                      ..name = '${name}Key'
                      ..type = refer('$String')
                      ..assignment = Code('"${value.key}"'),
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
                    ..redirect = refer('_${className}')
                    ..optionalParameters.addAll([
                      ...properties.entries.map((value) => propertyGenerator
                          .build(value, modelClassName: className)),
                    ]),
                ),
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
