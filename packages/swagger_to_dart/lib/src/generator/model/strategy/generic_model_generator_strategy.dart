import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/code/string.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/generic_parser_factory.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class GenericModelGeneratorStrategy
    extends ModelGeneratorStrategy<MapEntry<String, OpenApiSchemas>> {
  const GenericModelGeneratorStrategy(super.context);

  @override
  Library build(MapEntry<String, OpenApiSchemas> model) {
    final title = model.value.title;
    final effectiveTitle = title ?? model.key;

    final generationSource = context.config.generationSource;
    final parser = GenericParserFactory.instance.getParser(
      source: generationSource,
      title: effectiveTitle,
    );

    if (parser == null) {
      throw ArgumentError(
        'Cannot generate generic model for title: $effectiveTitle',
      );
    }

    final standardTitle = parser.toStandardFormat(effectiveTitle);
    if (standardTitle == null) {
      throw ArgumentError('Cannot convert to standard format: $effectiveTitle');
    }

    return _buildGenericClass(standardTitle, model);
  }

  Library _buildGenericClass(
    String title,
    MapEntry<String, OpenApiSchemas> model,
  ) {
    // Standard format uses angle brackets <>, so we can use DotNet parser
    // or detect which parser can handle the standard format
    final parser = GenericParserFactory.instance.detectParser(title);
    if (parser == null) {
      throw ArgumentError(
        'Title is not in a recognized generic format: $title',
      );
    }

    final baseClass = parser.extractBaseClassName(title);
    final genericArguments = parser.extractGenericArguments(title);

    if (baseClass == null || genericArguments.isEmpty) {
      throw ArgumentError(
        'Cannot extract base class or generic arguments from: $title',
      );
    }

    final overrideTypes = <String, String>{};
    final genericTypeParams = <String>[];
    final fromJsonParams = <Parameter>[];

    for (var i = 0; i < genericArguments.length; i++) {
      final genericType = i == 0 ? 'T' : 'T${i + 1}';
      genericTypeParams.add(genericType);

      // ponytail: fields whose type equals the argument's type become the
      // type parameter; a coincidental same-typed field is substituted too.
      overrideTypes[_resolveGenericType(genericArguments[i])] = genericType;

      fromJsonParams.add(
        Parameter(
          (b) => b
            ..name = 'fromJson$genericType'
            ..type = refer('$genericType Function(Object? json)'),
        ),
      );
    }

    final prefixes = context.config.model.removeModelPrefixes;
    final className = Renaming.instance.renameClass(
      baseClass,
      removePrefixes: prefixes.isNotEmpty ? prefixes : null,
    );
    final filename = Renaming.instance.renameFile(className);

    final properties = model.value.properties ?? {};
    final names = Renaming.instance.propertyNames(properties.keys);
    final genericTypesString = genericTypeParams.join(', ');

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
              ..annotations.addAll([
                refer('Freezed(genericArgumentFactories: true)'),
              ])
              ..abstract = true
              ..name = className
              ..types.addAll(genericTypeParams.map((t) => refer(t)))
              ..mixins.add(refer('_\$$className<$genericTypesString>'))
              ..fields.addAll([
                ...properties.entries.map((entry) {
                  final name = names[entry.key]!;

                  return Field(
                    (b) => b
                      ..static = true
                      ..modifier = FieldModifier.constant
                      ..name = _getKey(name)
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
                        'JsonSerializable(converters: jsonSerializableConverters, genericArgumentFactories: true, createFieldMap: true)',
                      ),
                    ])
                    ..constant = true
                    ..factory = true
                    ..redirect = refer('_$className<$genericTypesString>')
                    ..optionalParameters.addAll([
                      ...properties.entries.map((entry) {
                        return context.extension.propertyGenerator.build(
                          entry,
                          className: className,
                          name: names[entry.key],
                          required: (model.value.required_ ?? []).contains(
                            entry.key,
                          ),
                          overrideTypes: overrideTypes,
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
                      ...fromJsonParams,
                    ])
                    ..body = Code(
                      '_\$${className}FromJson<$genericTypesString>(json${fromJsonParams.isEmpty ? '' : ', '}${fromJsonParams.map((p) => p.name).join(', ')})',
                    ),
                ),
              ]),
          ),
        ]),
    );
  }

  /// Dart type of a generic argument: a component schema when one has
  /// exactly that name or title, otherwise a primitive/generic title.
  String _resolveGenericType(String genericArg) {
    final key = _schemaKey(genericArg);
    if (key != null) {
      return context.extension.typeConverter.getRef(
        OpenApiSchemaRef(ref: '#/components/schemas/$key'),
      );
    }
    return context.extension.typeConverter.dartTypeForTitle(genericArg);
  }

  String? _schemaKey(String name) {
    final schemas = context.openApi.components?.schemas ?? {};
    if (schemas.containsKey(name)) return name;
    for (final entry in schemas.entries) {
      if (entry.value.title == name) return entry.key;
    }
    return null;
  }

  /// Whether every type argument of [model]'s generic title is a component
  /// schema. Such instantiations substitute unambiguously, so the generic
  /// class is preferably built from one of them.
  bool hasSchemaArguments(MapEntry<String, OpenApiSchemas> model) {
    final title = model.value.title ?? model.key;
    final standard = GenericParserFactory.instance
        .getParser(source: context.config.generationSource, title: title)
        ?.toStandardFormat(title);
    if (standard == null) return false;

    final arguments = GenericParserFactory.instance
        .detectParser(standard)
        ?.extractGenericArguments(standard);
    return arguments != null &&
        arguments.isNotEmpty &&
        arguments.every((a) => _schemaKey(a) != null);
  }

  static String? _getKey(String name) => '${name}Key_';

  bool shouldUseGenericStrategy(MapEntry<String, OpenApiSchemas> model) {
    final supportGenericArguments =
        context.config.model.supportGenericArguments;
    if (!supportGenericArguments) return false;

    final title = model.value.title;
    final effectiveTitle = title ?? model.key;
    final generationSource = context.config.generationSource;

    final parser = GenericParserFactory.instance.getParser(
      source: generationSource,
      title: effectiveTitle,
    );

    if (parser == null) {
      return false;
    }

    // For ABP, check if conversion succeeds
    if (generationSource == GenerationSource.abpIO) {
      return parser.toStandardFormat(effectiveTitle) != null;
    }

    // For others, just check format
    return parser.isFormat(effectiveTitle);
  }
}
