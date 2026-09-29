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
    final names = Renaming.instance.propertyNames(properties.keys);

    String effectiveTitle = title ?? model.key;

    final prefixes = context.config.model.removeModelPrefixes;
    final className =
        context.componentClassNames[model.key] ??
        Renaming.instance.renameClass(
          effectiveTitle,
          removePrefixes: prefixes.isNotEmpty ? prefixes : null,
        );

    final filename = Renaming.instance.renameFile(className);

    return Library(
      (b) => b
        ..name = filename
        ..directives.addAll([
          for (final import in context.config.imports?.globalImports ?? [])
            Directive.import(import),
          Directive.import('exports.dart'),
          Directive.part('$filename.freezed.dart'),
          Directive.part('$filename.g.dart'),
        ])
        ..docs.addAll(
          JsonFactory.instance.docs(model.key, model.value.toJson()),
        )
        ..body.addAll([
          Class(
            (b) => b
              ..annotations.addAll([refer('freezed')])
              ..abstract = true
              ..name = className
              ..mixins.addAll([refer('_\$$className')])
              ..fields.addAll([
                ...properties.entries.map((entry) {
                  final name = names[entry.key]!;

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
                          name: names[entry.key],
                          required: (model.value.required_ ?? []).contains(
                            entry.key,
                          ),
                        );
                      }),
                    ]),
                ),
                Constructor(
                  (b) => b
                    ..factory = true
                    ..name = 'fromJson'
                    ..requiredParameters.addAll([
                      Parameter(
                        (b) => b
                          ..name = 'json'
                          ..type = refer('Map<String, dynamic>'),
                      ),
                    ])
                    ..lambda = true
                    ..body = Code('_\$${className}FromJson(json)'),
                ),
              ]),
          ),
        ]),
    );
  }

  static String? getKey(String name) => '${name}Key_';
}
