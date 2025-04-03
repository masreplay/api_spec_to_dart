import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Determines the type of model based on its properties
class ModelTypeDeterminer {
  /// Determines the type of model from the given OpenAPI model
  ModelType determine(OpenApiModel model) {
    final schema = model.value;

    // Check for enum type first
    if (schema.enum_ != null && schema.enum_!.isNotEmpty) {
      return ModelType.enum_;
    }

    // Check for union type at schema level
    if (schema is OpenApiSchemaAnyOf || schema is OpenApiSchemaOneOf) {
      return ModelType.union;
    }

    // Check for union type in properties
    final properties = schema.properties ?? {};
    if (properties.entries.any(
      (entry) =>
          entry.value is OpenApiSchemaAnyOf ||
          entry.value is OpenApiSchemaOneOf,
    )) {
      return ModelType.union;
    }

    // If none of the above, it's a regular model
    return ModelType.regular;
  }
}

/// Enum to identify different model types
enum ModelType { enum_, union, regular }
