import 'package:postman_collection/convert.dart';

import '../utils/warning.dart';
import '../utils/yaml.dart';
import 'json_schema.dart';
import 'swagger2.dart';

/// The kinds of document [toOpenApiJson] accepts.
enum SpecFormat { openApi3, swagger2, jsonSchema, postman, unknown }

/// What kind of API description [document] (decoded JSON or YAML) is.
SpecFormat detectSpecFormat(Object? document) {
  if (document is! Map) return SpecFormat.unknown;
  // YAML reads unquoted `3.1` and `2.0` as numbers.
  if ('${document['openapi']}'.startsWith('3.')) return SpecFormat.openApi3;
  if ('${document['swagger']}' == '2.0') return SpecFormat.swagger2;
  if (isPostmanCollection(document)) return SpecFormat.postman;
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
  // Plain maps also when given package:yaml's YamlMap.
  document = _versionsAsStrings(YamlMapConverter.toPlain(document));
  return switch (detectSpecFormat(document)) {
    SpecFormat.openApi3 => document as Map<String, dynamic>,
    SpecFormat.swagger2 => swagger2ToOpenApi(document as Map<String, dynamic>),
    SpecFormat.jsonSchema => jsonSchemaToOpenApi(
      document as Map<String, dynamic>,
      sourceName: sourceName,
    ),
    SpecFormat.postman => postmanToOpenApi(
      document,
      onWarning: printWarning,
    ),
    SpecFormat.unknown => throw const FormatException(
      'Not an OpenAPI 3, Swagger 2.0, JSON Schema or Postman document',
    ),
  };
}

/// YAML reads unquoted `openapi: 3.1`, `swagger: 2.0` and `version: 1.0`
/// as numbers; the models expect strings.
Object? _versionsAsStrings(Object? document) => switch (document) {
  final Map<String, dynamic> map => {
    ...map,
    for (final key in const ['openapi', 'swagger'])
      if (map[key] case final num version) key: '$version',
    if (map['info'] case final Map info when info['version'] is num)
      'info': <String, dynamic>{...info, 'version': '${info['version']}'},
  },
  _ => document,
};
