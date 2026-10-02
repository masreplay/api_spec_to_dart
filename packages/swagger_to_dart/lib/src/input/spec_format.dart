/// The kinds of document [toOpenApiJson] accepts.
enum SpecFormat { openApi3, swagger2, jsonSchema, postman, unknown }

/// What kind of API description [document] (decoded JSON or YAML) is.
SpecFormat detectSpecFormat(Object? document) {
  if (document is! Map) return SpecFormat.unknown;
  // YAML reads unquoted `3.1` and `2.0` as numbers.
  if ('${document['openapi']}'.startsWith('3.')) return SpecFormat.openApi3;
  if ('${document['swagger']}' == '2.0') return SpecFormat.swagger2;
  if (document case {
    'info': {'schema': final String schema},
  } when schema.contains('postman')) {
    return SpecFormat.postman;
  }
  if (document['collection'] is Map ||
      (document.containsKey('requests') && document.containsKey('order')) ||
      document.containsKey('x-postman-v3-directory')) {
    return SpecFormat.postman;
  }
  if (document.containsKey('definitions') ||
      document.containsKey(r'$defs') ||
      document.containsKey(r'$schema')) {
    return SpecFormat.jsonSchema;
  }
  return SpecFormat.unknown;
}

/// The OpenAPI 3.x JSON for any supported document. [sourceName] (file name
/// without extension) names a JSON Schema root without a title.
Map<String, dynamic> toOpenApiJson(Object? document, {String? sourceName}) {
  return switch (detectSpecFormat(document)) {
    SpecFormat.openApi3 => document as Map<String, dynamic>,
    SpecFormat.swagger2 => throw UnimplementedError('Swagger 2.0'),
    SpecFormat.jsonSchema => throw UnimplementedError('JSON Schema'),
    SpecFormat.postman => throw UnsupportedError(
      'Postman input is wired in Task 6',
    ),
    SpecFormat.unknown => throw const FormatException(
      'Not an OpenAPI 3, Swagger 2.0, JSON Schema or Postman document',
    ),
  };
}
