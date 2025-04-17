import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Determines the type of model based on its properties
class ModelTypeDeterminer {
  /// Determines the type of model from the given OpenAPI model
  ModelTypeEnum determine(OpenApiModel model) {
    final schema = model.value;

    // Check for enum type first
    if (schema.enum_ != null && schema.enum_!.isNotEmpty) {
      return ModelTypeEnum.enum_;
    }

    // Check for union type in properties
    final properties = schema.properties ?? {};
    if (properties.entries.any(
      (entry) =>
          checkAnyOfType(entry.value) || entry.value is OpenApiSchemaOneOf,
    )) {
      return ModelTypeEnum.union;
    }

    // Check for union type at schema level
    if (schema is OpenApiSchemaAnyOf || schema is OpenApiSchemaOneOf) {
      return ModelTypeEnum.union;
    }

    // If none of the above, it's a regular model
    return ModelTypeEnum.regular;
  }
}

/// Checks if a schema represents a valid anyOf type that should be treated as a union
///
/// Returns true if:
/// - The schema is an OpenApiSchemaAnyOf
/// - Has a non-null anyOf list
/// - Either:
///   - Has exactly 2 types that are both non-null
///   - Has more than 2 types
///
/// Returns false if:
/// - Not an OpenApiSchemaAnyOf
/// - anyOf list is null
/// - Has exactly 2 types where one is null (treated as nullable instead)
bool checkAnyOfType(OpenApiSchema schema) {
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

/// Enum to identify different model types
enum ModelTypeEnum { enum_, union, regular }
