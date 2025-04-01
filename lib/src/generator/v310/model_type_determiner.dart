import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Determines the type of model based on its properties
class ModelTypeDeterminer {
  /// Determines the type of model from the given OpenAPI model
  ModelType determine(OpenApiModel model) {
    final properties = model.value.properties ?? {};
    final enum_ = model.value.enum_ ?? [];

    if (enum_.isNotEmpty) {
      return ModelType.enum_;
    }

    if (properties.entries.any((entry) => entry.value is OpenApiSchemaOneOf)) {
      return ModelType.union;
    }

    return ModelType.regular;
  }
}

/// Enum to identify different model types
enum ModelType { enum_, union, regular }
