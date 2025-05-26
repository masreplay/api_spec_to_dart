import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/schema/schema.dart';
import 'package:swagger_to_dart/src/utils/utils.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

import 'model_generator_strategy.dart';
import 'property_generator_strategy.dart';

class RegularModelStrategy
    extends ModelGeneratorStrategy<MapEntry<String, OpenApiSchemas>> {
  const RegularModelStrategy(super.context);

  Library build(MapEntry<String, OpenApiSchemas> model) {
    final className = Renaming.instance.renameClass(model.key);
    final filename = Renaming.instance.renameFile(className);

    final propertyGenerator = PropertyGeneratorStrategy(context);

    final properties = model.value.properties ?? {};

    final supportGenericArguments =
        context.config.model.supportGenericArguments;

    final title = model.value.title;

    /// "title": "BaseResponse[PaginationResponse[ItemResponse]]"
    if (supportGenericArguments && title != null) {
      final genericClass = _genericClass(title, model);
      if (genericClass != null) {
        return genericClass;
      }
    }

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
                      ...properties.entries.map((value) =>
                          propertyGenerator.build(value, className: className)),
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
  Library? _genericClass(
    String title,
    MapEntry<String, OpenApiSchemas> model,
  ) {
    final genericPattern = RegExp(r'^(.+?)\[(.+)\]$');
    final match = genericPattern.firstMatch(title);

    if (match != null) {
      final baseClass = match.group(1)!; // "BaseResponse"
      final genericType = match.group(2)!; // "PaginationResponse[ItemResponse]"

      final className = Renaming.instance.renameClass(baseClass);
      final genericTypeName = Renaming.instance
          .renameClass(genericType.replaceAll(RegExp(r'[\[\]]'), ''));

      final filename = Renaming.instance.renameFile(className);
      final propertyGenerator = PropertyGeneratorStrategy(context);

      final genericSymbol = 'T';

      final properties = model.value.properties ?? {};

      return Library((b) => b
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
          Class((b) => b
            ..docs.addAll(['// $className<$genericSymbol>'])
            ..annotations.add(refer('freezed'))
            ..abstract = true
            ..name = className
            ..types.add(refer(genericSymbol))
            ..mixins.add(refer('_\$${className}<$genericSymbol>'))
            ..fields.addAll([
              ...properties.entries.map((value) {
                final name = Renaming.instance.renameProperty(value.key);
                return Field((b) => b
                  ..static = true
                  ..modifier = FieldModifier.constant
                  ..name = '${name}Key'
                  ..type = refer('String')
                  ..assignment = Code('"${value.key}"'));
              }),
            ])
            ..constructors.addAll([
              Constructor((b) => b
                ..constant = true
                ..name = '_'),
              Constructor((b) => b
                ..annotations.addAll([refer('jsonSerializable')])
                ..constant = true
                ..factory = true
                ..factory = true
                ..redirect = refer('_$className<$genericSymbol>')
                ..optionalParameters.addAll(properties.entries.map(
                  (entry) =>
                      propertyGenerator.build(entry, className: className),
                ))),
              Constructor((b) => b
                ..factory = true
                ..name = 'fromJson'
                ..lambda = true
                ..requiredParameters.add(Parameter((b) => b
                  ..name = 'json'
                  ..type = refer('Map<String, dynamic>')))
                ..body = Code('_\$${className}FromJson(json)')),
            ]))
        ]));
    }
  }
}
