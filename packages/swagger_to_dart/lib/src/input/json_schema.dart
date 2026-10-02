import '../utils/renaming.dart';

/// Keywords whose values are data, not schemas: never rewritten.
const _data = {'enum', 'const', 'default', 'examples', 'example'};

/// Keywords whose values map names (not keywords) to schemas.
const _named = {
  'properties',
  'patternProperties',
  'dependencies',
  'dependentSchemas',
  'definitions',
  r'$defs',
};

/// Root keywords that describe the document rather than a schema.
const _documentOnly = {
  r'$schema',
  r'$id',
  'id',
  r'$comment',
  'title',
  'description',
  'definitions',
  r'$defs',
};

/// An OpenAPI 3.1 document whose `components.schemas` hold the definitions
/// (`definitions` or `$defs`, any draft) of the JSON Schema [document],
/// named by key: definition titles are labels, and several often share
/// one. The root schema, unless it only holds definitions, is a component
/// named by its `title`, else [sourceName].
Map<String, dynamic> jsonSchemaToOpenApi(
  Map<String, dynamic> document, {
  String? sourceName,
}) {
  final definitions = <String, dynamic>{
    ...?document['definitions'] as Map<String, dynamic>?,
    ...?document[r'$defs'] as Map<String, dynamic>?,
  };

  final title = '${document['title'] ?? sourceName ?? 'Schema'}';
  final baseName = Renaming.instance.renameClass(title);
  var rootName = baseName;
  for (var i = 2; definitions.containsKey(rootName); i++) {
    rootName = '$baseName$i';
  }

  String ref(String ref) {
    if (ref == '#') return '#/components/schemas/$rootName';
    for (final prefix in const ['#/definitions/', r'#/$defs/']) {
      if (ref.startsWith(prefix)) {
        return '#/components/schemas/${ref.substring(prefix.length)}';
      }
    }
    return ref;
  }

  final hasRoot = document.keys.any((key) => !_documentOnly.contains(key));
  return {
    'openapi': '3.1.0',
    'info': {'title': title, 'version': '1.0.0'},
    'components': {
      'schemas': {
        for (final MapEntry(:key, :value) in definitions.entries)
          key: _schema(
            value is Map ? ({...value}..remove('title')) : value,
            ref,
          ),
        if (hasRoot)
          rootName: _schema({
            for (final MapEntry(:key, :value) in document.entries)
              if (!const {'title', 'definitions', r'$defs'}.contains(key))
                key: value,
          }, ref),
      },
    },
  };
}

/// [node] with refs rewritten by [ref] and the `$id`, `$schema` and
/// draft-04 `id` keywords removed.
Object? _schema(Object? node, String Function(String) ref) => switch (node) {
  List() => [for (final e in node) _schema(e, ref)],
  Map() => {
    for (final MapEntry(:key, :value) in node.entries)
      if (key != r'$id' &&
          key != r'$schema' &&
          !(key == 'id' && value is String))
        '$key': switch (value) {
          final String target when key == r'$ref' => ref(target),
          _ when _data.contains(key) => value,
          final Map names when _named.contains(key) => {
            for (final MapEntry(:key, :value) in names.entries)
              '$key': _schema(value, ref),
          },
          _ => _schema(value, ref),
        },
  },
  _ => node,
};
