import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/generator/library_generator.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/enum_model_generator_strategy.dart';
import 'package:swagger_to_dart/src/generator/model/strategy/model_generator_strategy.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';

import 'strategy/regular_model_generator_strategy.dart';

///
/// Generate Enum, Union, Regular models
///
class ModelGenerator
    extends LibraryGenerator<MapEntry<String, OpenApiSchemas>> {
  const ModelGenerator(super.context);

  @override
  Library build(MapEntry<String, OpenApiSchemas> model) {
    final schema = model.value;

    final ModelGeneratorStrategy strategy;

    if (schema.enum_ != null) {
      strategy = EnumModelGeneratorStrategy(context);
    } else {
      strategy = RegularModelGeneratorStrategy(context);
    }

    return strategy.build(model);
  }

  Future<void> generate() async {
    if (context.openApi.components case final openApiComponents?) {
      for (final entry in openApiComponents.schemas.entries) {
        final model = build(entry);

        context.addModel(model);
      }
    }
  }
}
