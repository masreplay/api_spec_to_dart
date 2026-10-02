import 'dart:convert';

import 'variables.dart';

/// `http` schemes by Postman auth type, named as the `Authorization` header
/// names them.
const _httpSchemes = {
  'basic': 'basic',
  'bearer': 'bearer',
  'digest': 'digest',
  'oauth1': 'OAuth',
  'hawk': 'Hawk',
  'awsv4': 'AWS4-HMAC-SHA256',
  'ntlm': 'NTLM',
  'edgegrid': 'EG1-HMAC-SHA256',
};

/// The auth types of the official v2.1 schema (besides `noauth`).
const _schemaTypes = {
  'apikey',
  'awsv4',
  'basic',
  'bearer',
  'digest',
  'edgegrid',
  'hawk',
  'oauth1',
  'oauth2',
  'ntlm',
};

/// The only attributes ever read: configuration, never secrets.
const _configuration = {
  'apikey': {'key', 'in'},
  'oauth2': {
    'grant_type',
    'authUrl',
    'accessTokenUrl',
    'refreshTokenUrl',
    'scope',
  },
};

/// Names (of parameters, headers, JSON keys) and values that carry
/// credentials outside auth: tokens, keys, sessions, signatures.
final _credentialName = RegExp(
  'token|jwt|secret|passw|api[-_]?key|session|signature|credential|auth(?!or)',
  caseSensitive: false,
);
final _credentialValue = RegExp(
  r'^(bearer |basic |ey[\w-]+\.[\w-]+\.)',
  caseSensitive: false,
);

/// Whether the string [value] of [name] is a credential, so never an
/// example.
bool isCredential(String name, String value) =>
    _credentialName.hasMatch(name) || _credentialValue.hasMatch(value);

/// An example [json] without credential strings (object entries and list
/// items). Inferred schemas still see every field.
Object? withoutCredentials(Object? json) => switch (json) {
  final Map<Object?, Object?> map => {
    for (final MapEntry(:key, :value) in map.entries)
      if (!(value is String && isCredential('$key', value)))
        key: withoutCredentials(value),
  },
  final List<Object?> list => [
    for (final item in list)
      if (!(item is String && isCredential('', item))) withoutCredentials(item),
  ],
  _ => json,
};

/// The auth that applies to an entity: its own, unless missing, null or
/// `inherit`, else [inherited].
Object? inheritAuth(Object? inherited, Object? own) =>
    own is Map && own['type'] is String && own['type'] != 'inherit'
    ? own
    : inherited;

/// The security schemes of one document, built from Postman auth objects.
/// Secret attribute values are never read.
class SecuritySchemes {
  SecuritySchemes({this.onWarning});

  final void Function(String message)? onWarning;

  /// `components.securitySchemes`; identical schemes share a name.
  final schemes = <String, Map<String, Object?>>{};

  final _warnedTypes = <String>{};

  /// The OpenAPI `security` for [auth] (already inherited): empty for
  /// `noauth`, null when there is no auth.
  List<Map<String, List<String>>>? requirement(
    Object? auth, [
    Map<String, String> variables = const {},
  ]) {
    if (auth is! Map) return null;
    final type = auth['type'];
    if (type is! String || type == 'inherit') return null;
    if (type == 'noauth') return const [];
    if (!_schemaTypes.contains(type) && _warnedTypes.add(type)) {
      onWarning?.call(
        "auth type '$type' is not in the Postman v2.1 schema; "
        "declared as http '${type == 'jwt' ? 'bearer' : type}'",
      );
    }
    final attributes = _attributes(auth[type]);
    String text(String key) =>
        substituteVariables('${attributes[key] ?? ''}', variables);
    final (scheme, scopes) = switch (type) {
      'apikey' => (
        {
          'type': 'apiKey',
          'name': text('key'),
          'in': text('in') == 'query' ? 'query' : 'header',
        },
        const <String>[],
      ),
      'oauth2' => _oauth2(text),
      'jwt' => (
        {'type': 'http', 'scheme': 'bearer', 'bearerFormat': 'JWT'},
        const <String>[],
      ),
      _ => (
        {'type': 'http', 'scheme': _httpSchemes[type] ?? type},
        const <String>[],
      ),
    };
    if (scheme['name'] == '') {
      onWarning?.call('apikey auth without a key name is skipped');
      return null;
    }
    return [
      {_name(type, scheme): scopes},
    ];
  }

  String _name(String type, Map<String, Object?> scheme) {
    final base = type.replaceAll(RegExp(r'[^A-Za-z0-9._-]'), '_');
    final json = jsonEncode(scheme);
    var name = base;
    for (var i = 2; schemes.containsKey(name); i++) {
      if (jsonEncode(schemes[name]) == json) return name;
      name = '${base}_$i';
    }
    schemes[name] = scheme;
    return name;
  }
}

(Map<String, Object?>, List<String>) _oauth2(String Function(String) text) {
  final scopes = [
    for (final scope in text('scope').split(RegExp(r'\s+')))
      if (scope.isNotEmpty) scope,
  ];
  final authorizationUrl = {'authorizationUrl': text('authUrl')};
  final tokenUrl = {'tokenUrl': text('accessTokenUrl')};
  final rest = {
    if (text('refreshTokenUrl') case final url when url.isNotEmpty)
      'refreshUrl': url,
    'scopes': {for (final scope in scopes) scope: ''},
  };
  final flows = switch (text('grant_type')) {
    'client_credentials' => {
      'clientCredentials': {...tokenUrl, ...rest},
    },
    'password_credentials' => {
      'password': {...tokenUrl, ...rest},
    },
    'implicit' => {
      'implicit': {...authorizationUrl, ...rest},
    },
    _ => {
      'authorizationCode': {...authorizationUrl, ...tokenUrl, ...rest},
    },
  };
  return ({'type': 'oauth2', 'flows': flows}, scopes);
}

/// Auth attributes by key: v2.1 `[{key, value}]` lists, or v2.0 objects.
Map<String, Object?> _attributes(Object? attributes) => switch (attributes) {
  final List<Object?> list => {
    for (final attribute in list)
      if (attribute case {'key': final String key}) key: attribute['value'],
  },
  final Map<Object?, Object?> map => {
    for (final MapEntry(:key, :value) in map.entries) '$key': value,
  },
  _ => const {},
};

/// Variables referenced by secret auth attributes anywhere in [node]. They
/// stay unresolved, so their values cannot reach examples.
Set<String> secretVariableNames(Object? node) {
  final names = <String>{};
  void walk(Object? node) {
    if (node is List) {
      node.forEach(walk);
      return;
    }
    if (node is! Map) return;
    if (node['auth'] case final Map<Object?, Object?> auth) {
      for (final MapEntry(key: type, value: attributes) in auth.entries) {
        final configuration = _configuration[type] ?? const {};
        for (final MapEntry(:key, :value) in _attributes(attributes).entries) {
          if (!configuration.contains(key) && value is String) {
            names.addAll(variableReference.allMatches(value).map((m) => m[1]!));
          }
        }
      }
    }
    node.values.forEach(walk);
  }

  walk(node);
  return names;
}
