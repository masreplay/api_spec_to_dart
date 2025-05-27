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
    final schemas = components?.schemas ?? {};

    for (final entry in schemas.entries) {
      if (entry.key == ref.split('/').last) {
        return entry.value;
      }
    }

    return null;
  }
}

extension OpenApiSchemaRefExtension on OpenApiSchemaRef {
  String get name => ref!.split('/').lastOrNull ?? '';
}
