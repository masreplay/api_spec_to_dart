import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

///
/// Generate Enum, Union, Regular models
///
class ModelGenerator extends LibraryGenerator {
  const ModelGenerator(super.context);

  Library build(MapEntry<String, OpenApiSchemas> model) {
    final schema = model.value;

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
