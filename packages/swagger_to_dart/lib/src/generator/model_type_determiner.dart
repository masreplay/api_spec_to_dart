import 'package:swagger_to_dart/swagger_to_dart.dart';

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

enum ModelTypeEnum { enum_, union, regular }
