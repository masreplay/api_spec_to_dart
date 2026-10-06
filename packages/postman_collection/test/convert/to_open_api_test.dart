import 'dart:convert';

import 'package:postman_collection/convert.dart';
import 'package:test/test.dart';

const v21 =
    'https://schema.getpostman.com/json/collection/v2.1.0/collection.json';

Map<String, Object?> collection(
  List<Object?> items, {
  Map<String, Object?> extra = const {},
}) => {
  'info': {'name': 'Test', 'schema': v21},
  'item': items,
  ...extra,
};

Map<String, Object?> request(
  String name,
  String method,
  Object url, {
  Map<String, Object?> fields = const {},
  List<Object?>? response,
  Map<String, Object?> item = const {},
}) => {
  'name': name,
  'request': {'method': method, 'url': url, ...fields},
  'response': ?response,
  ...item,
};

Map<String, Object?> convert(
  Map<String, Object?> collection, [
  List<String>? warnings,
]) => postmanToOpenApi(collection, onWarning: warnings?.add);

Map<Object?, Object?> operation(
  Map<String, Object?> document,
  String path,
  String method,
) => ((document['paths']! as Map)[path]! as Map)[method]! as Map;

List<Object?> parameters(Map<Object?, Object?> operation) =>
    operation['parameters']! as List;

void main() {
  group('info', () {
    test('title, version (string or object) and description', () {
      expect(
        convert({
          'info': {
            'name': 'Shop',
            'schema': v21,
            'version': {
              'major': 2,
              'minor': 1,
              'patch': 0,
              'identifier': 'beta',
            },
            'description': {'content': 'Shop API', 'type': 'text/markdown'},
          },
          'item': [],
        })['info'],
        {'title': 'Shop', 'description': 'Shop API', 'version': '2.1.0-beta'},
      );
      expect(convert(collection([]))['info'], {
        'title': 'Test',
        'version': '1.0.0',
      });
      expect(
        convert({
          'info': {'name': 'S', 'schema': v21, 'version': '7'},
          'item': [],
        })['info'],
        {'title': 'S', 'version': '7'},
      );
      expect(
        convert({
          'info': {'name': 'S', 'schema': v21, 'version': 3},
          'item': [],
        })['info'],
        {'title': 'S', 'version': '3'},
      );
    });

    test('openapi 3.1.1 with an empty paths object', () {
      final document = convert(collection([]));
      expect(document['openapi'], '3.1.1');
      expect(document['paths'], isEmpty);
    });
  });

  group('servers', () {
    test('the most frequent origin is the server; others get operation '
        'servers', () {
      final document = convert(
        collection([
          request('a', 'GET', 'https://api.example.com/a'),
          request('b', 'GET', 'https://api.example.com/b'),
          request('c', 'GET', 'https://other.example.com/c'),
          request('d', 'GET', '/relative'),
        ]),
      );
      expect(document['servers'], [
        {'url': 'https://api.example.com'},
      ]);
      expect(operation(document, '/a', 'get').containsKey('servers'), isFalse);
      expect(operation(document, '/c', 'get')['servers'], [
        {'url': 'https://other.example.com'},
      ]);
      expect(operation(document, '/relative', 'get')['servers'], [
        {'url': '/'},
      ]);
    });

    test('variables in origins become server variables with defaults', () {
      final document = convert(
        collection(
          [
            request('a', 'GET', '{{baseUrl}}/a'),
            request('b', 'GET', '{{scheme}}://{{host}}/b'),
            request('c', 'GET', '{{scheme}}://{{host}}/c'),
          ],
          extra: {
            'variable': [
              {'key': 'baseUrl', 'value': 'https://api.example.com/v1'},
              {'key': 'scheme', 'value': 'https'},
            ],
          },
        ),
      );
      expect(document['servers'], [
        {
          'url': '{scheme}://{host}',
          'variables': {
            'scheme': {'default': 'https'},
            'host': {'default': ''},
          },
        },
      ]);
      expect(operation(document, '/a', 'get')['servers'], [
        {
          'url': '{baseUrl}',
          'variables': {
            'baseUrl': {'default': 'https://api.example.com/v1'},
          },
        },
      ]);
    });

    test('relative URLs only: no servers', () {
      expect(
        convert(collection([request('a', 'GET', '/a')])).containsKey('servers'),
        isFalse,
      );
    });
  });

  group('operations', () {
    test('summary is the item name; description comes from the request, '
        'else the item', () {
      final document = convert(
        collection([
          request(
            'Get user',
            'GET',
            'https://x.io/u',
            fields: {'description': 'From request'},
            item: {'description': 'From item'},
          ),
          request(
            'List users',
            'GET',
            'https://x.io/users',
            item: {
              'description': {'content': 'From item'},
            },
          ),
        ]),
      );
      expect(operation(document, '/u', 'get'), {
        'summary': 'Get user',
        'description': 'From request',
        'operationId': 'getUser',
        'responses': {
          'default': {'description': 'Default response'},
        },
      });
      expect(operation(document, '/users', 'get')['description'], 'From item');
    });

    test('operationIds are unique ASCII camelCase; names without ASCII '
        'letters fall back to method and path', () {
      final document = convert(
        collection([
          request('Get user', 'GET', 'https://x.io/users/:id'),
          {
            'name': 'Admin',
            'item': [request('get-user', 'DELETE', 'https://x.io/users/:id')],
          },
          request('جلب المستخدمين', 'GET', 'https://x.io/users'),
          request('Get 👤 profile', 'GET', 'https://x.io/profile'),
          request('0-Create temp user', 'POST', 'https://x.io/temp'),
          request('تسجيل 2', 'POST', 'https://x.io/auth/login'),
          request('getUserByID', 'PUT', 'https://x.io/users/:id'),
          request('Café ☕', 'GET', 'https://x.io/café/menu'),
          request('Naïve search', 'GET', 'https://x.io/search'),
          request('Users المستخدمين', 'GET', 'https://x.io/users2'),
        ]),
      );
      final ids = [
        for (final path in (document['paths']! as Map).values)
          for (final operation in (path as Map).values)
            (operation as Map)['operationId'],
      ];
      expect(ids, [
        'getUser',
        'getUser2',
        'getUserById',
        'getUsers',
        'getProfile',
        'post0CreateTempUser',
        'postAuthLogin',
        'getMenu',
        'getSearch',
        'users',
      ]);
    });

    test('a request given as a string is a GET; a missing or lower-case '
        'method is normalized', () {
      final document = convert(
        collection([
          {'name': 'Ping', 'request': 'https://x.io/ping'},
          {
            'name': 'Pong',
            'request': {'url': 'https://x.io/pong'},
          },
          request('Put', 'put', 'https://x.io/put'),
        ]),
      );
      expect(
        (document['paths']! as Map).map(
          (path, item) => MapEntry(path, (item as Map).keys.toList()),
        ),
        {
          '/ping': ['get'],
          '/pong': ['get'],
          '/put': ['put'],
        },
      );
    });

    test('items without a request are skipped with a warning; empty folders '
        'and junk items are tolerated', () {
      final warnings = <String>[];
      final document = convert(
        collection([
          {'name': 'Lost'},
          {'name': 'Cart', 'item': []},
          'junk',
          {'name': 'Odd', 'request': 42},
          request('a', 'GET', 'https://x.io/a'),
        ]),
        warnings,
      );
      expect((document['paths']! as Map).keys, ['/a']);
      expect(document['tags'], [
        {'name': 'Cart'},
      ]);
      expect(warnings, [
        contains("'Lost'"),
        contains('junk'),
        contains("'Odd'"),
      ]);
    });

    group('a whole URL that is the server variable', () {
      const base = {
        'variable': [
          {'key': 'baseUrl', 'value': 'https://api.x.io/v1'},
          {'key': 'getUserUrl', 'value': 'https://api.x.io/v1/users/:id'},
        ],
      };
      const server = [
        {
          'url': '{baseUrl}',
          'variables': {
            'baseUrl': {'default': 'https://api.x.io/v1'},
          },
        },
      ];

      test('is the root of the server its siblings use, in any order', () {
        for (final items in [
          [
            request('Root', 'GET', '{{baseUrl}}'),
            request('Users', 'GET', '{{baseUrl}}/users'),
          ],
          [
            request('Users', 'GET', '{{baseUrl}}/users'),
            request('Root', 'POST', '{{baseUrl}}?dryRun=true'),
          ],
        ]) {
          final document = convert(collection(items, extra: base));
          expect(document['servers'], server);
          final paths = document['paths']! as Map;
          expect(paths.keys.toSet(), {'/', '/users'});
          for (final item in paths.values) {
            for (final operation in (item as Map).values) {
              expect((operation as Map).containsKey('servers'), isFalse);
            }
          }
        }
      });

      test('is the server when it is the only URL', () {
        final document = convert(
          collection([request('Health', 'GET', '{{baseUrl}}')], extra: base),
        );
        expect(document['servers'], server);
        expect((document['paths']! as Map).keys, ['/']);
        expect(operation(document, '/', 'get').containsKey('servers'), isFalse);
      });

      test('an endpoint variable no request uses as origin is resolved and '
          'split', () {
        final document = convert(
          collection([
            request('Orders', 'GET', '{{baseUrl}}/orders'),
            request('Get user', 'GET', '{{getUserUrl}}'),
          ], extra: base),
        );
        expect(document['servers'], server);
        expect(operation(document, '/v1/users/{id}', 'get')['servers'], [
          {'url': 'https://api.x.io'},
        ]);
      });
    });

    test('a URL that is one variable uses its value; requests without a URL '
        'are skipped with a warning', () {
      final warnings = <String>[];
      final document = convert(
        collection(
          [
            request('Get user', 'GET', '{{getUserUrl}}'),
            request('List orders', 'GET', '{{listOrdersUrl}}?page=1'),
            request('Unknown', 'GET', '{{nowhere}}'),
            {
              'name': 'No URL',
              'request': {'method': 'GET'},
            },
            request('Empty URL', 'GET', ''),
            request('Root', 'GET', 'https://api.x.io'),
          ],
          extra: {
            'variable': [
              {'key': 'getUserUrl', 'value': 'https://api.x.io/users/:id'},
              {'key': 'listOrdersUrl', 'value': 'https://api.x.io/orders'},
            ],
          },
        ),
        warnings,
      );
      expect((document['paths']! as Map).keys, ['/users/{id}', '/orders', '/']);
      expect(document['servers'], [
        {'url': 'https://api.x.io'},
      ]);
      expect(
        [
          for (final p in parameters(operation(document, '/orders', 'get')))
            (p as Map)['name'],
        ],
        ['page'],
      );
      expect(warnings, [
        contains("'Unknown'"),
        contains("'No URL'"),
        contains("'Empty URL'"),
      ]);
    });
    test('(NB2) an endpoint variable is substituted one level: its own '
        'variables stay the server and path parameters', () {
      final document = convert(
        collection(
          [
            request('Orders', 'GET', '{{baseUrl}}/orders'),
            request('Get user', 'GET', '{{getUserUrl}}'),
            request('Send', 'POST', '{{sendUrl}}'),
          ],
          extra: {
            'variable': [
              {'key': 'baseUrl', 'value': 'https://api.x.io/v1'},
              {'key': 'getUserUrl', 'value': '{{baseUrl}}/users/{{userId}}'},
              {'key': 'userId', 'value': '7'},
              {
                'key': 'sendUrl',
                'value': '{{baseUrl}}/bot{{botToken}}/sendMessage',
              },
              {'key': 'botToken', 'value': '123456:SECRET-n1'},
            ],
          },
        ),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      expect((document['paths']! as Map).keys, [
        '/orders',
        '/users/{userId}',
        '/bot{botToken}/sendMessage',
      ]);
      expect(document['servers'], [
        {
          'url': '{baseUrl}',
          'variables': {
            'baseUrl': {'default': 'https://api.x.io/v1'},
          },
        },
      ]);
      final getUser = operation(document, '/users/{userId}', 'get');
      expect(getUser.containsKey('servers'), isFalse);
      expect(parameters(getUser), [
        {
          'name': 'userId',
          'in': 'path',
          'required': true,
          'schema': {'type': 'string'},
          'example': '7',
        },
      ]);
    });

    test('(R8) an object URL with empty raw, a blank host and no path has '
        'no URL', () {
      final warnings = <String>[];
      final document = convert(
        collection([
          request('Blank', 'GET', {
            'raw': '',
            'host': [''],
          }),
          request('Root', 'GET', 'https://api.x.io'),
        ]),
        warnings,
      );
      expect((document['paths']! as Map).keys, ['/']);
      expect(operation(document, '/', 'get')['summary'], 'Root');
      expect(warnings, [contains("'Blank'")]);
    });
  });

  test('folder paths become tags with folder descriptions, empty folders '
      'too; root requests are untagged', () {
    final document = convert(
      collection([
        {
          'name': 'Users',
          'description': 'User calls',
          'item': [
            request('List', 'GET', 'https://x.io/users'),
            {
              'name': 'Admin',
              'description': {'content': 'Admin calls'},
              'item': [request('Ban', 'POST', 'https://x.io/ban')],
            },
            {'name': 'Later', 'description': 'Nothing yet', 'item': []},
          ],
        },
        {
          'name': 'Orders',
          'item': [request('Orders', 'GET', 'https://x.io/orders')],
        },
        request('Health', 'GET', 'https://x.io/health'),
      ]),
    );
    expect(document['tags'], [
      {'name': 'Users', 'description': 'User calls'},
      {'name': 'Users / Admin', 'description': 'Admin calls'},
      {'name': 'Users / Later', 'description': 'Nothing yet'},
      {'name': 'Orders'},
    ]);
    expect(operation(document, '/users', 'get')['tags'], ['Users']);
    expect(operation(document, '/ban', 'post')['tags'], ['Users / Admin']);
    expect(operation(document, '/health', 'get').containsKey('tags'), isFalse);
  });

  group('parameters', () {
    test('path: required, with url.variable description, example and type', () {
      final document = convert(
        collection(
          [
            request('Get', 'GET', {
              'raw': '{{baseUrl}}/users/:id/{{section}}/:page',
              'host': ['{{baseUrl}}'],
              'path': ['users', ':id', '{{section}}', ':page'],
              'variable': [
                {'key': 'id', 'value': '{{userId}}', 'description': 'User id'},
                {'key': 'page', 'value': '2', 'type': 'number'},
              ],
            }),
          ],
          extra: {
            'variable': [
              {'key': 'userId', 'value': '7'},
              {'key': 'section', 'value': 'posts'},
            ],
          },
        ),
      );
      expect(
        parameters(operation(document, '/users/{id}/{section}/{page}', 'get')),
        [
          {
            'name': 'id',
            'in': 'path',
            'description': 'User id',
            'required': true,
            'schema': {'type': 'string'},
            'example': '7',
          },
          {
            'name': 'section',
            'in': 'path',
            'required': true,
            'schema': {'type': 'string'},
            'example': 'posts',
          },
          {
            'name': 'page',
            'in': 'path',
            'required': true,
            'schema': {'type': 'number'},
            'example': 2,
          },
        ],
      );
    });

    test('query: optional, disabled ones too, repeated keys become exploded '
        'arrays, null or empty keys skipped', () {
      final document = convert(
        collection([
          request('Search', 'GET', {
            'raw': 'https://x.io/search?q=a&tag=x&tag=y',
            'query': [
              {'key': 'q', 'value': '{{term}}', 'description': 'Term'},
              {'key': 'tag', 'value': 'x'},
              {'key': 'tag', 'value': 'y'},
              {'key': 'debug', 'value': 'true', 'disabled': true},
              {'key': 'flag', 'value': null},
              {'key': '', 'value': 'skipped'},
              {'key': null, 'value': 'skipped'},
            ],
          }),
        ]),
      );
      expect(parameters(operation(document, '/search', 'get')), [
        {
          'name': 'q',
          'in': 'query',
          'description': 'Term',
          'schema': {'type': 'string'},
        },
        {
          'name': 'tag',
          'in': 'query',
          'schema': {
            'type': 'array',
            'items': {'type': 'string'},
          },
          'explode': true,
          'example': ['x', 'y'],
        },
        {
          'name': 'debug',
          'in': 'query',
          'schema': {'type': 'string'},
          'example': 'true',
        },
        {
          'name': 'flag',
          'in': 'query',
          'schema': {'type': 'string'},
        },
      ]);
    });

    test('headers: optional; Content-Type, Accept, Authorization and '
        'transport headers excluded; Cookie becomes cookie parameters', () {
      final warnings = <String>[];
      final document = convert(
        collection([
          request(
            'Get',
            'GET',
            'https://x.io/a',
            fields: {
              'header': [
                {
                  'key': 'Accept-Language',
                  'value': 'ar',
                  'description': 'Locale',
                },
                {'key': 'X-Trace', 'value': null},
                {'key': 'x-trace', 'value': 'dup'},
                {'key': 'Content-Type', 'value': 'application/json'},
                {'key': 'accept', 'value': '*/*'},
                {'key': 'Authorization', 'value': 'Bearer SECRET'},
                for (final transport in [
                  'Host',
                  'Content-Length',
                  'User-Agent',
                  'Accept-Encoding',
                  'Connection',
                  'Postman-Token',
                  'Cache-Control',
                ])
                  {'key': transport, 'value': 'v'},
                {'key': 'Cookie', 'value': 'session=SECRET; theme=dark'},
                {'key': 'Bad Name', 'value': 'v'},
              ],
            },
          ),
        ]),
        warnings,
      );
      expect(parameters(operation(document, '/a', 'get')), [
        {
          'name': 'Accept-Language',
          'in': 'header',
          'description': 'Locale',
          'schema': {'type': 'string'},
          'example': 'ar',
        },
        {
          'name': 'X-Trace',
          'in': 'header',
          'schema': {'type': 'string'},
          'example': 'dup',
        },
        {
          'name': 'session',
          'in': 'cookie',
          'schema': {'type': 'string'},
        },
        {
          'name': 'theme',
          'in': 'cookie',
          'schema': {'type': 'string'},
        },
      ]);
      expect(warnings, [contains("'Bad Name'")]);
    });

    test('headers given as a string', () {
      final document = convert(
        collection([
          request(
            'Get',
            'GET',
            'https://x.io/a',
            fields: {'header': 'X-A: 1\n// X-B: 2'},
          ),
        ]),
      );
      expect(
        [
          for (final p in parameters(operation(document, '/a', 'get')))
            (p as Map)['name'],
        ],
        ['X-A', 'X-B'],
      );
    });
  });

  group('merging', () {
    final users = {
      'variable': [
        {'key': 'uid', 'value': '3'},
      ],
    };
    Map<String, Object?> userUrl(String segment, [List<Object?>? variable]) => {
      'raw': 'https://x.io/users/$segment',
      'host': ['x', 'io'],
      'path': ['users', segment],
      'variable': ?variable,
    };

    test('equivalent templates merge with the first template\'s names; '
        'later descriptions and examples carry over', () {
      final document = convert(
        collection([
          request('Get user', 'GET', userUrl(':id')),
          request(
            'Get owner',
            'GET',
            userUrl(':userId', [
              {'key': 'userId', 'value': '2', 'description': 'Owner'},
            ]),
          ),
          request('Get by uid', 'GET', userUrl('{{uid}}')),
        ], extra: users),
      );
      expect((document['paths']! as Map).keys, ['/users/{id}']);
      final get = operation(document, '/users/{id}', 'get');
      expect(get['summary'], 'Get user');
      expect(parameters(get), [
        {
          'name': 'id',
          'in': 'path',
          'description': 'Owner',
          'required': true,
          'schema': {'type': 'string'},
          'example': '2',
        },
      ]);
    });

    test('equivalent templates of different methods share the first '
        'template', () {
      final document = convert(
        collection([
          request('Get user', 'GET', userUrl(':id')),
          request(
            'Delete user',
            'DELETE',
            userUrl(':userId', [
              {'key': 'userId', 'value': '2', 'description': 'Owner'},
            ]),
          ),
          request('Put user', 'PUT', userUrl('{{uid}}')),
          request('Posts', 'GET', 'https://x.io/users/:userId/posts'),
          request('Comments', 'GET', 'https://x.io/users/:id/comments'),
        ], extra: users),
      );
      expect((document['paths']! as Map).keys, [
        '/users/{id}',
        '/users/{userId}/posts',
        '/users/{id}/comments',
      ]);
      expect(((document['paths']! as Map)['/users/{id}']! as Map).keys, [
        'get',
        'delete',
        'put',
      ]);
      expect(parameters(operation(document, '/users/{id}', 'delete')), [
        {
          'name': 'id',
          'in': 'path',
          'description': 'Owner',
          'required': true,
          'schema': {'type': 'string'},
          'example': '2',
        },
      ]);
      expect(parameters(operation(document, '/users/{id}', 'put')), [
        {
          'name': 'id',
          'in': 'path',
          'required': true,
          'schema': {'type': 'string'},
          'example': '3',
        },
      ]);
    });

    test('(R7) a literal {name} segment is a declared path parameter and '
        'merges with :name', () {
      final document = convert(
        collection([
          request('By brace', 'GET', 'https://x.io/users/{id}'),
          request('By colon', 'GET', {
            'raw': 'https://x.io/users/:userId',
            'variable': [
              {'key': 'userId', 'value': '7', 'description': 'The user'},
            ],
          }),
        ]),
      );
      expect((document['paths']! as Map).keys, ['/users/{id}']);
      expect(parameters(operation(document, '/users/{id}', 'get')), [
        {
          'name': 'id',
          'in': 'path',
          'description': 'The user',
          'required': true,
          'schema': {'type': 'string'},
          'example': '7',
        },
      ]);
    });

    test('same method and path merge; the first item names the operation', () {
      final document = convert(
        collection([
          request(
            'Login by phone',
            'POST',
            'https://x.io/login?lang=ar',
            fields: {
              'body': {
                'mode': 'raw',
                'raw': '{"phone": "1", "password": "x"}',
                'options': {
                  'raw': {'language': 'json'},
                },
              },
            },
          ),
          {
            'name': 'Mobile',
            'item': [
              request(
                'Login by email',
                'POST',
                'https://x.io/login?device=ios',
                fields: {
                  'header': [
                    {'key': 'X-App', 'value': '1'},
                  ],
                  'body': {
                    'mode': 'raw',
                    'raw': '{"email": "a@b.c", "password": "x"}',
                    'options': {
                      'raw': {'language': 'json'},
                    },
                  },
                },
              ),
            ],
          },
        ]),
      );
      final login = operation(document, '/login', 'post');
      expect(login['summary'], 'Login by phone');
      expect(login['operationId'], 'loginByPhone');
      expect(login.containsKey('tags'), isFalse);
      expect(
        [for (final p in parameters(login)) (p as Map)['name']],
        ['lang', 'device', 'X-App'],
      );
      final media =
          ((login['requestBody']! as Map)['content']!
                  as Map)['application/json']!
              as Map;
      expect((media['schema']! as Map)['properties'], {
        'phone': {'type': 'string'},
        'password': {'type': 'string'},
        'email': {'type': 'string'},
      });
      expect((media['examples']! as Map).keys, [
        'Login by phone',
        'Login by email',
      ]);
    });

    test("an example's originalRequest adds its query, headers and body", () {
      final document = convert(
        collection([
          request(
            'Create',
            'POST',
            'https://x.io/items',
            response: [
              {
                'name': 'Created',
                'code': 201,
                'originalRequest': {
                  'method': 'POST',
                  'url': 'https://x.io/items?dryRun=true',
                  'header': [
                    {'key': 'X-Request-Id', 'value': 'r1'},
                  ],
                  'body': {
                    'mode': 'raw',
                    'raw': '{"name": "pen"}',
                    'options': {
                      'raw': {'language': 'json'},
                    },
                  },
                },
                'body': '',
              },
            ],
          ),
        ]),
      );
      final create = operation(document, '/items', 'post');
      expect(
        [for (final p in parameters(create)) (p as Map)['name']],
        ['dryRun', 'X-Request-Id'],
      );
      expect(create['requestBody'], {
        'content': {
          'application/json': {
            'schema': {
              'type': 'object',
              'properties': {
                'name': {'type': 'string'},
              },
            },
            'examples': {
              'Created': {
                'value': {'name': 'pen'},
              },
            },
          },
        },
      });
    });
  });

  group('responses', () {
    Map<String, Object?> example(
      String name, {
      Object? code,
      String? status,
      Object? header,
      Object? body,
      String? language,
    }) => {
      'name': name,
      'code': ?code,
      'status': ?status,
      'header': ?header,
      'body': ?body,
      '_postman_previewlanguage': ?language,
    };

    Map<Object?, Object?> responses(List<Object?> examples) =>
        operation(
              convert(
                collection([
                  request('Get', 'GET', 'https://x.io/a', response: examples),
                ]),
              ),
              '/a',
              'get',
            )['responses']!
            as Map;

    test(
      'status from code, else the reason phrase in status, else default',
      () {
        expect(
          responses([
            example('ok', code: 200, status: 'OK'),
            example('gone', status: 'Not Found'),
            example('numbered', status: '422 Unprocessable Entity'),
            example('odd', status: 'Weird'),
          ]),
          {
            '200': {'description': 'OK'},
            '404': {'description': 'Not Found'},
            '422': {'description': '422 Unprocessable Entity'},
            'default': {'description': 'Weird'},
          },
        );
        expect(responses([example('teapot', code: 418)]), {
          '418': {'description': "I'm a teapot"},
        });
      },
    );

    test('media type from Content-Type, else the preview language, else '
        'sniffed', () {
      final content = {
        for (final MapEntry(:key, :value) in responses([
          example(
            'header',
            code: 200,
            header: [
              {'key': 'Content-Type', 'value': 'application/problem+json'},
            ],
            body: '{"title": "x"}',
          ),
          example('language', code: 201, language: 'xml', body: '<a/>'),
          example('sniffed', code: 202, body: '[1]'),
          example('text', code: 203, body: 'plain'),
          example('empty', code: 204, body: ''),
        ]).entries)
          key: ((value as Map)['content'] as Map?)?.keys.toList(),
      };
      expect(content, {
        '200': ['application/problem+json'],
        '201': ['application/xml'],
        '202': ['application/json'],
        '203': ['text/plain'],
        '204': null,
      });
    });

    test('schemas merge per status and media type; examples are keyed by '
        'name', () {
      final ok = responses([
        example('one', code: 200, body: '{"id": 1, "name": "a"}'),
        example('two', code: 200, body: '{"id": "x", "name": null}'),
        example('one', code: 200, body: '{"id": 3}'),
      ])['200']!;
      expect(ok, {
        'description': 'OK',
        'content': {
          'application/json': {
            'schema': {
              'type': 'object',
              'properties': {
                'id': {
                  'oneOf': [
                    {'type': 'integer'},
                    {'type': 'string'},
                  ],
                },
                'name': {
                  'type': ['string', 'null'],
                },
              },
            },
            'examples': {
              'one': {
                'value': {'id': 1, 'name': 'a'},
              },
              'two': {
                'value': {'id': 'x', 'name': null},
              },
              'one 2': {
                'value': {'id': 3},
              },
            },
          },
        },
      });
    });

    test('headers exclude transport headers and Content-Type', () {
      expect(
        responses([
          example(
            'ok',
            code: 200,
            header: [
              {'key': 'X-Rate-Limit', 'value': '59'},
              'X-Request-Id: abc',
              {'key': 'Content-Type', 'value': 'text/plain'},
              {'key': 'Date', 'value': 'today'},
              {'key': 'Connection', 'value': 'close'},
              {'key': 'Content-Length', 'value': '0'},
            ],
          ),
        ]),
        {
          '200': {
            'description': 'OK',
            'headers': {
              'X-Rate-Limit': {
                'schema': {'type': 'string'},
                'example': '59',
              },
              'X-Request-Id': {
                'schema': {'type': 'string'},
                'example': 'abc',
              },
            },
          },
        },
      );
    });

    test('no saved example gives a default response', () {
      expect(responses([]), {
        'default': {'description': 'Default response'},
      });
    });

    test('a javascript or text preview that parses as JSON is JSON (v1 '
        'previews have no json language)', () {
      final content = {
        for (final MapEntry(:key, :value) in responses([
          example(
            'js json',
            code: 200,
            language: 'javascript',
            body: '{"a": 1}',
          ),
          example('text json', code: 201, language: 'Text', body: '[1]'),
          example('js code', code: 202, language: 'javascript', body: 'f(1)'),
          example('text', code: 203, language: 'text', body: 'plain'),
        ]).entries)
          key: ((value as Map)['content'] as Map).keys.toList(),
      };
      expect(content, {
        '200': ['application/json'],
        '201': ['application/json'],
        '202': ['application/javascript'],
        '203': ['text/plain'],
      });
    });
  });

  group('methods', () {
    test('QUERY uses the 3.2 query field', () {
      final document = convert(
        collection([request('Search', 'QUERY', 'https://x.io/search')]),
      );
      expect(document['openapi'], '3.2.0');
      expect(operation(document, '/search', 'query')['operationId'], 'search');
    });

    test('PURGE and other methods use 3.2 additionalOperations', () {
      final document = convert(
        collection([
          request('Purge', 'PURGE', 'https://x.io/cache'),
          request('Read', 'GET', 'https://x.io/cache'),
          request('Link', 'LINK', 'https://x.io/cache'),
        ]),
      );
      expect(document['openapi'], '3.2.0');
      final path = (document['paths']! as Map)['/cache']! as Map;
      expect(path.keys, ['additionalOperations', 'get']);
      expect((path['additionalOperations']! as Map).keys, ['PURGE', 'LINK']);
    });

    test('the 3.1 methods keep 3.1.1; an invalid method is skipped', () {
      final warnings = <String>[];
      final document = convert(
        collection([
          for (final method in [
            'GET',
            'PUT',
            'POST',
            'DELETE',
            'OPTIONS',
            'HEAD',
            'PATCH',
            'TRACE',
          ])
            request(method, method, 'https://x.io/a'),
          request('Bad', 'NOT A METHOD', 'https://x.io/a'),
        ]),
        warnings,
      );
      expect(document['openapi'], '3.1.1');
      expect(((document['paths']! as Map)['/a']! as Map).keys, [
        'get',
        'put',
        'post',
        'delete',
        'options',
        'head',
        'patch',
        'trace',
      ]);
      expect(warnings, [contains('NOT A METHOD')]);
    });
  });

  test('a Webhooks folder becomes webhooks keyed by request name', () {
    final document = convert(
      collection([
        {
          'name': 'Webhooks',
          'item': [
            request(
              'Order paid',
              'POST',
              '{{callbackUrl}}',
              fields: {
                'body': {
                  'mode': 'raw',
                  'raw': '{"orderId": 1}',
                  'options': {
                    'raw': {'language': 'json'},
                  },
                },
              },
            ),
            request('Order paid', 'POST', '{{callbackUrl}}/v2'),
          ],
        },
        request('Pay', 'POST', 'https://x.io/pay'),
      ]),
    );
    expect((document['paths']! as Map).keys, ['/pay']);
    final webhooks = document['webhooks']! as Map;
    expect(webhooks.keys, ['Order paid', 'Order paid 2']);
    final paid = (webhooks['Order paid']! as Map)['post']! as Map;
    expect(paid['operationId'], 'orderPaid');
    expect(paid.containsKey('servers'), isFalse);
    expect(paid.containsKey('tags'), isFalse);
    expect(paid['requestBody'], isNotNull);
  });

  group('security', () {
    Map<String, Object?> auth(String type) => {
      'type': type,
      if (type != 'noauth')
        type: [
          {'key': 'token', 'value': 'SECRET'},
        ],
    };

    test('collection auth is the document security; folder and request '
        'auth override it; noauth gives []', () {
      final document = convert(
        collection(
          [
            request('Inherits', 'GET', 'https://x.io/a'),
            request(
              'Open',
              'GET',
              'https://x.io/b',
              fields: {'auth': auth('noauth')},
            ),
            {
              'name': 'Basic',
              'auth': auth('basic'),
              'item': [
                request('Folder auth', 'GET', 'https://x.io/c'),
                request(
                  'Back to bearer',
                  'GET',
                  'https://x.io/d',
                  fields: {'auth': auth('bearer')},
                ),
              ],
            },
          ],
          extra: {'auth': auth('bearer')},
        ),
      );
      expect(document['security'], [
        {'bearer': <String>[]},
      ]);
      expect(document['components'], {
        'securitySchemes': {
          'bearer': {'type': 'http', 'scheme': 'bearer'},
          'basic': {'type': 'http', 'scheme': 'basic'},
        },
      });
      expect(operation(document, '/a', 'get').containsKey('security'), isFalse);
      expect(operation(document, '/b', 'get')['security'], isEmpty);
      expect(operation(document, '/c', 'get')['security'], [
        {'basic': <String>[]},
      ]);
      expect(operation(document, '/d', 'get').containsKey('security'), isFalse);
    });

    test('an empty auth type is no auth, with a warning', () {
      final warnings = <String>[];
      final document = convert(
        collection(
          [
            request(
              'Open',
              'GET',
              'https://x.io/a',
              fields: {
                'auth': {'type': ''},
              },
            ),
          ],
          extra: {'auth': auth('bearer')},
        ),
        warnings,
      );
      expect(operation(document, '/a', 'get')['security'], isEmpty);
      expect(
        ((document['components']! as Map)['securitySchemes']! as Map).keys,
        ['bearer'],
      );
      expect(warnings, [contains('without a type')]);
    });

    test('oauth2 configuration does not make its variables secret', () {
      final document = convert(
        collection(
          [request('Get', 'GET', '{{baseUrl}}/a')],
          extra: {
            'auth': {
              'type': 'oauth2',
              'oauth2': [
                {'key': 'redirect_uri', 'value': '{{baseUrl}}/callback'},
                {'key': 'audience', 'value': '{{audience}}'},
                {'key': 'clientSecret', 'value': '{{clientSecret}}'},
              ],
            },
            'variable': [
              {'key': 'baseUrl', 'value': 'https://api.x.io'},
              {'key': 'audience', 'value': 'https://api.x.io'},
              {'key': 'clientSecret', 'value': 'SECRET-client'},
            ],
          },
        ),
      );
      expect(document['servers'], [
        {
          'url': '{baseUrl}',
          'variables': {
            'baseUrl': {'default': 'https://api.x.io'},
          },
        },
      ]);
      expect(jsonEncode(document), isNot(contains('SECRET')));
    });

    test('without collection auth, noauth needs no security', () {
      final document = convert(
        collection([
          request(
            'Open',
            'GET',
            'https://x.io/b',
            fields: {'auth': auth('noauth')},
          ),
        ]),
      );
      expect(document.containsKey('security'), isFalse);
      expect(document.containsKey('components'), isFalse);
      expect(operation(document, '/b', 'get').containsKey('security'), isFalse);
    });

    test('no secret reaches the output, even through variables', () {
      final document = convert(
        collection(
          [
            request(
              'Get',
              'GET',
              'https://x.io/a?token={{token}}',
              fields: {
                'header': [
                  {'key': 'jwt', 'value': '{{token}}'},
                  {'key': 'X-Key', 'value': '{{apiKey}}'},
                ],
                'auth': {
                  'type': 'apikey',
                  'apikey': [
                    {'key': 'key', 'value': 'X-Key'},
                    {'key': 'value', 'value': '{{apiKey}}'},
                  ],
                },
                'body': {
                  'mode': 'raw',
                  'raw': '{"token": "{{token}}", "secret": {{secretVar}}}',
                },
              },
            ),
          ],
          extra: {
            'auth': {
              'type': 'bearer',
              'bearer': [
                {'key': 'token', 'value': '{{token}}'},
              ],
            },
            'variable': [
              {'key': 'token', 'value': 'SECRET-token'},
              {'key': 'apiKey', 'value': 'SECRET-key'},
              {'key': 'secretVar', 'value': 'SECRET-typed', 'type': 'secret'},
            ],
          },
        ),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
    });

    test('credential-like parameters and headers have no examples', () {
      const jwt = 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOjF9.c2lnbmF0dXJl';
      final document = convert(
        collection([
          request(
            'Get',
            'GET',
            'https://x.io/a?api_key=k1&access_token=t1&author=tolkien',
            fields: {
              'header': [
                {'key': 'jwt', 'value': jwt},
                {'key': 'X-Auth-Token', 'value': 't2'},
                {'key': 'X-Api-Key', 'value': 'k2'},
                {'key': 'X-Session-Id', 'value': 's1'},
                {'key': 'X-Forwarded', 'value': jwt},
                {'key': 'X-Proxy', 'value': 'Bearer t3'},
                {'key': 'Accept-Language', 'value': 'ar'},
              ],
            },
            response: [
              {
                'name': 'ok',
                'code': 200,
                'header': [
                  {'key': 'X-Refresh-Token', 'value': 't4'},
                  {'key': 'X-Rate-Limit', 'value': '59'},
                ],
              },
            ],
          ),
        ]),
      );
      final get = operation(document, '/a', 'get');
      expect(
        {for (final p in parameters(get)) (p as Map)['name']: p['example']},
        {
          'api_key': null,
          'access_token': null,
          'author': 'tolkien',
          'jwt': null,
          'X-Auth-Token': null,
          'X-Api-Key': null,
          'X-Session-Id': null,
          'X-Forwarded': null,
          'X-Proxy': null,
          'Accept-Language': 'ar',
        },
      );
      final headers =
          ((get['responses']! as Map)['200']! as Map)['headers']! as Map;
      expect(headers.map((name, h) => MapEntry(name, (h as Map)['example'])), {
        'X-Refresh-Token': null,
        'X-Rate-Limit': '59',
      });
    });

    Map<String, Object?> json(Object body) => {
      'mode': 'raw',
      'raw': jsonEncode(body),
      'options': {
        'raw': {'language': 'json'},
      },
    };

    test('(a) values of *Authorization* headers are not examples', () {
      final document = convert(
        collection([
          request(
            'Get',
            'GET',
            'https://x.io/a',
            fields: {
              'header': [
                {'key': 'X-Authorization', 'value': 'SECRET-opaque'},
                {
                  'key': 'Proxy-Authorization',
                  'value': 'Digest username="u", response="SECRET-digest"',
                },
              ],
            },
          ),
        ]),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      expect(
        [
          for (final p in parameters(operation(document, '/a', 'get')))
            (p as Map)['name'],
        ],
        ['X-Authorization', 'Proxy-Authorization'],
      );
    });

    test('(b) Set-Cookie values in saved responses are not examples', () {
      final document = convert(
        collection([
          request(
            'Login',
            'POST',
            'https://x.io/login',
            response: [
              {
                'name': 'ok',
                'code': 200,
                'header': [
                  {'key': 'Set-Cookie', 'value': 'sid=SECRET-cookie; Path=/'},
                ],
              },
            ],
          ),
        ]),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      final responses =
          operation(document, '/login', 'post')['responses']! as Map;
      expect(((responses['200']! as Map)['headers']! as Map).keys, [
        'Set-Cookie',
      ]);
    });

    test('(c) everything under a credential-named key is dropped from '
        'examples', () {
      final body = {
        'token': {'value': 'SECRET-nested'},
        'auth': {'key': 'SECRET-auth'},
        'tokens': ['SECRET-list'],
        'name': 'ok',
      };
      final document = convert(
        collection([
          request(
            'Create',
            'POST',
            'https://x.io/a',
            fields: {'body': json(body)},
            response: [
              {
                'name': 'ok',
                'code': 200,
                'header': [
                  {'key': 'Content-Type', 'value': 'application/json'},
                ],
                'body': jsonEncode(body),
              },
            ],
          ),
        ]),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      final create = operation(document, '/a', 'post');
      final media =
          ((create['requestBody']! as Map)['content']!
                  as Map)['application/json']!
              as Map;
      expect((media['schema']! as Map)['properties'], contains('token'));
      expect(media['examples'], {
        'Create': {
          'value': {'name': 'ok'},
        },
      });
    });

    test('(d) literal auth secrets and secret variable values are dropped '
        'wherever they are reused', () {
      final document = convert(
        collection(
          [
            request(
              'Create',
              'POST',
              'https://x.io/a?q=SECRET-literal',
              fields: {
                'header': [
                  {'key': 'X-Note', 'value': 'see SECRET-literal here'},
                ],
                'body': json({
                  'accessKey': 'SECRET-literal',
                  'note': 'SECRET-variable',
                  'other': 'SECRET-original',
                  'short': 'xy',
                  'kept': 'visible',
                }),
              },
              response: [
                {
                  'name': 'ok',
                  'code': 200,
                  'originalRequest': {
                    'method': 'POST',
                    'url': 'https://x.io/a',
                    'auth': {
                      'type': 'basic',
                      'basic': [
                        {'key': 'username', 'value': 'xy'},
                        {'key': 'password', 'value': 'SECRET-original'},
                      ],
                    },
                  },
                  'body': 'logged in with SECRET-literal',
                },
              ],
            ),
            {
              'name': 'Folder',
              'auth': {
                'type': 'apikey',
                'apikey': [
                  {'key': 'key', 'value': 'X-Key'},
                  {'key': 'value', 'value': '{{apiKey}}'},
                ],
              },
              'item': [request('Get', 'GET', 'https://x.io/b')],
            },
          ],
          extra: {
            'auth': {
              'type': 'bearer',
              'bearer': [
                {'key': 'token', 'value': 'SECRET-literal'},
              ],
            },
            'variable': [
              {'key': 'apiKey', 'value': 'SECRET-variable'},
            ],
          },
        ),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      final media =
          ((operation(document, '/a', 'post')['requestBody']!
                      as Map)['content']!
                  as Map)['application/json']!
              as Map;
      // The basic-auth username `xy` is an identifier, not a secret.
      expect(media['examples'], {
        'Create': {
          'value': {'short': 'xy', 'kept': 'visible'},
        },
      });
    });

    test('(e) userinfo never reaches server defaults or other URLs', () {
      final document = convert(
        collection(
          [
            request(
              'Get',
              'GET',
              '{{baseUrl}}/a?callback=https://u:SECRET-cb@hooks.x.io/cb',
              fields: {
                'auth': {
                  'type': 'oauth2',
                  'oauth2': [
                    {
                      'key': 'authUrl',
                      'value': 'https://u:SECRET-oauth@auth.x.io/authorize',
                    },
                    {'key': 'accessTokenUrl', 'value': '{{baseUrl}}/token'},
                  ],
                },
              },
            ),
          ],
          extra: {
            'variable': [
              {'key': 'baseUrl', 'value': 'https://user:SECRET-pass@api.x.io'},
            ],
          },
        ),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      expect(document['servers'], [
        {
          'url': '{baseUrl}',
          'variables': {
            'baseUrl': {'default': 'https://api.x.io'},
          },
        },
      ]);
      expect(
        (parameters(operation(document, '/a', 'get')).single as Map)['example'],
        'https://hooks.x.io/cb',
      );
      final flow =
          ((((document['components']! as Map)['securitySchemes']!
                          as Map)['oauth2']!
                      as Map)['flows']!
                  as Map)['authorizationCode']!
              as Map;
      expect(flow['authorizationUrl'], 'https://auth.x.io/authorize');
      expect(flow['tokenUrl'], 'https://api.x.io/token');
    });

    /// Every server object in [document] (document and operation level).
    List<Map<Object?, Object?>> servers(Map<String, Object?> document) => [
      for (final server in (document['servers'] as List?) ?? const [])
        server as Map,
      for (final item in (document['paths']! as Map).values)
        for (final operation in (item as Map).values)
          for (final server
              in ((operation as Map)['servers'] as List?) ?? const [])
            server as Map,
    ];

    test('(1e) userinfo without a scheme never reaches server defaults, '
        'server URLs, OAuth URLs or URL-shaped examples', () {
      final document = convert(
        collection(
          [
            request(
              'A',
              'GET',
              '{{baseUrl}}/a?callback=u:SECRET-e6@hooks.x.io/cb&email=a@b.io',
            ),
            request('B', 'GET', '{{scheme}}://{{host}}/b'),
            request('C', 'GET', {
              'raw': '',
              'protocol': 'https',
              'host': 'user:SECRET-e4@obj.x.io',
              'path': ['c'],
            }),
          ],
          extra: {
            'auth': {
              'type': 'oauth2',
              'oauth2': [
                {'key': 'authUrl', 'value': 'u:SECRET-e5@auth.x.io/authorize'},
              ],
            },
            'variable': [
              {'key': 'baseUrl', 'value': 'user:SECRET-e2@api.x.io'},
              {'key': 'scheme', 'value': 'https'},
              {'key': 'host', 'value': 'user:SECRET-e3@api.x.io'},
            ],
          },
        ),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      expect(servers(document), [
        {
          'url': '{baseUrl}',
          'variables': {
            'baseUrl': {'default': 'api.x.io'},
          },
        },
        {
          'url': '{scheme}://{host}',
          'variables': {
            'scheme': {'default': 'https'},
            'host': {'default': 'api.x.io'},
          },
        },
        {'url': 'https://obj.x.io'},
      ]);
      expect(
        {
          for (final p in parameters(operation(document, '/a', 'get')))
            (p as Map)['name']: p['example'],
        },
        {'callback': 'hooks.x.io/cb', 'email': 'a@b.io'},
      );
      expect(
        jsonEncode(document['components']),
        contains('"authorizationUrl":"auth.x.io/authorize"'),
      );
    });

    test('(NB1) identifiers are not secrets: client ids and usernames keep '
        'server defaults, OAuth URLs and examples; a password reused '
        'elsewhere is still dropped', () {
      final oauth = convert(
        collection(
          [request('Get', 'GET', '{{baseUrl}}/a')],
          extra: {
            'auth': {
              'type': 'oauth2',
              'oauth2': [
                {'key': 'clientId', 'value': 'shop'},
                {'key': 'clientSecret', 'value': 'SECRET-cs'},
                {'key': 'authUrl', 'value': 'https://shop.x.io/authorize'},
                {'key': 'accessTokenUrl', 'value': 'https://shop.x.io/token'},
              ],
            },
            'variable': [
              {'key': 'baseUrl', 'value': 'https://shop.x.io'},
            ],
          },
        ),
      );
      expect(jsonEncode(oauth), isNot(contains('SECRET')));
      expect(servers(oauth), [
        {
          'url': '{baseUrl}',
          'variables': {
            'baseUrl': {'default': 'https://shop.x.io'},
          },
        },
      ]);
      final flow =
          ((((oauth['components']! as Map)['securitySchemes']!
                          as Map)['oauth2']!
                      as Map)['flows']!
                  as Map)['authorizationCode']!
              as Map;
      expect(flow['authorizationUrl'], 'https://shop.x.io/authorize');
      expect(flow['tokenUrl'], 'https://shop.x.io/token');

      final basic = convert(
        collection(
          [
            request(
              'Create',
              'POST',
              '{{baseUrl}}/users',
              fields: {
                'body': json({
                  'user': 'admin',
                  'pin': 'SECRET-pw',
                  'kept': 'x',
                }),
              },
            ),
          ],
          extra: {
            'auth': {
              'type': 'basic',
              'basic': [
                {'key': 'username', 'value': 'admin'},
                {'key': 'password', 'value': 'SECRET-pw'},
              ],
            },
            'variable': [
              {'key': 'baseUrl', 'value': 'https://example.com/admin/api'},
            ],
          },
        ),
      );
      expect(jsonEncode(basic), isNot(contains('SECRET')));
      expect(servers(basic), [
        {
          'url': '{baseUrl}',
          'variables': {
            'baseUrl': {'default': 'https://example.com/admin/api'},
          },
        },
      ]);
      expect(
        (((operation(basic, '/users', 'post')['requestBody']!
                    as Map)['content']!
                as Map)['application/json']!
            as Map)['examples'],
        {
          'Create': {
            'value': {'user': 'admin', 'kept': 'x'},
          },
        },
      );
    });

    test('(R1, R5) literal Authorization-like and Cookie header values are '
        'dropped wherever they are reused', () {
      final document = convert(
        collection([
          request(
            'Create',
            'POST',
            'https://x.io/a',
            fields: {
              'header': [
                {'key': 'Authorization', 'value': 'Bearer SECRET-r5a'},
                {'key': 'Cookie', 'value': 'sid=SECRET-r5b'},
                {'key': 'X-Authorisation', 'value': 'SECRET-r1'},
              ],
              'body': json({
                'note': 'SECRET-r5a',
                'other': 'SECRET-r5b',
                'british': 'SECRET-r1',
                'kept': 'x',
              }),
            },
            response: [
              {'name': 'ok', 'code': 200, 'body': 'echo SECRET-r5a'},
            ],
          ),
        ]),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      expect(
        [
          for (final p in parameters(operation(document, '/a', 'post')))
            (p as Map)['name'],
        ],
        ['sid', 'X-Authorisation'],
      );
    });

    test('(R2) a literal secret reused as a number is dropped', () {
      final document = convert(
        collection(
          [
            request(
              'Json',
              'POST',
              'https://x.io/a',
              fields: {
                'body': json({'pin': 98765432, 'n': 1}),
              },
            ),
            request(
              'Form',
              'POST',
              'https://x.io/b',
              fields: {
                'body': {
                  'mode': 'urlencoded',
                  'urlencoded': [
                    {'key': 'pin', 'value': '98765432'},
                    {'key': 'n', 'value': '1'},
                  ],
                },
              },
            ),
          ],
          extra: {
            'auth': {
              'type': 'bearer',
              'bearer': [
                {'key': 'token', 'value': '98765432'},
              ],
            },
          },
        ),
      );
      expect(jsonEncode(document), isNot(contains('98765432')));
    });

    test('(R3) a secret variable that references another makes it secret', () {
      final document = convert(
        collection(
          [
            request(
              'Get',
              'GET',
              'https://x.io/a?q={{rawToken}}',
              fields: {
                'header': [
                  {'key': 'X-Note', 'value': '{{rawToken}}'},
                ],
                'body': json({'note': '{{rawToken}}', 'loop': '{{a}}'}),
              },
            ),
          ],
          extra: {
            'auth': {
              'type': 'bearer',
              'bearer': [
                {'key': 'token', 'value': '{{token}}'},
              ],
            },
            'variable': [
              {'key': 'token', 'value': '{{rawToken}}{{a}}'},
              {'key': 'rawToken', 'value': 'SECRET-raw'},
              {'key': 'a', 'value': '{{token}}'},
            ],
          },
        ),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
    });

    test('(R4) JSON served as text is scrubbed like JSON; embedded tokens '
        'in text drop the example', () {
      const jwt = 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOjF9.c2lnbmF0dXJl';
      Map<String, Object?> text(String name, String type, String body) => {
        'name': name,
        'code': 200,
        'header': [
          {'key': 'Content-Type', 'value': type},
        ],
        'body': body,
      };
      final document = convert(
        collection([
          request(
            'Login',
            'POST',
            'https://x.io/login',
            response: [
              text(
                'html',
                'text/html',
                jsonEncode({
                  'access_token': 'SECRET-r4a',
                  'jwt': jwt,
                  'name': 'ok',
                }),
              ),
              text('plain', 'text/plain', 'your token is $jwt, keep it'),
              text('bearer', 'text/plain', 'use Bearer SECRET-r4b now'),
              text('fine', 'text/plain', 'all good'),
            ],
          ),
        ]),
      );
      final output = jsonEncode(document);
      expect(output, isNot(contains('SECRET')));
      expect(output, isNot(contains('eyJ')));
      final content =
          ((operation(document, '/login', 'post')['responses']! as Map)['200']!
                  as Map)['content']!
              as Map;
      expect((content['text/html']! as Map)['examples'], {
        'html': {'value': '{"name":"ok"}'},
      });
      expect((content['text/plain']! as Map)['examples'], {
        'fine': {'value': 'all good'},
      });
    });

    test('(L1) a JSON key that is a secret value drops its entry, in JSON '
        'and in JSON served as text', () {
      Map<String, Object?> example(String name, String type) => {
        'name': name,
        'code': 200,
        'header': [
          {'key': 'Content-Type', 'value': type},
        ],
        'body': jsonEncode({
          'zq9k1zz': {'x': 1},
          'a': 'b',
        }),
      };
      final document = convert(
        collection(
          [
            request(
              'Get',
              'GET',
              'https://x.io/a',
              response: [
                example('json', 'application/json'),
                example('text', 'text/plain'),
              ],
            ),
          ],
          extra: {
            'auth': {
              'type': 'bearer',
              'bearer': [
                {'key': 'token', 'value': 'zq9k1zz'},
              ],
            },
          },
        ),
      );
      expect(jsonEncode(document), isNot(contains('zq9k1zz')));
      final content =
          ((operation(document, '/a', 'get')['responses']! as Map)['200']!
                  as Map)['content']!
              as Map;
      expect((content['application/json']! as Map)['examples'], {
        'json': {
          'value': {'a': 'b'},
        },
      });
      expect((content['text/plain']! as Map)['examples'], {
        'text': {'value': '{"a":"b"}'},
      });
    });

    test('(L2) protocol-relative and embedded userinfo is removed', () {
      final document = convert(
        collection(
          [
            request(
              'Get',
              'GET',
              '{{baseUrl}}/a?cb=//u:SECRET-p2@h.io/x',
              response: [
                {
                  'name': 'xml',
                  'code': 200,
                  'header': [
                    {'key': 'Content-Type', 'value': 'text/xml'},
                  ],
                  'body': '<a>u:SECRET-p3@h.io</a>',
                },
              ],
            ),
          ],
          extra: {
            'variable': [
              {'key': 'baseUrl', 'value': '//u:SECRET-p1@api.x.io'},
            ],
          },
        ),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      expect(document['servers'], [
        {
          'url': '{baseUrl}',
          'variables': {
            'baseUrl': {'default': '//api.x.io'},
          },
        },
      ]);
      final get = operation(document, '/a', 'get');
      expect((parameters(get).single as Map)['example'], '//h.io/x');
      expect(
        ((((get['responses']! as Map)['200']! as Map)['content']!
                as Map)['text/xml']!
            as Map)['examples'],
        {
          'xml': {'value': '<a>h.io</a>'},
        },
      );
    });

    test('(L3) response descriptions lose secret values', () {
      final document = convert(
        collection(
          [
            request(
              'Get',
              'GET',
              'https://x.io/a',
              response: [
                {'name': 'ok', 'code': 200, 'status': 'OK SECRET-l3'},
              ],
            ),
          ],
          extra: {
            'auth': {
              'type': 'bearer',
              'bearer': [
                {'key': 'token', 'value': 'SECRET-l3'},
              ],
            },
          },
        ),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      expect(
        ((operation(document, '/a', 'get')['responses']! as Map)['200']!
            as Map)['description'],
        'OK ***',
      );
    });

    test('(L4) identifier-named keys keep their examples; credential-named '
        'ones do not', () {
      final document = convert(
        collection([
          request(
            'Create',
            'POST',
            'https://x.io/a?authId=id-1&auth_token=SECRET-l4a',
            fields: {
              'body': json({
                'authId': 'id-1',
                'clientId': 'c-1',
                'username': 'u-1',
                'authKey': 'SECRET-l4b',
                'authToken': 'SECRET-l4c',
              }),
            },
          ),
        ]),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      final create = operation(document, '/a', 'post');
      expect(
        {for (final p in parameters(create)) (p as Map)['name']: p['example']},
        {'authId': 'id-1', 'auth_token': null},
      );
      expect(
        (((create['requestBody']! as Map)['content']!
                as Map)['application/json']!
            as Map)['examples'],
        {
          'Create': {
            'value': {'authId': 'id-1', 'clientId': 'c-1', 'username': 'u-1'},
          },
        },
      );
    });

    test('(R6) descriptions lose secret values', () {
      const secret = 'SECRET-r6';
      final document = convert(
        collection(
          [
            {
              'name': 'Folder',
              'description': 'folder $secret',
              'item': [
                request(
                  'Get',
                  'POST',
                  {
                    'raw': 'https://x.io/a/:id?q=1',
                    'query': [
                      {'key': 'q', 'value': '1', 'description': 'q $secret'},
                    ],
                    'variable': [
                      {'key': 'id', 'description': 'id $secret'},
                    ],
                  },
                  fields: {
                    'description': 'request $secret',
                    'header': [
                      {
                        'key': 'X-Note',
                        'value': 'n',
                        'description': 'header $secret',
                      },
                    ],
                    'body': {
                      'mode': 'formdata',
                      'formdata': [
                        {
                          'key': 'f',
                          'value': 'v',
                          'description': 'field $secret',
                        },
                      ],
                    },
                  },
                ),
              ],
            },
          ],
          extra: {
            'info': {
              'name': 'Test',
              'schema': v21,
              'description': 'info $secret',
            },
            'auth': {
              'type': 'bearer',
              'bearer': [
                {'key': 'token', 'value': secret},
              ],
            },
          },
        ),
      );
      final output = jsonEncode(document);
      expect(output, isNot(contains('SECRET')));
      expect('***'.allMatches(output), hasLength(7));
      expect((document['info']! as Map)['description'], 'info ***');
    });

    test('variables named like credentials are secret wherever they are '
        'used; URL-like and identifier variables still resolve', () {
      final document = convert(
        collection(
          [
            request(
              'Get',
              'POST',
              '{{baseUrl}}/a?key={{api_key}}&t={{accessToken}}&u={{username}}',
              fields: {
                'header': [
                  {'key': 'X-Custom', 'value': '{{private_key}}'},
                  {'key': 'X-Client', 'value': '{{clientId}}'},
                ],
                'body': json({
                  'user': '{{password}}',
                  'pin': '{{userPass}}',
                  'sub': '{{subscriptionKey}}',
                  'login': '{{username}}',
                  'callback': '{{tokenUrl}}',
                }),
              },
            ),
          ],
          extra: {
            'variable': [
              {'key': 'baseUrl', 'value': 'https://api.x.io'},
              {'key': 'api_key', 'value': 'SECRET-QUERYKEY'},
              {'key': 'accessToken', 'value': 'SECRET-access'},
              {'key': 'password', 'value': 'SECRET-password'},
              {'key': 'private_key', 'value': 'SECRET-private'},
              {'key': 'userPass', 'value': 'SECRET-pass'},
              {'key': 'subscriptionKey', 'value': 'SECRET-subscription'},
              {'key': 'username', 'value': 'alice'},
              {'key': 'clientId', 'value': 'client-1'},
              {'key': 'tokenUrl', 'value': 'https://auth.x.io/token'},
            ],
          },
        ),
      );
      final output = jsonEncode(document);
      expect(output, isNot(contains('SECRET')));
      final post = operation(document, '/a', 'post');
      expect(
        {
          for (final p in parameters(post).cast<Map<Object?, Object?>>())
            p['name']: p['example'],
        },
        {
          'key': null,
          't': null,
          'u': 'alice',
          'X-Custom': null,
          'X-Client': 'client-1',
        },
      );
      final media =
          ((post['requestBody']! as Map)['content']!
                  as Map)['application/json']!
              as Map;
      // Secret variables stay unresolved references.
      expect(((media['examples']! as Map)['Get']! as Map)['value'], {
        'user': '{{password}}',
        'pin': '{{userPass}}',
        'sub': '{{subscriptionKey}}',
        'login': 'alice',
        'callback': 'https://auth.x.io/token',
      });
      expect(document['servers'], [
        {
          'url': '{baseUrl}',
          'variables': {
            'baseUrl': {'default': 'https://api.x.io'},
          },
        },
      ]);
    });

    test('name-only secrecy keeps URL, path, reference and apikey-name '
        'variables resolving', () {
      final document = convert(
        collection(
          [
            {
              'name': 'Folder',
              'description': 'Hosted at https://api.x.io',
              'item': [
                request(
                  'Login',
                  'GET',
                  '{{baseUrl}}{{token_path}}?cb={{oauth_callback}}'
                      '&key={{api_key}}',
                ),
              ],
            },
            request('A', 'GET', '{{auth_server}}/a'),
            request('B', 'GET', '{{tokenService}}/b'),
            request('C', 'GET', '{{session_api}}/c'),
            request('D', 'GET', '{{auth-domain}}/d'),
            request('E', 'GET', '{{tokenUrl2}}/e'),
          ],
          extra: {
            'auth': {
              'type': 'apikey',
              'apikey': [
                {'key': 'key', 'value': '{{apiKeyHeader}}'},
                {'key': 'value', 'value': 'SECRET-apikey'},
              ],
            },
            'variable': [
              {'key': 'baseUrl', 'value': 'https://api.x.io'},
              {'key': 'oauth_callback', 'value': '{{baseUrl}}/callback'},
              {'key': 'token_path', 'value': '/oauth/token'},
              {'key': 'auth_server', 'value': 'https://auth.x.io'},
              {'key': 'tokenService', 'value': 'https://tok.x.io'},
              {'key': 'session_api', 'value': 'https://s.x.io'},
              {'key': 'auth-domain', 'value': 'https://d.x.io'},
              {'key': 'tokenUrl2', 'value': 'https://t2.x.io'},
              {'key': 'apiKeyHeader', 'value': 'X-API-Key'},
              {'key': 'api_key', 'value': 'SECRET-plain'},
            ],
          },
        ),
      );
      final output = jsonEncode(document);
      expect(output, isNot(contains('SECRET')));
      // `{{baseUrl}}{{token_path}}` is the server; the path variable keeps
      // its value as the server variable's default.
      expect(output, contains('"default":"/oauth/token"'));
      final login = operation(document, '/', 'get');
      expect(
        {
          for (final p in parameters(login).cast<Map<Object?, Object?>>())
            p['name']: p['example'],
        },
        {'cb': 'https://api.x.io/callback', 'key': null},
      );
      for (final url in [
        'https://api.x.io',
        'https://auth.x.io',
        'https://tok.x.io',
        'https://s.x.io',
        'https://d.x.io',
        'https://t2.x.io',
      ]) {
        expect(output, contains('"default":"$url"'), reason: url);
      }
      expect((document['tags']! as List).cast<Map<Object?, Object?>>().single, {
        'name': 'Folder',
        'description': 'Hosted at https://api.x.io',
      });
      expect(
        ((document['components']! as Map)['securitySchemes']! as Map)
            .values
            .single,
        {'type': 'apiKey', 'name': 'X-API-Key', 'in': 'header'},
      );
    });

    test('a name-only secret makes the variables it references secret '
        'unless they are URLs or paths', () {
      final document = convert(
        collection(
          [
            request(
              'A',
              'GET',
              '{{baseUrl}}/a?t={{token}}&u={{authKey}}&cb={{oauth_callback}}',
            ),
            {
              'name': 'Folder',
              'variable': [
                {'key': 'session_token', 'value': 'SK_FOLDER'},
              ],
              'item': [
                request('B', 'GET', '{{baseUrl}}/b?s={{session_token}}'),
              ],
            },
          ],
          extra: {
            'variable': [
              {'key': 'baseUrl', 'value': 'https://api.x.io'},
              {'key': 'token', 'value': '{{raw_thing}}'},
              {'key': 'raw_thing', 'value': 'SK_RAWREF'},
              {'key': 'authKey', 'value': '{{prefix}}SK_TAIL'},
              {'key': 'prefix', 'value': 'SK_PRE'},
              {'key': 'oauth_callback', 'value': '{{baseUrl}}/callback'},
              {'key': 'session_token', 'value': '/path'},
            ],
          },
        ),
      );
      final output = jsonEncode(document);
      expect(output, isNot(contains('SK_')));
      expect(output, contains('"default":"https://api.x.io"'));
      expect(output, contains('"example":"https://api.x.io/callback"'));
    });

    test('the title loses secret values', () {
      final document = convert({
        'info': {'name': 'x SK_N', 'schema': v21},
        'item': [request('A', 'GET', 'https://x.io/a')],
        'auth': {
          'type': 'bearer',
          'bearer': [
            {'key': 'token', 'value': 'SK_N'},
          ],
        },
      });
      expect((document['info']! as Map)['title'], 'x ***');
    });

    test('URL-encoded text with non-UTF-8 escapes keeps them as written', () {
      final document = convert(
        collection([
          request(
            'Form',
            'POST',
            'https://x.io/f',
            fields: {
              'header': [
                {
                  'key': 'Content-Type',
                  'value': 'application/x-www-form-urlencoded',
                },
              ],
              'body': {'mode': 'raw', 'raw': 'a=%ff&b=1&c=%e2%82'},
            },
            response: [
              {
                'name': 'ok',
                'code': 200,
                'header': [
                  {
                    'key': 'Content-Type',
                    'value': 'application/x-www-form-urlencoded',
                  },
                ],
                'body': 'a=Jos%E9',
              },
            ],
          ),
        ]),
      );
      final post = operation(document, '/f', 'post');
      final form =
          ((post['requestBody']! as Map)['content']!
                  as Map)['application/x-www-form-urlencoded']!
              as Map;
      expect(((form['examples']! as Map)['Form']! as Map)['value'], {
        'a': '%ff',
        'b': 1,
        'c': '%e2%82',
      });
    });

    test('request and folder names lose secret values', () {
      final document = convert(
        collection(
          [
            {
              'name': 'Folder SECRET-tok',
              'item': [
                request(
                  'Token SECRET-tok',
                  'POST',
                  'https://x.io/t',
                  fields: {
                    'body': json({'a': 1}),
                  },
                ),
              ],
            },
          ],
          extra: {
            'auth': {
              'type': 'bearer',
              'bearer': [
                {'key': 'token', 'value': 'SECRET-tok'},
              ],
            },
          },
        ),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      final post = operation(document, '/t', 'post');
      expect(post['summary'], 'Token ***');
      expect(post['operationId'], 'token');
    });

    test('raw urlencoded bodies are scrubbed field by field', () {
      final document = convert(
        collection([
          request(
            'Token',
            'POST',
            'https://x.io/token',
            fields: {
              'header': [
                {
                  'key': 'Content-Type',
                  'value': 'application/x-www-form-urlencoded',
                },
              ],
              'body': {
                'mode': 'raw',
                'raw':
                    'grant_type=password&client_id=app&'
                    'client_secret=SECRET-client&password=SECRET-pass'
                    '&username=alice%40x.io&scope=a+b&flag&bad=%zz',
              },
            },
            response: [
              {
                'name': 'ok',
                'code': 200,
                'header': [
                  {
                    'key': 'Content-Type',
                    'value': 'application/x-www-form-urlencoded',
                  },
                ],
                'body': 'access_token=SECRET-access&expires_in=3600',
              },
            ],
          ),
        ]),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      final post = operation(document, '/token', 'post');
      final form =
          ((post['requestBody']! as Map)['content']!
                  as Map)['application/x-www-form-urlencoded']!
              as Map;
      expect(((form['schema']! as Map)['properties']! as Map).keys, [
        'grant_type',
        'client_id',
        'client_secret',
        'password',
        'username',
        'scope',
        'flag',
        'bad',
      ]);
      expect(((form['examples']! as Map)['Token']! as Map)['value'], {
        'grant_type': 'password',
        'client_id': 'app',
        'username': 'alice@x.io',
        'scope': 'a b',
        'flag': '',
        'bad': '%zz',
      });
      final response =
          ((((post['responses']! as Map)['200']! as Map)['content']!
                      as Map)['application/x-www-form-urlencoded']!
                  as Map)['examples']!
              as Map;
      expect((response['ok']! as Map)['value'], {'expires_in': 3600});
    });

    test('JSON strings with an embedded bearer token or JWT are dropped', () {
      const jwt = 'eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOjF9.SECRET-sig';
      final document = convert(
        collection([
          request(
            'Create',
            'POST',
            'https://x.io/a',
            fields: {
              'body': json({
                'note': 'use Bearer SECRET-abc to call',
                'link': 'https://x.io/?t=$jwt',
                'ok': 'fine',
              }),
            },
          ),
          request(
            'Text',
            'POST',
            'https://x.io/b',
            fields: {'body': json('call with Bearer SECRET-top')},
          ),
        ]),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
      final media =
          ((operation(document, '/a', 'post')['requestBody']!
                      as Map)['content']!
                  as Map)['application/json']!
              as Map;
      expect(((media['examples']! as Map)['Create']! as Map)['value'], {
        'ok': 'fine',
      });
    });

    test('saved example names lose secret values', () {
      final document = convert(
        collection(
          [
            request(
              'Get',
              'GET',
              'https://x.io/a',
              response: [
                {'name': 'with SECRET-token', 'code': 200, 'body': 'ok'},
              ],
            ),
          ],
          extra: {
            'auth': {
              'type': 'bearer',
              'bearer': [
                {'key': 'token', 'value': 'SECRET-token'},
              ],
            },
          },
        ),
      );
      expect(jsonEncode(document), isNot(contains('SECRET')));
    });
  });

  group('variables', () {
    test('resolve in URLs, headers and bodies; folder and item variables '
        'override collection ones', () {
      final document = convert(
        collection(
          [
            {
              'name': 'Folder',
              'variable': [
                {'key': 'lang', 'value': 'en'},
              ],
              'item': [
                request(
                  'Get',
                  'POST',
                  'https://x.io/{{version}}/a?lang={{lang}}',
                  fields: {
                    'header': [
                      {'key': 'X-Count', 'value': '{{count}}'},
                    ],
                    'body': {
                      'mode': 'raw',
                      'raw': '{"count": {{count}}, "lang": "{{lang}}"}',
                    },
                  },
                  item: {
                    'variable': [
                      {'key': 'count', 'value': '3'},
                    ],
                  },
                ),
              ],
            },
          ],
          extra: {
            'variable': [
              {'key': 'version', 'value': 'v1'},
              {'key': 'lang', 'value': 'ar'},
              {'key': 'count', 'value': '1'},
            ],
          },
        ),
      );
      final get = operation(document, '/{version}/a', 'post');
      expect(
        [for (final p in parameters(get)) (p as Map)['example']],
        ['v1', 'en', '3'],
      );
      expect(
        ((get['requestBody']! as Map)['content']! as Map)['application/json'],
        {
          'schema': {
            'type': 'object',
            'properties': {
              'count': {'type': 'integer'},
              'lang': {'type': 'string'},
            },
          },
          'examples': {
            'Get': {
              'value': {'count': 3, 'lang': 'en'},
            },
          },
        },
      );
    });
  });

  test('v1, v2.0 and the API envelope convert too', () {
    final v20 = {
      'info': {
        'name': 'Old',
        'schema':
            'https://schema.getpostman.com/json/collection/v2.0.0/collection.json',
      },
      'item': [request('Get', 'GET', 'https://x.io/a')],
      'auth': {
        'type': 'apikey',
        'apikey': {'key': 'X-Key', 'value': 'SECRET', 'in': 'query'},
      },
    };
    final document = convert({'collection': v20});
    expect(document['components'], {
      'securitySchemes': {
        'apikey': {'type': 'apiKey', 'name': 'X-Key', 'in': 'query'},
      },
    });
    final v1 = convert({
      'id': 'c',
      'name': 'Legacy',
      'order': ['r'],
      'requests': [
        {
          'id': 'r',
          'name': 'Get',
          'method': 'GET',
          'url': 'https://x.io/a',
          'headers': '',
          'collectionId': 'c',
        },
      ],
    });
    expect(operation(v1, '/a', 'get')['operationId'], 'get');
  });
}
