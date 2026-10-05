import 'dart:convert';

import 'package:postman_collection/src/convert/auth.dart';
import 'package:test/test.dart';

/// A v2.1 auth object.
Map<String, Object?> auth(
  String type, [
  Map<String, Object?> attributes = const {},
]) => {
  'type': type,
  type: [
    for (final MapEntry(:key, :value) in attributes.entries)
      {'key': key, 'value': value, 'type': 'string'},
  ],
};

void main() {
  late List<String> warnings;
  late SecuritySchemes schemes;
  setUp(() {
    warnings = [];
    schemes = SecuritySchemes(onWarning: warnings.add);
  });

  test('basic, bearer and digest use http', () {
    expect(schemes.requirement(auth('basic', {'username': 'u'})), [
      {'basic': <String>[]},
    ]);
    expect(schemes.requirement(auth('bearer', {'token': 't'})), [
      {'bearer': <String>[]},
    ]);
    expect(schemes.requirement(auth('digest', {'realm': 'r'})), [
      {'digest': <String>[]},
    ]);
    expect(schemes.schemes, {
      'basic': {'type': 'http', 'scheme': 'basic'},
      'bearer': {'type': 'http', 'scheme': 'bearer'},
      'digest': {'type': 'http', 'scheme': 'digest'},
    });
    expect(warnings, isEmpty);
  });

  test('jwt is bearer with bearerFormat JWT and warns once (not in the '
      'schema)', () {
    expect(schemes.requirement(auth('jwt', {'secret': 's'})), [
      {'jwt': <String>[]},
    ]);
    schemes.requirement(auth('jwt', {'secret': 's'}));
    expect(schemes.schemes['jwt'], {
      'type': 'http',
      'scheme': 'bearer',
      'bearerFormat': 'JWT',
    });
    expect(warnings, [contains("'jwt'")]);
  });

  test('apikey in a header or the query; names resolve variables', () {
    schemes.requirement(auth('apikey', {'key': 'X-Api-Key', 'value': 'v'}));
    schemes.requirement(
      auth('apikey', {'key': '{{keyName}}', 'value': 'v', 'in': 'query'}),
      {'keyName': 'api_key'},
    );
    expect(schemes.schemes, {
      'apikey': {'type': 'apiKey', 'name': 'X-Api-Key', 'in': 'header'},
      'apikey_2': {'type': 'apiKey', 'name': 'api_key', 'in': 'query'},
    });
  });

  test('an apikey without a name is skipped with a warning', () {
    expect(schemes.requirement(auth('apikey', {'value': 'v'})), isNull);
    expect(warnings, hasLength(1));
  });

  test('oauth2 maps grant types to flows, URLs and scopes', () {
    final config = {
      'authUrl': 'https://auth.example.com/authorize',
      'accessTokenUrl': '{{tokenUrl}}',
      'refreshTokenUrl': 'https://auth.example.com/refresh',
      'scope': 'read  write',
    };
    final variables = {'tokenUrl': 'https://auth.example.com/token'};
    expect(
      schemes.requirement(
        auth('oauth2', {...config, 'grant_type': 'authorization_code'}),
        variables,
      ),
      [
        {
          'oauth2': ['read', 'write'],
        },
      ],
    );
    for (final grant in [
      'authorization_code_with_pkce',
      'client_credentials',
      'password_credentials',
      'implicit',
    ]) {
      schemes.requirement(
        auth('oauth2', {...config, 'grant_type': grant}),
        variables,
      );
    }
    schemes.requirement(auth('oauth2', {'scope': ''}));
    const scopes = {'read': '', 'write': ''};
    expect(schemes.schemes, {
      'oauth2': {
        'type': 'oauth2',
        'flows': {
          'authorizationCode': {
            'authorizationUrl': 'https://auth.example.com/authorize',
            'tokenUrl': 'https://auth.example.com/token',
            'refreshUrl': 'https://auth.example.com/refresh',
            'scopes': scopes,
          },
        },
      },
      'oauth2_2': {
        'type': 'oauth2',
        'flows': {
          'clientCredentials': {
            'tokenUrl': 'https://auth.example.com/token',
            'refreshUrl': 'https://auth.example.com/refresh',
            'scopes': scopes,
          },
        },
      },
      'oauth2_3': {
        'type': 'oauth2',
        'flows': {
          'password': {
            'tokenUrl': 'https://auth.example.com/token',
            'refreshUrl': 'https://auth.example.com/refresh',
            'scopes': scopes,
          },
        },
      },
      'oauth2_4': {
        'type': 'oauth2',
        'flows': {
          'implicit': {
            'authorizationUrl': 'https://auth.example.com/authorize',
            'refreshUrl': 'https://auth.example.com/refresh',
            'scopes': scopes,
          },
        },
      },
      'oauth2_5': {
        'type': 'oauth2',
        'flows': {
          'authorizationCode': {
            'authorizationUrl': '',
            'tokenUrl': '',
            'scopes': <String, String>{},
          },
        },
      },
    });
  });

  test('oauth1, hawk, awsv4, ntlm and edgegrid use http with their scheme '
      'name', () {
    for (final type in ['oauth1', 'hawk', 'awsv4', 'ntlm', 'edgegrid']) {
      schemes.requirement(auth(type));
    }
    expect(schemes.schemes, {
      'oauth1': {'type': 'http', 'scheme': 'OAuth'},
      'hawk': {'type': 'http', 'scheme': 'Hawk'},
      'awsv4': {'type': 'http', 'scheme': 'AWS4-HMAC-SHA256'},
      'ntlm': {'type': 'http', 'scheme': 'NTLM'},
      'edgegrid': {'type': 'http', 'scheme': 'EG1-HMAC-SHA256'},
    });
    expect(warnings, isEmpty);
  });

  test('an empty type is no auth and warns once', () {
    expect(schemes.requirement({'type': ''}), isNull);
    expect(schemes.requirement({'type': ' '}), isNull);
    expect(schemes.schemes, isEmpty);
    expect(warnings, hasLength(1));
  });

  test('an unknown type uses http with its name and warns', () {
    expect(schemes.requirement(auth('asap', {'kid': 'k'})), [
      {'asap': <String>[]},
    ]);
    expect(schemes.schemes['asap'], {'type': 'http', 'scheme': 'asap'});
    expect(warnings, [contains("'asap'")]);
  });

  test('identical schemes are shared; noauth is an empty requirement; no '
      'auth is null', () {
    schemes.requirement(auth('bearer', {'token': 'a'}));
    schemes.requirement(auth('bearer', {'token': 'b'}));
    expect(schemes.schemes.keys, ['bearer']);
    expect(schemes.requirement(auth('noauth')), isEmpty);
    expect(schemes.requirement(null), isNull);
    expect(schemes.requirement({'type': 'inherit'}), isNull);
    expect(schemes.requirement('junk'), isNull);
  });

  test('inheritance: collection → folder → request; noauth stops it', () {
    final collection = auth('bearer');
    final folder = inheritAuth(collection, null);
    expect(inheritAuth(folder, null), collection);
    expect(inheritAuth(folder, {'type': 'inherit'}), collection);
    final basic = auth('basic');
    expect(inheritAuth(inheritAuth(collection, basic), null), basic);
    final noauth = inheritAuth(folder, {'type': 'noauth'});
    expect(schemes.requirement(inheritAuth(noauth, null)), isEmpty);
  });

  test('v2.0 attribute objects are read too', () {
    schemes.requirement({
      'type': 'apikey',
      'apikey': {'key': 'X-Key', 'in': 'query', 'value': 'v'},
    });
    expect(schemes.schemes['apikey'], {
      'type': 'apiKey',
      'name': 'X-Key',
      'in': 'query',
    });
  });

  test('no secret attribute value is copied', () {
    const secrets = {
      'basic': ['username', 'password'],
      'bearer': ['token'],
      'digest': ['username', 'password', 'nonce', 'opaque'],
      'jwt': ['secret', 'privateKey', 'payload'],
      'apikey': ['value'],
      'oauth2': [
        'accessToken',
        'refreshToken',
        'clientId',
        'clientSecret',
        'password',
        'username',
        'code_verifier',
      ],
      'oauth1': ['consumerKey', 'consumerSecret', 'token', 'tokenSecret'],
      'hawk': ['authId', 'authKey'],
      'awsv4': ['accessKey', 'secretKey', 'sessionToken'],
      'ntlm': ['username', 'password'],
      'edgegrid': ['accessToken', 'clientToken', 'clientSecret'],
      'asap': ['privateKey'],
    };
    final requirements = [
      for (final MapEntry(key: type, value: keys) in secrets.entries)
        schemes.requirement(
          auth(type, {
            for (final key in keys) key: 'SECRET-$type-$key',
            if (type == 'apikey') 'key': 'X-Api-Key',
            if (type == 'oauth2') 'grant_type': 'password_credentials',
          }),
        ),
    ];
    final output = jsonEncode([schemes.schemes, requirements]);
    expect(output, isNot(contains('SECRET')));
  });

  test('credentials are recognised by name or shape', () {
    const none = Secrets.none();
    expect(none.hides('X-Auth-Token', 'x'), isTrue);
    expect(none.hides('api_key', 'x'), isTrue);
    expect(none.hides('X-Authorization', 'x'), isTrue);
    expect(none.hides('Proxy-Authorization', 'x'), isTrue);
    expect(none.hides('Set-Cookie', 'x'), isTrue);
    expect(none.hides('author', 'tolkien'), isFalse);
    expect(none.hides('authority', 'x'), isFalse);
    expect(none.hides('X-Forwarded', 'Bearer x'), isTrue);
    expect(none.hides('note', 'eyJhbGciOi.eyJzdWIi.c2ln'), isTrue);
    expect(none.hides('note', 'hello'), isFalse);
  });

  test('examples drop subtrees under credential names and credential '
      'strings, and URLs lose their userinfo', () {
    expect(
      const Secrets.none().scrub({
        'email': 'a@b.c',
        'password': 'x',
        'token': {'access': 'x', 'expires': 3600},
        'session_timeout': 30,
        'tokens': ['x'],
        'ids': ['eyJx.eyJy.z', 'ok'],
        'author': 'me',
        'callback': 'https://u:p@ss@hooks.x.io/cb',
      }),
      {
        'email': 'a@b.c',
        'ids': ['ok'],
        'author': 'me',
        'callback': 'https://hooks.x.io/cb',
      },
    );
    expect(const Secrets.none().scrub('text'), 'text');
  });

  test('secrets: variables of secret attributes or typed secret, and the '
      'literal values of secret attributes at every level', () {
    final secrets = Secrets.of({
      'auth': auth('bearer', {'token': 'Bearer {{token}}'}),
      'variable': [
        {'key': 'token', 'value': 'SECRET-variable'},
        {'key': 'session', 'value': 'SECRET-typed', 'type': 'secret'},
        {'key': 'baseUrl', 'value': 'https://x.io'},
      ],
      'item': [
        {
          'request': {
            'auth': auth('apikey', {
              'key': '{{headerName}}',
              'value': '{{apiKey}}',
            }),
          },
          'response': [
            {
              'originalRequest': {
                'auth': auth('basic', {
                  'username': 'abc',
                  'password': 'SECRET-original',
                }),
              },
            },
          ],
        },
        {
          'auth': {
            'type': 'oauth2',
            'oauth2': [
              {'key': 'accessTokenUrl', 'value': '{{tokenUrl}}'},
              {'key': 'redirect_uri', 'value': '{{baseUrl}}/callback'},
              {'key': 'clientSecret', 'value': '{{clientSecret}}'},
              {'key': 'useBrowser', 'value': true},
            ],
            'basic': [
              {'key': 'password', 'value': '{{inactive}}'},
            ],
          },
        },
      ],
    });
    expect(secrets.variables, {
      'token',
      'apiKey',
      'clientSecret',
      'inactive',
      'session',
    });
    expect(secrets.values, {
      'Bearer {{token}}',
      '{{apiKey}}',
      'abc',
      'SECRET-original',
      '{{clientSecret}}',
      '{{inactive}}',
      'SECRET-variable',
      'SECRET-typed',
    });
    expect(secrets.leaks('my SECRET-original value'), isTrue);
    expect(secrets.leaks('abc'), isTrue);
    expect(secrets.leaks('abcdef'), isFalse);
  });
}
