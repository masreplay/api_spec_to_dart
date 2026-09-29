import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

///
/// Generate Enum, Union, Regular models
///
class ModelGenerator extends LibraryGenerator {
  const ModelGenerator(super.context);

  Library build(MapEntry<String, OpenApiSchemas> model) {
    final schema = model.value;

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

    // ponytail: approximates component class names (generic instantiations
    // are keyed by their full title), so an inline model may take a suffix
    // it did not strictly need.
    final prefixes = context.config.model.removeModelPrefixes;
    for (final MapEntry(:key, :value) in schemas.entries) {
      for (final name in {key, ?value.title}) {
        context.reservedModelNames.add(
          Renaming.instance.renameFile(
            Renaming.instance.renameClass(
              name,
              removePrefixes: prefixes.isNotEmpty ? prefixes : null,
            ),
          ),
        );
      }
    }

    // A generic class is built from the first instantiation registered, so
    // instantiations with component-schema arguments go first.
    final deferred = <MapEntry<String, OpenApiSchemas>>[];
    for (final entry in schemas.entries) {
      if (generic.shouldUseGenericStrategy(entry) &&
          !generic.hasSchemaArguments(entry)) {
        deferred.add(entry);
        continue;
      }
      context.addModel(build(entry));
    }
    for (final entry in deferred) {
      context.addModel(build(entry));
    }
  }
}
