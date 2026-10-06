import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Types every Dart library sees without importing `exports.dart`.
const _coreTypes = {
  'String', 'int', 'double', 'num', 'bool', 'List', 'Map', 'DateTime', //
  'Uri', 'dynamic', 'Object',
};

/// A component that is no object model (an array, a primitive, a map, a
/// `$ref` alias, or a `oneOf`/`anyOf` that is no union) as
/// `typedef Pets = List<Pet>;`.
class TypedefModelStrategy
    extends ModelGeneratorStrategy<MapEntry<String, OpenApiSchemas>> {
  const TypedefModelStrategy(super.context);

  /// Whether [schema] is such a component, once unions are ruled out.
  /// `type: object` without properties is a map (free-form when it has no
  /// `additionalProperties`), unless `additionalProperties: false` leaves
  /// no key to keep.
  static bool accepts(OpenApiSchemas schema) =>
      (schema.properties?.isEmpty ?? true) &&
      schema.enum_ == null &&
      schema.allOf == null &&
      (schema.ref != null ||
          // One primitive type (`anyOf: [enum, string]`), or `dynamic`.
          schema.oneOf != null ||
          schema.anyOf != null ||
          switch (schema.type) {
            null => false,
            'object' => schema.additionalProperties != false,
            _ => true,
          });

  @override
  Library build(MapEntry<String, OpenApiSchemas> model) {
    final className =
        context.componentClassNames[model.key] ??
        Renaming.instance.renameClass(model.key);
    final typeConverter = context.extension.typeConverter;
    final base = context.unprefixed(className);
    // Items and values are `${Typedef}Item`/`Value`, inline enums too, so
    // the typedef keeps its own name.
    final dartType = switch (const OpenApiSchemaJsonConverter().fromJson(
      model.value.toJson(),
    )) {
      OpenApiSchemaType(
        type: OpenApiSchemaVarType.array,
        :final items?,
      ) =>
        'List<${typeConverter.get(items, className: className, contextName: '${base}_item')}>',
      OpenApiSchemaType(
        type: OpenApiSchemaVarType.object,
        additionalProperties: final Map<String, dynamic> values,
      ) =>
        'Map<String, ${typeConverter.get(const OpenApiSchemaJsonConverter().fromJson(values), className: className, contextName: '${base}_value')}>',
      final schema => typeConverter.get(
        schema,
        className: className,
        contextName: '${base}_value',
      ),
    };
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
