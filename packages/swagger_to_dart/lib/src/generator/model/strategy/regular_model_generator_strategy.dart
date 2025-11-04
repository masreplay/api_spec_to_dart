import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class RegularModelGeneratorStrategy
    extends ModelGeneratorStrategy<MapEntry<String, OpenApiSchemas>> {
  const RegularModelGeneratorStrategy(super.context);

  @override
  Library build(MapEntry<String, OpenApiSchemas> model) {
    final title = model.value.title;
    final properties = model.value.properties ?? {};
    final supportGenericArguments =
        context.config.model.supportGenericArguments;

    // Prefer title if present, otherwise fallback to model.key
    final effectiveTitle = title ?? model.key;
    final isGeneric = effectiveTitle.contains('[');
    final prefixes = context.config.model.removeModelPrefixes;
    final className = Renaming.instance.renameClass(
      effectiveTitle,
      prefixes: prefixes.isNotEmpty ? prefixes : null,
    );
    final filename = Renaming.instance.renameFile(className);

    if (supportGenericArguments && isGeneric && title != null) {
      final genericClass = _genericClass(title, model);
      if (genericClass != null) return genericClass;
    }

    return Library(
      (b) => b
        ..name = filename
        ..directives.addAll([
          Directive.import('exports.dart'),
          Directive.part('$filename.freezed.dart'),
          Directive.part('$filename.g.dart'),
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
                '// $className',
              ])
              ..annotations.addAll([refer('freezed')])
              ..abstract = true
              ..name = className
              ..mixins.addAll([refer('_\$$className')])
              ..fields.addAll([
                ...properties.entries.map((entry) {
                  final name = Renaming.instance.renameProperty(entry.key);

                  return Field(
                    (b) => b
                      ..static = true
                      ..modifier = FieldModifier.constant
                      ..name = getKey(name)
                      ..type = refer('$String')
                      ..assignment = stringCode(entry.key),
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
                    ..redirect = refer('_$className')
                    ..optionalParameters.addAll([
                      ...properties.entries.map((entry) {
                        return context.extension.propertyGenerator.build(
                          entry,
                          className: className,
                          required:
                              (model.value.required_ ?? []).contains(entry.key),
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

    final baseClass = match.group(1)!;
    final genericClass = match.group(2)!;
    final genericType = 'T';

    final prefixes = context.config.model.removeModelPrefixes;
    final className = Renaming.instance.renameClass(
      baseClass,
      prefixes: prefixes.isNotEmpty ? prefixes : null,
    );
    final filename = Renaming.instance.renameFile(className);

    final properties = model.value.properties ?? {};

    return Library((b) => b
      ..name = filename
      ..directives.addAll([
        Directive.import('exports.dart'),
        Directive.part('$filename.freezed.dart'),
        Directive.part('$filename.g.dart'),
      ])
      ..docs.addAll([
        '/// ${model.key}',
        '/// $className',
        ...JsonFactory.instance
            .encode(model.value.toJson())
            .split('\n')
            .map((e) => '/// $e'),
      ])
      ..body.addAll([
        Class((b) => b
          ..annotations.addAll([
            refer('Freezed(genericArgumentFactories: true)'),
          ])
          ..abstract = true
          ..name = className
          ..types.addAll([
            refer(genericType),
          ])
          ..mixins.add(refer('_\$$className<$genericType>'))
          ..fields.addAll([
            ...properties.entries.map((entry) {
              final name = Renaming.instance.renameProperty(entry.key);

              return Field(
                (b) => b
                  ..static = true
                  ..modifier = FieldModifier.constant
                  ..name = getKey(name)
                  ..type = refer('String')
                  ..assignment = stringCode(entry.key),
              );
            }),
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
                  refer(
                    'JsonSerializable(converters: jsonSerializableConverters, genericArgumentFactories: true)',
                  ),
                ])
                ..constant = true
                ..factory = true
                ..redirect = refer('_$className<$genericType>')
                ..optionalParameters.addAll([
                  ...properties.entries.map((entry) {
                    return context.extension.propertyGenerator.build(
                      entry,
                      className: className,
                      overrideTypes: {genericType: genericClass},
                    );
                  }),
                ]),
            ),
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
                  Parameter(
                    (b) => b
                      ..name = 'fromJson$genericType'
                      ..type = refer('$genericType Function(Object? json)'),
                  ),
                ])
                ..body = Code(
                  '_\$${className}FromJson<$genericType>(json, fromJson$genericType)',
                ),
            ),
          ]))
      ]));
  }

  static String? getKey(String name) => '${name}Key_';
}
