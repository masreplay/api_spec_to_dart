import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/src/generator/model/model_strategy.dart';
import 'package:swagger_to_dart/src/schema/openapi/openapi.dart';

import 'enum_model_strategy.dart';
import 'regular_model_strategy.dart';
import 'union_model_strategy.dart';

///
/// Generate Enum, Union, Regular models
///
class ModelGenerator {
  const ModelGenerator(this.context);

  final GenerationContext context;

  Future<void> generate() async {
    if (context.openApi.components case final openApiComponents?) {
      for (final entry in openApiComponents.schemas.entries) {
        final result = run(entry);

        context.addModel(result);
      }
    }
  }

  Library run(MapEntry<String, OpenApiSchemas> model) {
    final schema = model.value;

    ModelTypeEnum type = ModelTypeEnum.regular;

    if (schema.enum_ != null && schema.enum_!.isNotEmpty) {
      type = ModelTypeEnum.enum_;
    }

    final properties = schema.properties ?? {};
    if (properties.entries.any(
      (entry) =>
          _checkAnyOfType(entry.value) || entry.value is OpenApiSchemaOneOf,
    )) {
      type = ModelTypeEnum.union;
    }

    if (schema is OpenApiSchemaAnyOf || schema is OpenApiSchemaOneOf) {
      type = ModelTypeEnum.union;
    }

    final strategy = switch (type) {
      ModelTypeEnum.regular => RegularModelStrategy(context),
      ModelTypeEnum.enum_ => EnumModelStrategy(context),
      ModelTypeEnum.union => UnionModelStrategy(context),
    };

    return strategy.generate(model);
  }

  bool _checkAnyOfType(OpenApiSchema schema) {
    if (schema is! OpenApiSchemaAnyOf) return false;
    final anyOf = schema.anyOf;
    if (anyOf == null) return false;
    if (anyOf.length == 2) {
      if (anyOf.any(
        (e) => e is OpenApiSchemaType && e.type == OpenApiSchemaVarType.null_,
      )) return false;
      return true;
    }
    return anyOf.length > 2;
  }
}
