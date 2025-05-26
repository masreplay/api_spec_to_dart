import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class RegularModelStrategy
    extends ModelGeneratorStrategy<MapEntry<String, OpenApiSchemas>> {
  const RegularModelStrategy(super.context);

  Library build(MapEntry<String, OpenApiSchemas> model) {
    final className = Renaming.instance.renameClass(model.key);
    final filename = Renaming.instance.renameFile(className);

    final Map<String, OpenApiSchema> properties = model.value.properties ?? {};

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
                ...properties.entries.map((entry) {
                  final name = Renaming.instance.renameProperty(entry.key);

                  return Field(
                    (b) => b
                      ..static = true
                      ..modifier = FieldModifier.constant
                      ..name = '${name}Key'
                      ..type = refer('$String')
                      ..assignment = Code('"${entry.key}"'),
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
                      ...properties.entries.map((entry) {
                        final schema = entry.value;
                        if (schema is OpenApiSchemaRef) {
                          return context.propertyGenerator.build(
                            entry,
                            overrideType: 'T',
                            className: className,
                          );
                        }
                        return context.propertyGenerator.build(
                          entry,
                          className: className,
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
  Library? _genericClass(
    String title,
    MapEntry<String, OpenApiSchemas> model,
  ) {
    final genericPattern = RegExp(r'^(.+?)\[(.+)\]$');

    final match = genericPattern.firstMatch(title);
    if (match == null) return null;

    // recall [RegularModelStrategy.build] for recursive generic class

    final baseClass = match.group(1)!; // "BaseResponse"
    final genericType = match.group(2)!; // "PaginationResponse[ItemResponse]"

    final className = Renaming.instance.renameClass(baseClass);

    final genericOverride = <String, String>{
      'T': genericType,
    };

    final filename = Renaming.instance.renameFile(className);
    final properties = model.value.properties ?? {};

    final genericTypes = "<${genericOverride.keys.join(', ')}>";

    return Library((b) => b
      ..name = filename
      ..directives.addAll([
        Directive.import('exports.dart'),
        Directive.part('${filename}.freezed.dart'),
        Directive.part('${filename}.g.dart'),
      ])
      ..docs.addAll([
        '/// ${model.key}',
        '/// $className$genericTypes',
        ...JsonFactory.instance
            .encode(model.value.toJson())
            .split('\n')
            .map((e) => '/// $e'),
      ])
      ..body.addAll([
        Class((b) => b
          // T, keys...
          ..docs.addAll([
            '// $className$genericTypes',
          ])
          ..annotations.addAll([
            refer('Freezed(genericArgumentFactories: true)'),
          ])
          ..abstract = true
          ..name = className
          ..types.addAll([
            ...genericOverride.keys.map((e) => refer(e)),
          ])
          ..mixins.add(refer('_\$${className}$genericTypes'))
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
              ..annotations.addAll([
                refer(
                  'JsonSerializable(converters: jsonSerializableConverters, genericArgumentFactories:true)',
                ),
              ])
              ..constant = true
              ..factory = true
              ..redirect = refer('_$className$genericTypes')
              ..optionalParameters.addAll(properties.entries.map(
                (entry) => context.propertyGenerator.build(
                  entry,
                  className: className,
                ),
              ))),
            Constructor(
              (b) => b
                ..factory = true
                ..name = 'fromJson'
                ..lambda = true
                ..requiredParameters.addAll([
                  Parameter(
                    (b) => b
                      ..name = 'json'
                      ..type = refer('Map<String, dynamic>'),
                  ),
                  ...genericOverride.entries.map((e) => Parameter(
                        (b) => b
                          ..name = 'fromJson${e.key}'
                          ..type = refer('${e.key} Function(Object? json)'),
                      )),
                ])
                ..body = Code(
                    '_\$${className}FromJson(json, ${genericOverride.entries.map((e) => 'fromJson${e.key}').join(', ')})'),
            ),
          ]))
      ]));
  }
}
