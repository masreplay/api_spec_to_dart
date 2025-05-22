import 'package:swagger_to_dart/src/schema/schema.dart';

extension OpenApiExtension on OpenApi {
  /// Get OpenApiSchema by Ref
  ///
  /// Example
  /// ``` json
  /// // $ref
  /// "$ref": "#/components/schemas/HTTPValidationError"
  ///
  /// // schemas
  /// {
  ///   "schemas": {
  ///     "HTTPValidationError": {...}
  ///   }
  /// }
  /// ```
  OpenApiSchemas? getOpenApiSchemasByRef(String ref) {
    final entries = components?.schemas.entries.toList() ?? [];

    for (final entry in entries) {
      if (entry.key == ref.split('/').last) {
        return entry.value;
      }
    }

    return null;
  }
}
