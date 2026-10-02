import 'variables.dart';

final _scheme = RegExp(r'^([A-Za-z][A-Za-z0-9+.-]*|\{\{[^{}]+\}\})://');
final _wholeVariable = RegExp(r'^\{\{[^{}]+\}\}$');

/// A Postman URL (string or object) split into what OpenAPI needs.
class ParsedUrl {
  const ParsedUrl(
    this.origin,
    this.path,
    this.pathParams,
    this.query,
    this.variables,
  );

  /// `scheme://host:port`, a bare variable such as `{{baseUrl}}`, or empty
  /// for a relative URL.
  final String origin;

  /// The OpenAPI path template, e.g. `/users/{id}`.
  final String path;

  /// Template names in [path], in order.
  final List<String> pathParams;

  /// `url.query` entries, parsed from the raw URL when absent.
  final List<Map<Object?, Object?>> query;

  /// `url.variable` entries (path variable descriptions and values).
  final List<Map<Object?, Object?>> variables;
}

/// Parses a v2.1 `url`. Structured fields win; `raw` fills what is missing.
ParsedUrl parseUrl(Object? url) {
  final raw = _parseRaw(switch (url) {
    final String raw => raw,
    {'raw': final String raw} => raw,
    _ => '',
  });
  final object = url is Map ? url : const {};
  final host = switch (object['host']) {
    final List<Object?> host => host.join('.'),
    final String host => host,
    _ => null,
  };
  final origin = host == null
      ? raw.origin
      : _origin(switch (object['protocol']) {
          final String protocol => protocol,
          _ => raw.protocol,
        }, [host, ?object['port']].join(':'));
  final segments = switch (object['path']) {
    final List<Object?> path => [
      for (final segment in path)
        segment is Map ? '${segment['value'] ?? ''}' : '$segment',
    ],
    final String path => _segments(path),
    _ => raw.segments,
  };
  final names = <String>[];
  String name(String key) {
    var name = key;
    for (var i = 2; names.contains(name); i++) {
      name = '$key$i';
    }
    names.add(name);
    return '{$name}';
  }

  final path = [
    for (final segment in segments)
      segment.length > 1 && segment.startsWith(':')
          ? name(segment.substring(1))
          : segment.replaceAllMapped(variableReference, (m) => name(m[1]!)),
  ].join('/');
  return ParsedUrl(
    origin,
    '/$path',
    names,
    object['query'] is List ? _maps(object['query']) : raw.query,
    _maps(object['variable']),
  );
}

({
  String origin,
  String? protocol,
  List<String> segments,
  List<Map<Object?, Object?>> query,
})
_parseRaw(String raw) {
  var rest = raw.trim();
  final hash = rest.indexOf('#');
  if (hash >= 0) rest = rest.substring(0, hash);
  final question = rest.indexOf('?');
  final query = question < 0 ? '' : rest.substring(question + 1);
  if (question >= 0) rest = rest.substring(0, question);
  final scheme = _scheme.matchAsPrefix(rest);
  if (scheme != null) rest = rest.substring(scheme.end);
  final slash = rest.indexOf('/');
  final authority = slash < 0 ? rest : rest.substring(0, slash);
  return (
    origin: _origin(
      scheme?[1],
      authority.substring(authority.lastIndexOf('@') + 1),
    ),
    protocol: scheme?[1],
    segments: slash < 0 ? const [] : _segments(rest.substring(slash)),
    query: [
      for (final pair in query.split('&'))
        if (pair.isNotEmpty)
          pair.contains('=')
              ? {
                  'key': pair.substring(0, pair.indexOf('=')),
                  'value': pair.substring(pair.indexOf('=') + 1),
                }
              : {'key': pair, 'value': null},
    ],
  );
}

/// The origin of [host] (with its port). Postman sends a host without a
/// protocol over http, unless it is a single variable such as `{{baseUrl}}`
/// that is expected to carry its own scheme.
String _origin(String? protocol, String host) => switch (host) {
  '' => '',
  _ when protocol != null => '$protocol://$host',
  _ when _wholeVariable.hasMatch(host) => host,
  _ => 'http://$host',
};

List<String> _segments(String path) =>
    path.isEmpty ? const [] : path.replaceFirst(RegExp('^/'), '').split('/');

List<Map<Object?, Object?>> _maps(Object? list) => [
  if (list is List)
    for (final entry in list)
      if (entry is Map) entry,
];
