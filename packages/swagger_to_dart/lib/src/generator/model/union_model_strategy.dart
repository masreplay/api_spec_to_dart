import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';
import 'package:swagger_to_dart/src/utils/utils.dart';

import 'model_strategy.dart';

class UnionModelStrategy extends ModelStrategy {
  const UnionModelStrategy(super.context);

  Library generate(MapEntry<String, OpenApiSchemas> model) {
    final className = Renaming.instance.renameClass(model.key);
    final filename = Renaming.instance.renameFile(className);

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
