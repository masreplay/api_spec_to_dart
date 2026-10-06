import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/utils/warning.dart';
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
    // A typedef cannot refer to itself: such references are `Object?`
    // (retrofit_generator crashes on a `List<dynamic>` response).
    final overrideTypes = {
      for (final key in _cyclicReferences(model.key))
        context.componentClassNames[key] ?? key: 'Object?',
    };
    for (final key in overrideTypes.keys) {
      printWarning(
        'component "${model.key}" refers to itself through $key; '
        'that reference is typed Object?.',
      );
    }
    // Items and values are `${Typedef}Item`/`Value`, inline enums too, so
    // the typedef keeps its own name.
    final dartType = switch (const OpenApiSchemaJsonConverter().fromJson(
      model.value.toJson(),
    )) {
      OpenApiSchemaType(
        type: OpenApiSchemaVarType.array,
        :final items?,
      ) =>
        'List<${typeConverter.get(items, className: className, contextName: '${base}_item', overrideTypes: overrideTypes)}>',
      OpenApiSchemaType(
        type: OpenApiSchemaVarType.object,
        additionalProperties: final Map<String, dynamic> values,
      ) =>
        'Map<String, ${typeConverter.get(const OpenApiSchemaJsonConverter().fromJson(values), className: className, contextName: '${base}_value', overrideTypes: overrideTypes)}>',
      final schema => typeConverter.get(
        schema,
        className: className,
        contextName: '${base}_value',
        overrideTypes: overrideTypes,
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

  /// The components [key]'s typedef references that lead back to it through
  /// typedefs (`Tree = List<Tree>`; `A = B`, `B = List<A>`). Of each cycle,
  /// only references to an earlier (or the same) component are cut, so what
  /// stays is acyclic. A model in between (`Forest = List<Branch>`) is no
  /// cycle: classes may refer to themselves.
  Set<String> _cyclicReferences(String key) {
    final components = context.openApi.components?.schemas ?? {};
    final order = components.keys.toList();
    final generic = GenericModelGeneratorStrategy(context);
    final union = UnionModelStrategy(context);

    Iterable<String> references(String key) {
      final schema = components[key];
      if (schema == null ||
          schema.enum_ != null ||
          !accepts(schema) ||
          union.isUnionComponent(schema) ||
          generic.shouldUseGenericStrategy(MapEntry(key, schema))) {
        return const [];
      }
      return _references(schema.toJson()).where(components.containsKey);
    }

    bool reaches(String from, String to) {
      final seen = <String>{};
      final pending = [from];
      while (pending.isNotEmpty) {
        final next = pending.removeLast();
        if (next == to) return true;
        if (seen.add(next)) pending.addAll(references(next));
      }
      return false;
    }

    return {
      for (final target in references(key))
        if (order.indexOf(target) <= order.indexOf(key) && reaches(target, key))
          target,
    };
  }

  /// Component names [json] references outside inline objects: an object
  /// with properties is a model, and classes may refer to anything.
  static Iterable<String> _references(Object? json) sync* {
    switch (json) {
      case {r'$ref': final String ref}:
        yield ref.split('/').last;
      case {'properties': final Map properties} when properties.isNotEmpty:
        return;
      case final Map map:
        for (final value in map.values) {
          yield* _references(value);
        }
      case final List list:
        for (final e in list) {
          yield* _references(e);
        }
    }
  }
}
