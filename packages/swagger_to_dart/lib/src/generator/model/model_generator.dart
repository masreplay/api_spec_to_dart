import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/src/generator/model/model_generator_strategy.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';

import 'strategy/enum_model_strategy.dart';
import 'strategy/regular_model_strategy.dart';
import 'strategy/union_model_strategy.dart';

///
/// Generate Enum, Union, Regular models
///
class ModelGenerator {
  const ModelGenerator(this.context);

  final GenerationContext context;

  Future<void> generate() async {
    if (context.openApi.components case final openApiComponents?) {
      for (final entry in openApiComponents.schemas.entries) {
        final result = build(entry);

        context.addModel(result);
      }
    }
  }

  ModelGeneratorStrategy _getBuildStrategy(
    MapEntry<String, OpenApiSchemas> model,
  ) {
    final schema = model.value;

    if (schema.enum_ != null) {
      return EnumModelStrategy(context);
    }

    if (schema is OpenApiSchemaAnyOf || schema is OpenApiSchemaOneOf) {
      return UnionModelStrategy(context);
    }

    return RegularModelStrategy(context);
  }

  Library build(MapEntry<String, OpenApiSchemas> model) {
    final strategy = _getBuildStrategy(model);

    return strategy.build(model);
  }
}
