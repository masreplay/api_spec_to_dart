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
    expect(none.hides('X-Authorisation', 'x'), isTrue);
    expect(none.hides('Proxy-Authorization', 'x'), isTrue);
    expect(none.hides('Set-Cookie', 'x'), isTrue);
    expect(none.hides('author', 'tolkien'), isFalse);
    // Identifiers are not credentials (L4).
    for (final name in [
      'authId',
      'auth_id',
      'clientId',
      'username',
      'consumerKey',
      'accessKeyId',
      'authenticated',
      'authIdentity',
      'author',
      'authority',
      // `pass` counts only as a word or camelCase segment.
      'passenger',
      'passport',
      'Passport',
      'PASSPORT',
      'bypass',
      'compass',
      'passive',
      'subscription',
      'functions',
    ]) {
      expect(none.hides(name, 'x'), isFalse, reason: name);
    }
    for (final name in [
      'auth',
      'X-Auth',
      'auth_token',
      'authToken',
      'authKey',
      'auth-key',
      'Authentication',
      'password',
      'client_secret',
      'apiKey',
      // camelCase credential compounds of `auth`.
      'authCode',
      'authPass',
      'authBearer',
      'authBasic',
      'authValue',
      'authHash',
      'authHeader',
      'authData',
      'authPin',
      'authOtp',
      'authBlob',
      'authSecret',
      'authCookie',
      'authCredential',
      'auth_code',
      'X-Auth-Header',
      'oauthCode',
      'oAuthCode',
      'oauth_token',
      'OAuth',
      // Private keys and short password spellings.
      'private_key',
      'privateKey',
      'X-Private-Key',
      'pwd',
      'userPwd',
      'pass',
      'Pass',
      'userPass',
      'user_pass',
      'X-Pass',
      'DB_PASS',
      'pass1',
      'passphrase',
      'Passcode',
      // Vendor key headers.
      'Ocp-Apim-Subscription-Key',
      'subscription_key',
      'x-functions-key',
      'functionsKey',
    ]) {
      expect(none.hides(name, 'x'), isTrue, reason: name);
    }
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
    // A key that is a secret value drops its subtree (L1).
    final secrets = Secrets.of({
      'auth': auth('bearer', {'token': 'zq9k1zz'}),
    });
    expect(
      secrets.scrub({
        'zq9k1zz': {'x': 1},
        'a': 'b',
      }),
      {'a': 'b'},
    );
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
      'SECRET-original',
      '{{clientSecret}}',
      '{{inactive}}',
      'SECRET-variable',
      'SECRET-typed',
    });
    expect(secrets.leaks('my SECRET-original value'), isTrue);
    expect(secrets.leaks('abc'), isFalse);
  });

  test('only credential-class attributes are secret values; identifiers '
      'are not', () {
    const credentials = {
      'basic': ['password'],
      'bearer': ['token'],
      'digest': ['password'],
      'oauth1': ['consumerSecret', 'token', 'tokenSecret', 'privateKey'],
      'oauth2': ['accessToken', 'refreshToken', 'clientSecret', 'password'],
      'hawk': ['authKey'],
      'awsv4': ['secretKey', 'sessionToken'],
      'ntlm': ['password'],
      'edgegrid': ['accessToken', 'clientToken', 'clientSecret'],
      'jwt': ['secret', 'privateKey'],
      'apikey': ['value'],
    };
    const identifiers = {
      'basic': ['username'],
      'bearer': <String>[],
      'digest': ['username', 'realm', 'nonce', 'opaque'],
      'oauth1': ['consumerKey', 'realm', 'nonce', 'timestamp'],
      'oauth2': ['clientId', 'username', 'state', 'tokenName'],
      'hawk': ['authId', 'nonce', 'user'],
      'awsv4': ['accessKey', 'region', 'service'],
      'ntlm': ['username', 'domain'],
      'edgegrid': ['baseURL', 'nonce'],
      'jwt': ['payload'],
      'apikey': ['key'],
    };
    final secrets = Secrets.of({
      'item': [
        for (final type in credentials.keys)
          {
            'request': {
              'auth': auth(type, {
                for (final key in credentials[type]!) key: 'SECRET-$type-$key',
                for (final key in identifiers[type]!) key: 'id-$type-$key',
              }),
            },
          },
      ],
    });
    expect(secrets.values, {
      for (final MapEntry(key: type, value: keys) in credentials.entries)
        for (final key in keys) 'SECRET-$type-$key',
    });
  });

  test('variables named like credentials are secret; URL-like ones and '
      'identifiers are not', () {
    final secrets = Secrets.of({
      'variable': [
        for (final name in [
          'api_key',
          'accessToken',
          'password',
          'privateKey',
          'userPass',
          'x-functions-key',
          'tokenUrl',
          'authUrl',
          'redirect_uri',
          'tokenEndpoint',
          'sessionHost',
          'username',
          'clientId',
          'consumerKey',
          'authId',
          'accessKeyId',
          'passenger',
        ])
          {'key': name, 'value': 'value-of-$name'},
      ],
    });
    expect(secrets.variables, {
      'api_key',
      'accessToken',
      'password',
      'privateKey',
      'userPass',
      'x-functions-key',
    });
    expect(secrets.leaks('value-of-password'), isTrue);
    expect(secrets.leaks('value-of-username'), isFalse);
  });

  test('a secret variable that references others makes them secret too, '
      'cycles included', () {
    final secrets = Secrets.of({
      'auth': auth('bearer', {'token': '{{token}}'}),
      'variable': [
        {'key': 'token', 'value': 'Bearer {{rawToken}}{{a}}'},
        {'key': 'rawToken', 'value': 'SECRET-raw'},
        {'key': 'a', 'value': '{{token}}'},
        {'key': 'other', 'value': 'visible'},
      ],
    });
    expect(secrets.variables, {'token', 'rawToken', 'a'});
    expect(secrets.leaks('x SECRET-raw'), isTrue);
    expect(secrets.leaks('visible'), isFalse);
  });

  test('literal Authorization-like and Cookie header values are secret '
      'values', () {
    final secrets = Secrets.of({
      'item': [
        {
          'request': {
            'header': [
              {'key': 'Authorization', 'value': 'Bearer SECRET-bearer'},
              {'key': 'X-Authorisation', 'value': 'SECRET-british'},
              {'key': 'Cookie', 'value': 'sid=SECRET-sid; lang=ar'},
              {'key': 'Proxy-Authorization', 'value': 'Basic {{basic}}'},
              {'key': 'Accept', 'value': 'application/json'},
            ],
          },
        },
      ],
      'variable': [
        {'key': 'basic', 'value': 'SECRET-basic'},
      ],
    });
    expect(secrets.leaks('a SECRET-bearer b'), isTrue);
    expect(secrets.leaks('a SECRET-british b'), isTrue);
    expect(secrets.leaks('a SECRET-sid b'), isTrue);
    expect(secrets.leaks('a SECRET-basic b'), isTrue);
    expect(secrets.variables, {'basic'});
    expect(secrets.leaks('application/json'), isFalse);
  });

  test('numbers leak by their text; text examples find embedded tokens', () {
    final secrets = Secrets.of({
      'auth': auth('bearer', {'token': '98765432'}),
    });
    expect(secrets.scrub({'pin': 98765432, 'n': 1}), {'n': 1});
    expect(secrets.scrub([98765432, 1]), [1]);
    expect(secrets.leaksText('jwt is eyJhbGciOi.eyJzdWIi.c2ln here'), isTrue);
    expect(secrets.leaksText('use Bearer abc now'), isTrue);
    expect(secrets.leaksText('a basic plan'), isFalse);
  });

  test('descriptions lose secret values', () {
    final secrets = Secrets.of({
      'auth': auth('bearer', {'token': 'SECRET-long-token'}),
      'item': [
        {
          'request': {
            'auth': auth('basic', {'password': 'SECRET-long'}),
          },
        },
      ],
    });
    expect(
      secrets.redact('use SECRET-long-token or SECRET-long'),
      'use *** or ***',
    );
  });
}
