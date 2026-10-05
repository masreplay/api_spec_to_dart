import 'dart:convert';

import 'auth.dart';
import 'body.dart';
import 'json_lenient.dart';
import 'normalize.dart';
import 'url.dart';
import 'variables.dart';

/// Methods with an OpenAPI 3.1 path item field; QUERY and the rest need 3.2.
const _methods31 = {
  'GET',
  'PUT',
  'POST',
  'DELETE',
  'OPTIONS',
  'HEAD',
  'PATCH',
  'TRACE',
};

/// Headers the HTTP client manages; never parameters or response headers.
const _transportHeaders = {
  'host',
  'content-length',
  'user-agent',
  'accept-encoding',
  'connection',
  'postman-token',
  'cache-control',
  'date',
  'server',
  'keep-alive',
  'transfer-encoding',
  'content-encoding',
  'vary',
};

/// Request headers OpenAPI describes elsewhere (media types, security).
const _describedHeaders = {'content-type', 'accept', 'authorization'};

/// An RFC 9110 token: valid header and method names.
final _token = RegExp(r"^[!#$%&'*+.^_`|~0-9A-Za-z-]+$");

const _reasonPhrases = {
  100: 'Continue',
  101: 'Switching Protocols',
  200: 'OK',
  201: 'Created',
  202: 'Accepted',
  203: 'Non-Authoritative Information',
  204: 'No Content',
  205: 'Reset Content',
  206: 'Partial Content',
  300: 'Multiple Choices',
  301: 'Moved Permanently',
  302: 'Found',
  303: 'See Other',
  304: 'Not Modified',
  307: 'Temporary Redirect',
  308: 'Permanent Redirect',
  400: 'Bad Request',
  401: 'Unauthorized',
  402: 'Payment Required',
  403: 'Forbidden',
  404: 'Not Found',
  405: 'Method Not Allowed',
  406: 'Not Acceptable',
  407: 'Proxy Authentication Required',
  408: 'Request Timeout',
  409: 'Conflict',
  410: 'Gone',
  411: 'Length Required',
  412: 'Precondition Failed',
  413: 'Content Too Large',
  414: 'URI Too Long',
  415: 'Unsupported Media Type',
  416: 'Range Not Satisfiable',
  417: 'Expectation Failed',
  418: "I'm a teapot",
  421: 'Misdirected Request',
  422: 'Unprocessable Content',
  423: 'Locked',
  424: 'Failed Dependency',
  425: 'Too Early',
  426: 'Upgrade Required',
  428: 'Precondition Required',
  429: 'Too Many Requests',
  431: 'Request Header Fields Too Large',
  451: 'Unavailable For Legal Reasons',
  500: 'Internal Server Error',
  501: 'Not Implemented',
  502: 'Bad Gateway',
  503: 'Service Unavailable',
  504: 'Gateway Timeout',
  505: 'HTTP Version Not Supported',
  507: 'Insufficient Storage',
  511: 'Network Authentication Required',
};

/// Older reason phrases still found in exports.
const _formerReasonPhrases = {
  'moved temporarily': 302,
  'payload too large': 413,
  'request entity too large': 413,
  'request-uri too long': 414,
  'requested range not satisfiable': 416,
  'unprocessable entity': 422,
};

/// OpenAPI 3.1.1 (3.2.0 when a request uses QUERY or a non-3.1 method) for a
/// collection in any JSON version.
Map<String, Object?> postmanToOpenApi(
  Object? collection, {
  void Function(String message)? onWarning,
}) => _Converter(normalizePostmanCollection(collection), onWarning).convert();

class _Converter {
  _Converter(this.collection, this.onWarning)
    : secrets = Secrets.of(collection);

  final Map<String, Object?> collection;
  final void Function(String message)? onWarning;

  /// Never resolved (secret variables) and never output (secret values).
  final Secrets secrets;
  late final schemes = SecuritySchemes(onWarning: onWarning, secrets: secrets);

  /// Operations by `METHOD path`; webhooks by name.
  final _operations = <String, _Operation>{};
  final _webhooks = <String, _Operation>{};
  final _operationIds = <String>{};

  /// Every folder's tag with the folder description, in collection order.
  final _tagDescriptions = <String, String?>{};

  /// How many requests use each origin, and its server object.
  final _origins = <String, int>{};
  final _servers = <String, Map<String, Object?>>{};

  /// The first URL of each path shape (`/users/{}`): equivalent templates
  /// share its path and parameter names.
  final _templates = <String, ParsedUrl>{};

  /// Variables that requests use as their origin (`{{baseUrl}}/users`), the
  /// variables of whole-URL requests (`{{baseUrl}}`), and whether any other
  /// URL exists.
  final _originVariables = <String>{};
  final _wholeUrlVariables = <String>{};
  var _otherUrls = false;

  /// Whether a request whose whole URL is variable [name] is the root of
  /// that server: other requests use [name] as their origin, or it is the
  /// collection's only URL. Otherwise its value is an endpoint URL.
  bool _isServerVariable(String name) =>
      _originVariables.contains(name) ||
      (!_otherUrls &&
          _wholeUrlVariables.length == 1 &&
          _wholeUrlVariables.single == name);

  /// Records how the (non-webhook) requests under [items] use URLs.
  void _scanUrls(Object? items, {required bool top}) {
    for (final item in items is List ? items : const []) {
      if (item is! Map) continue;
      if (item['request'] != null) {
        final url = _requestMap(item['request'])?['url'];
        if (_variableUrl.firstMatch(_urlText(url)) case final whole?) {
          _wholeUrlVariables.add(whole[1]!);
        } else if (_hasUrl(url)) {
          _otherUrls = true;
          final origin = parseUrl(url).origin;
          if (_variableOrigin.firstMatch(origin) case final variable?) {
            _originVariables.add(variable[1]!);
          }
        }
      } else if (item['item'] is List &&
          !(top && '${item['name']}'.toLowerCase() == 'webhooks')) {
        _scanUrls(item['item'], top: false);
      }
    }
  }

  Map<String, Object?> convert() {
    final variables = _scope(const {}, collection['variable']);
    final security = schemes.requirement(collection['auth'], variables);
    _scanUrls(collection['item'], top: true);
    _walk(collection['item'], const [], collection['auth'], variables, false);

    final origin = _origins.isEmpty
        ? null
        : _origins.entries.reduce((a, b) => b.value > a.value ? b : a).key;
    var v32 = false;
    final paths = <String, Map<String, Object?>>{};
    for (final operation in _operations.values) {
      v32 |= _place(
        paths.putIfAbsent(operation.path, () => {}),
        operation.method,
        operation.toJson(
          security,
          operation.origin == origin ? null : _servers[operation.origin],
        ),
      );
    }
    final webhooks = <String, Map<String, Object?>>{};
    for (final MapEntry(key: name, value: operation) in _webhooks.entries) {
      v32 |= _place(
        webhooks[name] = {},
        operation.method,
        operation.toJson(security, null),
      );
    }
    return {
      'openapi': v32 ? '3.2.0' : '3.1.1',
      'info': _info(collection['info']),
      if (origin != null && origin.isNotEmpty) 'servers': [_servers[origin]],
      if (security != null && security.isNotEmpty) 'security': security,
      if (_tagDescriptions.isNotEmpty)
        'tags': [
          for (final MapEntry(key: tag, value: description)
              in _tagDescriptions.entries)
            {'name': tag, 'description': ?description},
        ],
      'paths': paths,
      if (webhooks.isNotEmpty) 'webhooks': webhooks,
      if (schemes.schemes.isNotEmpty)
        'components': {'securitySchemes': schemes.schemes},
    };
  }

  /// [variables] with an entity's own `variable` list, minus secrets.
  Map<String, String> _scope(Map<String, String> variables, Object? list) =>
      {...variables, ...collectVariables(list)}
        ..removeWhere((name, _) => secrets.variables.contains(name));

  void _walk(
    Object? items,
    List<String> folders,
    Object? auth,
    Map<String, String> variables,
    bool webhook,
  ) {
    for (final item in items is List ? items : const []) {
      if (item is! Map) {
        onWarning?.call('item ${jsonEncode(item)} is not an object; skipped');
        continue;
      }
      final name = item['name'] is String ? item['name'] as String : '';
      final scope = _scope(variables, item['variable']);
      if (item['request'] != null) {
        _request(item, name, folders, auth, scope, webhook);
      } else if (item['item'] is List) {
        final webhooks =
            !webhook && folders.isEmpty && name.toLowerCase() == 'webhooks';
        final path = webhooks ? folders : [...folders, name];
        if (_tag(path) case final tag?) {
          _tagDescriptions.putIfAbsent(
            tag,
            () => descriptionText(item['description']),
          );
        }
        _walk(
          item['item'],
          path,
          inheritAuth(auth, item['auth']),
          scope,
          webhook || webhooks,
        );
      } else {
        onWarning?.call("item '$name' has no request; skipped");
      }
    }
  }

  void _request(
    Map<Object?, Object?> item,
    String name,
    List<String> folders,
    Object? auth,
    Map<String, String> variables,
    bool webhook,
  ) {
    final request = _requestMap(item['request']);
    if (request == null) {
      onWarning?.call("request of '$name' is not an object or URL; skipped");
      return;
    }
    var method = '${request['method'] ?? ''}'.trim().toUpperCase();
    if (method.isEmpty) method = 'GET';
    if (!_token.hasMatch(method)) {
      onWarning?.call(
        "request '$name' has the invalid method '$method'; "
        'skipped',
      );
      return;
    }
    final requestUrl = webhook
        ? request['url']
        : _requestUrl(request['url'], variables, _isServerVariable);
    if (requestUrl == null) {
      onWarning?.call(
        "request '$name' has no URL (or a URL variable without a value); "
        'skipped',
      );
      return;
    }
    final url = parseUrl(requestUrl);
    final template = webhook
        ? url
        : _templates.putIfAbsent(
            url.path.replaceAll(RegExp(r'\{[^{}]*\}'), '{}'),
            () => url,
          );
    _Operation create() => _Operation(
      method: method,
      path: template.path,
      origin: url.origin,
      summary: name,
      description:
          descriptionText(request['description']) ??
          descriptionText(item['description']),
      operationId: _operationId(name, method, template.path),
      tag: _tag(folders),
      security: schemes.requirement(
        inheritAuth(auth, request['auth']),
        variables,
      ),
      onWarning: onWarning,
      secrets: secrets,
    );
    final _Operation operation;
    if (webhook) {
      final base = name.isEmpty ? method.toLowerCase() : name;
      var key = base;
      for (var i = 2; _webhooks.containsKey(key); i++) {
        key = '$base $i';
      }
      operation = _webhooks[key] = create();
    } else {
      _origins[url.origin] = (_origins[url.origin] ?? 0) + 1;
      _servers.putIfAbsent(
        url.origin,
        () => _server(url.origin, variables, secrets),
      );
      operation = _operations.putIfAbsent('$method ${template.path}', create);
    }

    operation.addRequest(
      url,
      request,
      variables,
      name,
      pathNames: template.pathParams,
    );
    for (final example
        in item['response'] is List ? item['response'] as List : const []) {
      if (example is Map) operation.addExample(example, variables);
    }
  }

  /// A unique ASCII camelCase operationId from [name], or from the method and
  /// path when the name has no ASCII letters.
  String _operationId(String name, String method, String path) {
    // A word mixing ASCII and other letters (Café) would lose part of itself.
    final mixed = _word
        .allMatches(name)
        .map((m) => m[0]!)
        .any((w) => !_asciiWord.hasMatch(w) && w.contains(RegExp('[A-Za-z]')));
    var id = mixed ? '' : _camelCase(name);
    if (!id.contains(RegExp('[A-Za-z]'))) {
      id = _camelCase('$method $path');
    } else if (id.startsWith(RegExp('[0-9]'))) {
      id = _camelCase('$method $id');
    }
    var unique = id;
    for (var i = 2; !_operationIds.add(unique); i++) {
      unique = '$id$i';
    }
    return unique;
  }
}

/// A URL that is one variable, optionally with a query.
final _variableUrl = RegExp(r'^\s*\{\{([^{}]+)\}\}\s*(\?.*)?$');

/// An origin that is one variable (`{{baseUrl}}`).
final _variableOrigin = RegExp(r'^\{\{([^{}]+)\}\}$');

/// The text of a URL (a string, or an object's `raw`).
String _urlText(Object? url) => switch (url) {
  final String raw => raw,
  {'raw': final String raw} => raw,
  _ => '',
};

bool _hasUrl(Object? url) =>
    _urlText(url).trim().isNotEmpty ||
    url is Map && (url['host'] != null || url['path'] != null);

/// The request [url] to convert. A URL that is one variable stays as it is
/// when [isServer] says the variable is a server (path `/`), else it is
/// replaced by the variable's endpoint URL. Null when there is no URL, or
/// that variable has no value (the path cannot be known).
Object? _requestUrl(
  Object? url,
  Map<String, String> variables,
  bool Function(String variable) isServer,
) {
  if (!_hasUrl(url)) return null;
  final match = _variableUrl.firstMatch(_urlText(url));
  if (match == null || isServer(match[1]!)) return url;
  final value = resolveVariable(match[1]!, variables)?.trim() ?? '';
  if (value.isEmpty) return null;
  final resolved = '$value${match[2] ?? ''}';
  return url is Map
      ? {
          ...url,
          'raw': resolved,
          'protocol': null,
          'host': null,
          'port': null,
          'path': null,
        }
      : resolved;
}

/// A v2.1 request (a URL string means GET), or null.
Map<Object?, Object?>? _requestMap(Object? request) => switch (request) {
  final String url => {'url': url, 'method': 'GET'},
  final Map<Object?, Object?> map => map,
  _ => null,
};

String? _tag(List<String> folders) {
  final names = [
    for (final folder in folders)
      if (folder.trim().isNotEmpty) folder.trim(),
  ];
  return names.isEmpty ? null : names.join(' / ');
}

/// Words: runs of letters, marks and digits of any script.
final _word = RegExp(r'[\p{L}\p{M}\p{N}]+', unicode: true);
final _asciiWord = RegExp(r'^[A-Za-z0-9]+$');

/// The camelCase of [text]'s ASCII words (other words are dropped whole).
String _camelCase(String text) {
  final words = [
    for (final match in _word.allMatches(text))
      if (_asciiWord.hasMatch(match[0]!))
        ...match[0]!
            .replaceAllMapped(
              RegExp('([a-z0-9])([A-Z])'),
              (m) => '${m[1]} ${m[2]}',
            )
            .split(' '),
  ];
  return [
    for (final (i, word) in words.indexed)
      i == 0
          ? word.toLowerCase()
          : word[0].toUpperCase() + word.substring(1).toLowerCase(),
  ].join();
}

/// A server for [origin]; `{{name}}` becomes a server variable whose default
/// is the resolved value (without userinfo, empty when it leaks a secret).
Map<String, Object?> _server(
  String origin,
  Map<String, String> variables,
  Secrets secrets,
) {
  if (origin.isEmpty) return {'url': '/'};
  final names = <String>[];
  final url = origin.replaceAllMapped(variableReference, (m) {
    names.add(m[1]!);
    return '{${m[1]}}';
  });
  String defaultValue(String name) {
    final value = withoutUserinfo(resolveVariable(name, variables) ?? '');
    return secrets.leaks(value) ? '' : value;
  }

  return {
    'url': url,
    if (names.isNotEmpty)
      'variables': {
        for (final name in names) name: {'default': defaultValue(name)},
      },
  };
}

Map<String, Object?> _info(Object? info) {
  final map = info is Map ? info : const {};
  final name = map['name'];
  return {
    'title': name is String && name.isNotEmpty ? name : 'Postman collection',
    'description': ?descriptionText(map['description']),
    'version': switch (map['version']) {
      final String version when version.isNotEmpty => version,
      final num version => '$version',
      {
            'major': final int major,
            'minor': final int minor,
            'patch': final int patch,
          } &&
          final version =>
        switch (version['identifier']) {
          final String identifier when identifier.isNotEmpty =>
            '$major.$minor.$patch-$identifier',
          _ => '$major.$minor.$patch',
        },
      _ => '1.0.0',
    },
  };
}

/// Puts [operation] under [method] in [pathItem]; true when that needs 3.2.
bool _place(
  Map<String, Object?> pathItem,
  String method,
  Map<String, Object?> operation,
) {
  if (_methods31.contains(method)) {
    pathItem[method.toLowerCase()] = operation;
    return false;
  }
  if (method == 'QUERY') {
    pathItem['query'] = operation;
  } else {
    final additional = pathItem['additionalOperations'] ??= <String, Object?>{};
    (additional as Map<String, Object?>)[method] = operation;
  }
  return true;
}

/// [value] of the parameter or header [name] with variables substituted and
/// URL userinfo removed, as an example; null when empty, still referencing a
/// variable, or a credential.
String? _example(
  String name,
  Object? value,
  Map<String, String> variables,
  Secrets secrets,
) {
  if (value is! String && value is! num && value is! bool) return null;
  final text = withoutUserinfo(substituteVariables('$value', variables));
  return text.isEmpty || text.contains('{{') || secrets.hides(name, text)
      ? null
      : text;
}

/// The response code of a saved example: `code`, else the reason phrase (or
/// leading number) in `status`, else `default`.
String _statusCode(Map<Object?, Object?> example) {
  final code = switch (example['code']) {
    final int code => code,
    final String code => int.tryParse(code),
    _ => null,
  };
  if (code != null && code >= 100 && code <= 599) return '$code';
  if (example['status'] case final String status) {
    if (RegExp(r'^\s*([1-5]\d\d)\b').firstMatch(status) case final match?) {
      return match[1]!;
    }
    final phrase = status.trim().toLowerCase();
    for (final MapEntry(:key, :value) in _reasonPhrases.entries) {
      if (value.toLowerCase() == phrase) return '$key';
    }
    if (_formerReasonPhrases[phrase] case final code?) return '$code';
  }
  return 'default';
}

/// One OpenAPI operation, merged from every request with its method and
/// path (or one webhook).
class _Operation {
  _Operation({
    required this.method,
    required this.path,
    required this.origin,
    required this.summary,
    required this.description,
    required this.operationId,
    required this.tag,
    required this.security,
    required this.onWarning,
    required this.secrets,
  }) : body = RequestBodies(onWarning: onWarning, secrets: secrets);

  final String method;
  final String path;
  final String origin;
  final String summary;
  final String? description;
  final String operationId;
  final String? tag;
  final List<Map<String, List<String>>>? security;
  final void Function(String message)? onWarning;
  final Secrets secrets;
  final RequestBodies body;
  final _parameters = <String, _Parameter>{};
  final _responses = <String, _Response>{};

  _Parameter _parameter(
    String location,
    String name, [
    String type = 'string',
  ]) => _parameters.putIfAbsent(
    '$location ${location == 'header' ? name.toLowerCase() : name}',
    () => _Parameter(name, location, type),
  );

  /// Adds the parameters and body of a request named [name]. Its path
  /// parameters take [pathNames] (the operation template's, by position);
  /// saved examples give none.
  void addRequest(
    ParsedUrl url,
    Map<Object?, Object?> request,
    Map<String, String> variables,
    String name, {
    List<String> pathNames = const [],
  }) {
    for (final (i, param) in url.pathParams.indexed.take(pathNames.length)) {
      final variable = url.variables
          .where((variable) => variable['key'] == param)
          .firstOrNull;
      final type = switch (variable?['type']) {
        'number' => 'number',
        'boolean' => 'boolean',
        _ => 'string',
      };
      _parameter('path', pathNames[i], type)
        ..describe(variable?['description'])
        ..sample(
          _example(param, variable?['value'], variables, secrets) ??
              _example(param, '{{$param}}', variables, secrets),
        );
    }

    final query = <String, List<Map<Object?, Object?>>>{};
    for (final entry in url.query) {
      if (entry['key'] case final String key when key.isNotEmpty) {
        (query[key] ??= []).add(entry);
      }
    }
    for (final MapEntry(:key, value: entries) in query.entries) {
      final parameter = _parameter('query', key);
      parameter.array |= entries.length > 1;
      for (final entry in entries) {
        parameter.describe(entry['description']);
      }
      final examples = [
        for (final entry in entries)
          ?_example(key, entry['value'], variables, secrets),
      ];
      if (examples.isNotEmpty) {
        parameter.sample(entries.length > 1 ? examples : examples.first);
      }
    }

    for (final header in headerEntries(request['header'])) {
      final key = header['key'];
      if (key is! String || key.isEmpty) continue;
      final lower = key.toLowerCase();
      if (lower == 'cookie') {
        for (final cookie in '${header['value'] ?? ''}'.split(';')) {
          final cookieName = cookie.split('=').first.trim();
          if (cookieName.isNotEmpty) _parameter('cookie', cookieName);
        }
      } else if (_describedHeaders.contains(lower) ||
          _transportHeaders.contains(lower)) {
        continue;
      } else if (!_token.hasMatch(key)) {
        onWarning?.call(
          "header '$key' of '$name' is not a valid header name; skipped",
        );
      } else {
        _parameter('header', key)
          ..describe(header['description'])
          ..sample(_example(key, header['value'], variables, secrets));
      }
    }

    body.add(
      request['body'],
      headers: request['header'],
      variables: variables,
      name: name,
    );
  }

  /// Adds a saved example: its response, and its `originalRequest`'s query,
  /// headers and body.
  void addExample(
    Map<Object?, Object?> example,
    Map<String, String> variables,
  ) {
    final name = example['name'] is String && example['name'] != ''
        ? example['name'] as String
        : 'Example';
    if (_requestMap(example['originalRequest']) case final request?) {
      addRequest(parseUrl(request['url']), request, variables, name);
    }

    final code = _statusCode(example);
    final response = _responses.putIfAbsent(code, _Response.new);
    response.description ??= switch (example['status']) {
      final String status when status.trim().isNotEmpty => status,
      _ =>
        _reasonPhrases[int.tryParse(code)] ??
            (code == 'default' ? 'Default response' : 'Response'),
    };
    for (final header in headerEntries(example['header'])) {
      final key = header['key'];
      if (key is! String || !_token.hasMatch(key)) continue;
      final lower = key.toLowerCase();
      if (lower == 'content-type' || _transportHeaders.contains(lower)) {
        continue;
      }
      response.headers.putIfAbsent(
        lower,
        () => (key, _example(key, header['value'], variables, secrets)),
      );
    }
    if (example['body'] case final String text) {
      // v1 previews have no json language: JSON shows as javascript or text.
      final language = example['_postman_previewlanguage'];
      final sniff = const {
        'javascript',
        'text',
      }.contains('$language'.toLowerCase());
      addRawContent(
        response.content,
        text,
        mediaType:
            contentType(example['header']) ??
            (sniff ? null : languageMediaType(language)),
        textMediaType: languageMediaType(language) ?? 'text/plain',
        variables: variables,
        name: name,
        onWarning: onWarning,
        secrets: secrets,
      );
    }
  }

  Map<String, Object?> toJson(
    List<Map<String, List<String>>>? documentSecurity,
    Map<String, Object?>? server,
  ) => {
    if (tag != null) 'tags': [tag],
    'summary': summary,
    'description': ?description,
    'operationId': operationId,
    if (_parameters.isNotEmpty)
      'parameters': [
        for (final parameter in _parameters.values) parameter.toJson(),
      ],
    'requestBody': ?body.toJson(),
    'responses': _responses.isEmpty
        ? {
            'default': {'description': 'Default response'},
          }
        : {
            for (final MapEntry(:key, :value) in _responses.entries)
              key: value.toJson(),
          },
    if (jsonEncode(security ?? const []) !=
        jsonEncode(documentSecurity ?? const []))
      'security': security ?? const [],
    if (server != null) 'servers': [server],
  };
}

class _Parameter {
  _Parameter(this.name, this.location, this.type);

  final String name;
  final String location;
  final String type;
  String? description;
  bool array = false;
  Object? example;

  void describe(Object? text) => description ??= descriptionText(text);

  /// Keeps the first example; path examples take their schema's type.
  void sample(Object? value) => example ??= switch ((type, value)) {
    ('number', final String text) => num.tryParse(text) ?? text,
    ('boolean', 'true') => true,
    ('boolean', 'false') => false,
    _ => value,
  };

  Map<String, Object?> toJson() => {
    'name': name,
    'in': location,
    'description': ?description,
    if (location == 'path') 'required': true,
    'schema': array
        ? {
            'type': 'array',
            'items': {'type': type},
          }
        : {'type': type},
    if (array) 'explode': true,
    'example': ?(array && example != null && example is! List
        ? [example]
        : example),
  };
}

class _Response {
  String? description;

  /// Headers by lower-case name: the first spelling and example.
  final headers = <String, (String, String?)>{};
  final content = <String, MediaContent>{};

  Map<String, Object?> toJson() => {
    'description': description,
    if (headers.isNotEmpty)
      'headers': {
        for (final (name, example) in headers.values)
          name: {
            'schema': {'type': 'string'},
            'example': ?example,
          },
      },
    if (content.isNotEmpty)
      'content': {
        for (final MapEntry(:key, :value) in content.entries)
          key: value.toJson(),
      },
  };
}
