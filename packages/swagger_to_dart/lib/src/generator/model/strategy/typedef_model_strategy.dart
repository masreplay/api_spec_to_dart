import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Types every Dart library sees without importing `exports.dart`.
const _coreTypes = {
  'String', 'int', 'double', 'num', 'bool', 'List', 'Map', 'DateTime', //
  'Uri', 'dynamic', 'Object',
};

/// A component that is no object model (an array, a primitive, a map or a
/// `$ref` alias) as `typedef Pets = List<Pet>;`.
class TypedefModelStrategy
    extends ModelGeneratorStrategy<MapEntry<String, OpenApiSchemas>> {
  const TypedefModelStrategy(super.context);

  /// Whether [schema] is such a component. `type: object` with neither
  /// properties nor `additionalProperties` stays a (free-form) class.
  static bool accepts(OpenApiSchemas schema) =>
      (schema.properties?.isEmpty ?? true) &&
      schema.enum_ == null &&
      schema.oneOf == null &&
      schema.anyOf == null &&
      schema.allOf == null &&
      (schema.ref != null ||
          switch (schema.type) {
            null => false,
            'object' =>
              schema.additionalProperties is Map ||
                  schema.additionalProperties == true,
            _ => true,
          });

  @override
  Library build(MapEntry<String, OpenApiSchemas> model) {
    final className =
        context.componentClassNames[model.key] ??
        Renaming.instance.renameClass(model.key);
    final dartType = context.extension.typeConverter.get(
      const OpenApiSchemaJsonConverter().fromJson(model.value.toJson()),
      className: className,
      contextName: className,
    );
    // `exports.dart` only when the type uses it: an unused import is a
    // warning in the consumer's analysis.
    final usesExports = RegExp(
      r'[A-Za-z_$][\w$]*',
    ).allMatches(dartType).any((m) => !_coreTypes.contains(m[0]));

    return Library(
      (b) => b
        ..name = Renaming.instance.renameFile(className)
        ..docs.addAll(
          JsonFactory.instance.docs(model.key, model.value.toJson()),
        )
        ..directives.addAll([
          for (final import in context.config.imports?.globalImports ?? [])
            Directive.import(import),
          if (usesExports) Directive.import('exports.dart'),
        ])
        ..body.add(Code('typedef $className = $dartType;')),
    );
  }
}
