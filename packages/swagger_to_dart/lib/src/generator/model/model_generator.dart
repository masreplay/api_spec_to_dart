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
    } else if (GenericModelGeneratorStrategy(context)
        .shouldUseGenericStrategy(model)) {
      strategy = GenericModelGeneratorStrategy(context);
    } else {
      strategy = RegularModelGeneratorStrategy(context);
    }

    return strategy.build(model);
  }

  Future<void> generate() async {
    if (context.openApi.components case final openApiComponents?) {
      final schemas = openApiComponents.schemas ?? {};
      for (final entry in schemas.entries) {
        final model = build(entry);

        context.addModel(model);
      }
    }
  }
}
