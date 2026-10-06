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
  final openApi = switch (detectSpecFormat(document)) {
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
  return _inlinePointers(openApi, openApi, const {}) as Map<String, dynamic>;
}

/// [node] of [document] with every `$ref` that points into a schema
/// (`#/components/schemas/Page/properties/items`) replaced by the schema it
/// points to (its sibling keys kept): only whole components become models.
/// A pointer met again inside its own replacement ([expanding]) stays.
/// [names]: [node] maps names to schemas (`properties`), so a key such as
/// `default` is a name, not data.
Object? _inlinePointers(
  Object? node,
  Map<String, dynamic> document,
  Set<String> expanding, {
  bool names = false,
}) {
  const schemas = '#/components/schemas/';
  switch (node) {
    case {r'$ref': final String ref}
        when !names &&
            ref.startsWith(schemas) &&
            ref.substring(schemas.length).contains('/') &&
            !expanding.contains(ref):
      final target = _pointed(document, ref);
      if (target is! Map) return node;
      return _inlinePointers(
        {...target, ...Map.of(node)..remove(r'$ref')},
        document,
        {...expanding, ref},
      );
    case final Map map:
      return <String, dynamic>{
        for (final MapEntry(:key, :value) in map.entries)
          '$key': !names && _data.contains(key)
              ? value
              : _inlinePointers(
                  value,
                  document,
                  expanding,
                  names: !names && _named.contains(key),
                ),
      };
    case final List list:
      return [for (final e in list) _inlinePointers(e, document, expanding)];
    default:
      return node;
  }
}

/// Keywords whose values are data, not schemas.
const _data = {'enum', 'const', 'default', 'example', 'examples'};

/// Keywords whose values map names (not keywords) to schemas.
const _named = {
  'schemas',
  'properties',
  'patternProperties',
  'dependentSchemas',
  'definitions',
  r'$defs',
};

/// The value at the JSON pointer of the local [ref] (`#/a/b~1c`), or null.
Object? _pointed(Map<String, dynamic> document, String ref) {
  Object? node = document;
  for (final segment in ref.substring(2).split('/')) {
    final key = _decoded(segment).replaceAll('~1', '/').replaceAll('~0', '~');
    node = switch (node) {
      final Map map => map[key],
      final List list => switch (int.tryParse(key)) {
        final i? when i >= 0 && i < list.length => list[i],
        _ => null,
      },
      _ => null,
    };
  }
  return node;
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

/// [segment] percent-decoded, or as it is when it is no valid encoding.
String _decoded(String segment) {
  try {
    return Uri.decodeComponent(segment);
  } on ArgumentError {
    return segment;
  } on FormatException {
    return segment;
  }
}
