import 'dart:convert';

import 'package:yaml/yaml.dart';

import 'json_lenient.dart';
import 'normalize.dart' show v21SchemaUrl;

const _rawLanguages = {'json', 'text', 'xml', 'html', 'javascript'};
const _definition = '.resources/definition.yaml';

/// A v3 collection (paths relative to the collection root → YAML text) as a
/// v2.1 collection map.
///
/// - `definition.yaml` gives the collection or folder name, description,
///   variables, auth and `order`; `name` is the default collection name.
/// - `*.request.yaml` (`http-request`, `graphql-request`) become items and
///   `*.example.yaml` their saved responses. Other protocols are skipped
///   with a warning, as is unreadable YAML.
/// - Items are ordered by `order`, then name; multi-auth keeps the first.
Map<String, Object?> postmanCollectionFromV3Files(
  Map<String, String> files, {
  String? name,
  void Function(String message)? onWarning,
}) {
  final sources = {
    for (final MapEntry(:key, :value) in files.entries)
      key.replaceAll(r'\', '/').replaceFirst(RegExp(r'^(\./)+'), ''): value,
  };
  final paths = sources.keys.toList()..sort();

  Map<String, Object?>? read(String path) {
    final source = sources[path];
    if (source == null) return null;
    try {
      if (_plain(loadYaml(source)) case final Map<String, Object?> yaml) {
        return yaml;
      }
      onWarning?.call('$path is not a YAML mapping; skipped');
    } on YamlException catch (error) {
      onWarning?.call('$path is not valid YAML; skipped (${error.message})');
    }
    return null;
  }

  final requests = [
    for (final path in paths)
      if (path.endsWith('.request.yaml') && !_inResources(path)) path,
  ];
  final folders = <String>{};
  void addFolder(String dir) {
    for (var folder = dir; folder.isNotEmpty; folder = _parent(folder)) {
      if (!folders.add(folder)) return;
    }
  }

  requests.map(_parent).forEach(addFolder);
  for (final path in paths) {
    if (path.endsWith('/$_definition') && !_inResources(path)) {
      addFolder(path.substring(0, path.length - _definition.length - 1));
    }
  }

  (Map<String, Object?>, Map<String, Object?>)? item(String path) {
    final yaml = read(path);
    if (yaml == null) return null;
    final kind = yaml[r'$kind'] ?? 'http-request';
    final request = switch (kind) {
      'http-request' => _httpRequest(yaml, path, onWarning),
      'graphql-request' => _graphqlRequest(yaml),
      _ => null,
    };
    if (request == null) {
      onWarning?.call("$path: '$kind' is not an HTTP request; skipped");
      return null;
    }
    final dir = _parent(path);
    final examples = _join(dir, switch (yaml['examples']) {
      final String relative => relative,
      _ => '.resources/${_stem(path, '.request.yaml')}.resources/examples',
    });
    final responses = [
      for (final example in paths)
        if (_parent(example) == examples && example.endsWith('.example.yaml'))
          if (read(example) case final yaml?) (yaml, _response(example, yaml)),
    ];
    return (
      yaml,
      {
        'name': _name(yaml, path, '.request.yaml'),
        'request': request,
        if (responses.isNotEmpty)
          'response': [
            for (final (_, response) in _sorted(responses)) response,
          ],
      },
    );
  }

  List<Map<String, Object?>> children(String dir) {
    (Map<String, Object?>, Map<String, Object?>) folder(String path) {
      final yaml = read(_join(path, _definition)) ?? const {};
      return (
        yaml,
        {
          'name': _name(yaml, path, ''),
          'description': ?descriptionText(yaml['description']),
          'variable': ?_list(yaml['variables']),
          'auth': ?_auth(yaml['auth']),
          'item': children(path),
        },
      );
    }

    return [
      for (final (_, child) in _sorted([
        for (final path in folders)
          if (_parent(path) == dir) folder(path),
        for (final path in requests)
          if (_parent(path) == dir) ?item(path),
      ]))
        child,
    ];
  }

  final root = read(_definition) ?? const {};
  return {
    'info': {
      'name': root['name'] is String ? root['name'] : name ?? 'Collection',
      'description': ?descriptionText(root['description']),
      'schema': v21SchemaUrl,
    },
    'item': children(''),
    'variable': ?_list(root['variables']),
    'auth': ?_auth(root['auth']),
  };
}

/// [entries] by their YAML `order`, then name.
List<(Map<String, Object?>, Map<String, Object?>)> _sorted(
  List<(Map<String, Object?>, Map<String, Object?>)> entries,
) {
  num order(Map<String, Object?> yaml) => switch (yaml['order']) {
    final num order => order,
    _ => double.infinity,
  };
  return entries..sort((a, b) {
    final byOrder = order(a.$1).compareTo(order(b.$1));
    return byOrder != 0
        ? byOrder
        : '${a.$2['name']}'.compareTo('${b.$2['name']}');
  });
}

Map<String, Object?> _httpRequest(
  Map<String, Object?> yaml,
  String path,
  void Function(String message)? onWarning,
) {
  final query = _list(yaml['queryParams']);
  final variables = _list(yaml['pathVariables']);
  final url = yaml['url'] is String ? yaml['url'] : '';
  return {
    'method': ?yaml['method'],
    'header': ?_list(yaml['headers']),
    'body': ?_body(yaml['body'], path, onWarning),
    'url': query == null && variables == null
        ? url
        : {'raw': url, 'query': ?query, 'variable': ?variables},
    'auth': ?_auth(yaml['auth']),
    'description': ?descriptionText(yaml['description']),
  };
}

Map<String, Object?> _graphqlRequest(Map<String, Object?> yaml) => {
  'method': 'POST',
  'header': ?_list(yaml['headers']),
  'url': yaml['url'] is String ? yaml['url'] : '',
  'auth': ?_auth(yaml['auth']),
  'body': {
    'mode': 'graphql',
    'graphql': {'query': ?yaml['query'], 'variables': ?yaml['variables']},
  },
};

Map<String, Object?>? _body(
  Object? body,
  String path,
  void Function(String message)? onWarning,
) {
  if (body is! Map) return null;
  final content = body['content'];
  switch (body['type']) {
    case final String type when type == 'formdata' || type == 'urlencoded':
      return {'mode': type, type: _list(content) ?? const []};
    case 'file':
      return {
        'mode': 'file',
        'file': {'src': content},
      };
    case final String language when _rawLanguages.contains(language):
      return {
        'mode': 'raw',
        'raw': content is String ? content : jsonEncode(content ?? ''),
        'options': {
          'raw': {'language': language},
        },
      };
    case 'none' || null:
      return null;
    case final type:
      onWarning?.call("$path: body type '$type' is skipped");
      return null;
  }
}

/// v3 auth (`{type, credentials}`, or a multi-auth list whose first entry
/// is kept) as v2.1 auth; `inherit` is no auth.
Map<String, Object?>? _auth(Object? auth) {
  final first = auth is List ? auth.firstOrNull : auth;
  if (first case {'type': final String type} when type != 'inherit') {
    return {
      'type': type,
      if (type != 'noauth')
        type: [
          for (final credential in _list(first['credentials']) ?? const [])
            if (credential is Map)
              {'key': credential['key'], 'value': credential['value']},
        ],
    };
  }
  return null;
}

Map<String, Object?> _response(String path, Map<String, Object?> yaml) {
  final request = yaml['request'];
  final response = yaml['response'] is Map ? yaml['response'] as Map : const {};
  final body = response['body'] is Map ? response['body'] as Map : const {};
  final content = body['content'];
  return {
    'name': _name(yaml, path, '.example.yaml'),
    if (request is Map)
      'originalRequest': {'method': ?request['method'], 'url': ?request['url']},
    'code': ?response['statusCode'],
    'status': ?response['statusText'],
    'header': ?_list(response['headers']),
    'body': ?(content is String || content == null
        ? content
        : jsonEncode(content)),
    '_postman_previewlanguage': ?body['type'],
  };
}

String _name(Map<String, Object?> yaml, String path, String suffix) =>
    yaml['name'] is String ? yaml['name'] as String : _stem(path, suffix);

String _stem(String path, String suffix) {
  final name = path.substring(path.lastIndexOf('/') + 1);
  return name.endsWith(suffix)
      ? name.substring(0, name.length - suffix.length)
      : name;
}

String _parent(String path) =>
    path.contains('/') ? path.substring(0, path.lastIndexOf('/')) : '';

/// [relative] (`./x/`, `x`) resolved against [dir], without trailing slash.
String _join(String dir, String relative) {
  final path = relative
      .replaceFirst(RegExp(r'^(\./)+'), '')
      .replaceFirst(RegExp(r'/+$'), '');
  return dir.isEmpty ? path : '$dir/$path';
}

/// Whether [path] lies in a `.resources` metadata directory.
bool _inResources(String path) =>
    _parent(path).split('/').any((segment) => segment.endsWith('.resources'));

List<Object?>? _list(Object? value) => value is List ? value : null;

/// YAML maps and lists as plain JSON-like Dart values.
Object? _plain(Object? node) => switch (node) {
  final Map<Object?, Object?> map => <String, Object?>{
    for (final MapEntry(:key, :value) in map.entries) '$key': _plain(value),
  },
  final List<Object?> list => [for (final item in list) _plain(item)],
  _ => node,
};
