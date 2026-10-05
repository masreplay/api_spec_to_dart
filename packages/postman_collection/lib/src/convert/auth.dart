import 'dart:convert';

import 'url.dart';
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

/// Auth attributes (of any type) that configure a flow and never hold a
/// secret. Every other attribute's value is a secret. Only apikey `key`/`in`
/// and oauth2 grant type, URLs and scopes are ever read.
const _configuration = {
  // apikey
  'key', 'in',
  // oauth2
  'grant_type', 'authUrl', 'accessTokenUrl', 'refreshTokenUrl', 'scope',
  'redirect_uri', 'audience', 'resource', 'tokenName', 'headerPrefix',
  'addTokenTo', 'client_authentication', 'tokenType', 'challengeAlgorithm',
  // digest, oauth1, hawk, jwt, awsv4, ntlm, edgegrid settings
  'algorithm', 'qop', 'realm', 'nonceCount', 'signatureMethod', 'version',
  'region', 'service', 'domain', 'workstation', 'baseURL', 'headersToSign',
  'maxBodySize', 'queryParamKey', 'header', 'payload',
};

/// Names (of parameters, headers, JSON keys) and values that carry
/// credentials outside auth: tokens, keys, sessions, cookies, signatures.
final _credentialName = RegExp(
  'token|jwt|secret|passw|api[-_]?key|session|signature|credential|cookie|'
  'authoriz|auth(?!or)',
  caseSensitive: false,
);
final _credentialValue = RegExp(
  r'^(bearer |basic |ey[\w-]+\.[\w-]+\.)',
  caseSensitive: false,
);

/// What one collection must never leak into OpenAPI.
class Secrets {
  const Secrets.none() : variables = const {}, values = const {};

  Secrets._(this.variables, this.values);

  /// The secrets of [collection]: variables used by secret auth attributes
  /// (at every level, saved examples included) or typed `secret`, and the
  /// literal values of those attributes and variables.
  factory Secrets.of(Object? collection) {
    final variables = <String>{};
    final values = <String>{};
    final variableLists = <List<Object?>>[];
    void walk(Object? node) {
      if (node is List) {
        node.forEach(walk);
        return;
      }
      if (node is! Map) return;
      if (node['auth'] case final Map<Object?, Object?> auth) {
        for (final MapEntry(key: type, value: attributes) in auth.entries) {
          if (type == 'type') continue;
          for (final MapEntry(:key, :value) in _attributes(
            attributes,
          ).entries) {
            if (_configuration.contains(key)) continue;
            if (_text(value) case final text?) {
              values.add(text);
              variables.addAll(
                variableReference.allMatches(text).map((m) => m[1]!),
              );
            }
          }
        }
      }
      if (node['variable'] case final List<Object?> list) {
        variableLists.add(list);
      }
      node.values.forEach(walk);
    }

    walk(collection);
    for (final variable in variableLists.expand((list) => list)) {
      if (variable is! Map) continue;
      final name = variable['key'] ?? variable['id'];
      if (name is! String) continue;
      if (variable['type'] == 'secret') variables.add(name);
      if (variables.contains(name)) {
        if (_text(variable['value']) case final text?) values.add(text);
      }
    }
    return Secrets._(variables, values);
  }

  /// Variable names that stay unresolved.
  final Set<String> variables;

  /// Literal secret values.
  final Set<String> values;

  /// Whether [text] (an example or default) is or contains a credential: a
  /// bearer or basic credential, a JWT, or a literal secret. Secrets shorter
  /// than four characters count only when equal, so they cannot match
  /// everywhere.
  bool leaks(String text) =>
      _credentialValue.hasMatch(text) ||
      values.any(
        (secret) => secret.length < 4 ? text == secret : text.contains(secret),
      );

  /// Whether the example [text] of [name] (a parameter, header or JSON key)
  /// would leak a credential.
  bool hides(String name, String text) =>
      _credentialName.hasMatch(name) || leaks(text);

  /// [example] without credentials: subtrees under credential-named keys and
  /// leaking strings are dropped, and URLs lose their userinfo. Inferred
  /// schemas still see every field.
  Object? scrub(Object? example) => switch (example) {
    final Map<Object?, Object?> map => {
      for (final MapEntry(:key, :value) in map.entries)
        if (!_credentialName.hasMatch('$key') &&
            !(value is String && leaks(value)))
          key: scrub(value),
    },
    final List<Object?> list => [
      for (final item in list)
        if (!(item is String && leaks(item))) scrub(item),
    ],
    final String text => withoutUserinfo(text),
    _ => example,
  };
}

/// A non-empty string or number as text.
String? _text(Object? value) => switch (value) {
  final String text when text.isNotEmpty => text,
  final num number => '$number',
  _ => null,
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
  SecuritySchemes({this.onWarning, this.secrets = const Secrets.none()});

  final void Function(String message)? onWarning;
  final Secrets secrets;

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
    if (type.trim().isEmpty) {
      if (_warnedTypes.add('')) {
        onWarning?.call('auth without a type is treated as no auth');
      }
      return null;
    }
    if (!_schemaTypes.contains(type) && _warnedTypes.add(type)) {
      onWarning?.call(
        "auth type '$type' is not in the Postman v2.1 schema; "
        "declared as http '${type == 'jwt' ? 'bearer' : type}'",
      );
    }
    final attributes = _attributes(auth[type]);
    String text(String key) {
      final text = withoutUserinfo(
        substituteVariables('${attributes[key] ?? ''}', variables),
      );
      return secrets.leaks(text) ? '' : text;
    }

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
