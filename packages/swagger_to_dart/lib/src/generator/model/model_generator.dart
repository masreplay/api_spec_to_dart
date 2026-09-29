import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

///
/// Generate Enum, Union, Regular models
///
class ModelGenerator extends LibraryGenerator {
  const ModelGenerator(super.context);

  Library build(MapEntry<String, OpenApiSchemas> model) {
    final schema = _mergeAllOf(model.key, model.value, {});
    model = MapEntry(model.key, schema);

    // A component that is a oneOf/anyOf of references is a union (#58).
    final variants = [...?schema.oneOf, ...?schema.anyOf].where(
      (e) => !(e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_),
    );
    if (variants.isNotEmpty && variants.every((e) => e is OpenApiSchemaRef)) {
      return UnionModelStrategy(context).buildComponent(model);
    }

    final ModelGeneratorStrategy strategy;

    if (schema.enum_ != null) {
      strategy = EnumModelGeneratorStrategy(context);
    } else if (GenericModelGeneratorStrategy(
      context,
    ).shouldUseGenericStrategy(model)) {
      strategy = GenericModelGeneratorStrategy(context);
    } else {
      strategy = RegularModelGeneratorStrategy(context);
    }

    return strategy.build(model);
  }

  void generate() {
    final schemas = context.openApi.components?.schemas ?? {};
    final generic = GenericModelGeneratorStrategy(context);

    _nameComponents(schemas, generic);

    // A generic class is built from the first instantiation registered, so
    // instantiations with component-schema arguments go first.
    final deferred = <MapEntry<String, OpenApiSchemas>>[];
    for (final entry in schemas.entries) {
      final isGeneric = generic.shouldUseGenericStrategy(entry);
      if (isGeneric && !generic.hasSchemaArguments(entry)) {
        deferred.add(entry);
        continue;
      }
      context.addModel(build(entry), isGenericInstantiation: isGeneric);
    }
    for (final entry in deferred) {
      context.addModel(
        build(entry),
        isGenericInstantiation: generic.shouldUseGenericStrategy(entry),
      );
    }
  }

  /// A schema with its `allOf` parts merged in: properties and required
  /// lists of referenced components (recursively) and inline objects.
  /// [visiting] breaks reference cycles.
  OpenApiSchemas _mergeAllOf(
    String key,
    OpenApiSchemas schema,
    Set<String> visiting,
  ) {
    final parts = schema.allOf;
    if (parts == null || parts.isEmpty) return schema;

    final components = context.openApi.components?.schemas ?? {};
    final properties = <String, OpenApiSchema>{};
    final required = <String>{};

    void merge(OpenApiSchemas part) {
      properties.addAll(part.properties ?? {});
      required.addAll(part.required_ ?? []);
    }

    for (final part in parts) {
      if (part[r'$ref'] case final String ref) {
        final name = ref.split('/').last;
        final target = components[name];
        if (target == null || !visiting.add(name)) continue;
        merge(_mergeAllOf(name, target, {...visiting, key}));
      } else {
        merge(_mergeAllOf(key, OpenApiSchemas.fromJson(part), visiting));
      }
    }
    merge(schema);

    return schema.copyWith(
      type: 'object',
      properties: properties,
      required_: [...required],
      allOf: null,
    );
  }

  /// Assigns every non-generic component a unique class name: its title (or
  /// key); when another component already took that name, its key; then a
  /// numeric suffix. Generic instantiations share their base class name.
  void _nameComponents(
    Map<String, OpenApiSchemas> schemas,
    GenericModelGeneratorStrategy generic,
  ) {
    final prefixes = context.config.model.removeModelPrefixes;
    String className(String name) => Renaming.instance.renameClass(
      name,
      removePrefixes: prefixes.isNotEmpty ? prefixes : null,
    );

    final taken = <String>{};
    for (final entry in schemas.entries) {
      if (generic.shouldUseGenericStrategy(entry)) {
        if (generic.baseClassName(entry) case final base?) taken.add(base);
      }
    }

    for (final entry in schemas.entries) {
      if (generic.shouldUseGenericStrategy(entry)) continue;
      final preferred = className(entry.value.title ?? entry.key);
      var name = taken.contains(preferred) ? className(entry.key) : preferred;
      for (var i = 2; taken.contains(name); i++) {
        name = '${className(entry.key)}$i';
      }
      taken.add(name);
      context.componentClassNames[entry.key] = name;
    }

    context.reservedModelNames.addAll(taken.map(Renaming.instance.renameFile));
  }
}
