import 'dart:convert';

import 'package:postman_collection/convert.dart';
import 'package:test/test.dart';

const v21Schema =
    'https://schema.getpostman.com/json/collection/v2.1.0/collection.json';

Map<String, Object?> v2(String version, List<Object?> item) => {
  'info': {
    'name': 'C',
    'schema':
        'https://schema.getpostman.com/json/collection/v$version/collection.json',
  },
  'item': item,
};

Map<String, Object?> v1Request(
  String id, [
  Map<String, Object?> fields = const {},
]) => {
  'id': id,
  'name': id,
  'collectionId': 'c1',
  'method': 'GET',
  'url': 'https://x.io/$id',
  'headers': '',
  ...fields,
};

void main() {
  group('detection', () {
    test('v1, v2.0, v2.1 and the API envelope are collections', () {
      expect(
        isPostmanCollection({
          'id': 'c',
          'name': 'n',
          'order': [],
          'requests': [],
        }),
        isTrue,
      );
      expect(isPostmanCollection(v2('2.0.0', [])), isTrue);
      expect(isPostmanCollection(v2('2.1.0', [])), isTrue);
      expect(isPostmanCollection({'collection': v2('2.1.0', [])}), isTrue);
      expect(
        isPostmanCollection({
          'info': {'name': 'no items', 'schema': v21Schema},
        }),
        isTrue,
      );
    });

    test('other documents are not', () {
      expect(
        isPostmanCollection({
          'openapi': '3.1.0',
          'info': {'title': 't', 'version': '1'},
          'paths': {},
        }),
        isFalse,
      );
      expect(isPostmanCollection({'requests': []}), isFalse);
      expect(isPostmanCollection(null), isFalse);
      expect(isPostmanCollection([]), isFalse);
      expect(() => normalizePostmanCollection(42), throwsFormatException);
    });
  });

  test('v2.1 is copied with the v2.1 schema; the envelope is unwrapped', () {
    final collection = v2('2.1.0', [
      {'name': 'r', 'request': 'https://x.io'},
    ]);
    expect(normalizePostmanCollection(collection), collection);
    expect(normalizePostmanCollection({'collection': collection}), collection);
  });

  test('v2.0 auth objects become attribute arrays everywhere', () {
    Map<String, Object?> basic() => {
      'type': 'basic',
      'basic': {'username': 'u', 'password': 'p', 'showPassword': false},
    };
    const basicV21 = {
      'type': 'basic',
      'basic': [
        {'key': 'username', 'value': 'u', 'type': 'string'},
        {'key': 'password', 'value': 'p', 'type': 'string'},
        {'key': 'showPassword', 'value': false, 'type': 'boolean'},
      ],
    };
    final collection = normalizePostmanCollection({
      ...v2('2.0.0', [
        {
          'name': 'folder',
          'auth': basic(),
          'item': [
            {
              'name': 'r',
              'request': {'url': 'https://x.io', 'auth': basic()},
              'response': [
                {
                  'name': 'ok',
                  'originalRequest': {'url': 'https://x.io', 'auth': basic()},
                },
              ],
            },
          ],
        },
      ]),
      'auth': {
        'type': 'apikey',
        'apikey': {'key': 'X-Key', 'value': 'v', 'in': 'header', 'n': 1},
      },
    });
    expect((collection['info'] as Map)['schema'], v21Schema);
    expect(collection['auth'], {
      'type': 'apikey',
      'apikey': [
        {'key': 'key', 'value': 'X-Key', 'type': 'string'},
        {'key': 'value', 'value': 'v', 'type': 'string'},
        {'key': 'in', 'value': 'header', 'type': 'string'},
        {'key': 'n', 'value': 1, 'type': 'number'},
      ],
    });
    final folder = (collection['item'] as List).single as Map;
    expect(folder['auth'], basicV21);
    final item = (folder['item'] as List).single as Map;
    expect((item['request'] as Map)['auth'], basicV21);
    final response = (item['response'] as List).single as Map;
    expect((response['originalRequest'] as Map)['auth'], basicV21);
  });

  group('v1', () {
    final v1 = {
      'id': 'c1',
      'name': 'Legacy',
      'description': 'Old export',
      'timestamp': 1400000000,
      'variables': [
        {'key': 'baseUrl', 'value': 'https://api.example.com', 'type': 'text'},
      ],
      'auth': {
        'type': 'bearer',
        'bearer': [
          {'key': 'token', 'value': 't', 'type': 'string'},
        ],
      },
      'order': ['raw', 'missing'],
      'folders_order': ['users'],
      'folders': [
        {
          'id': 'users',
          'name': 'Users',
          'description': 'User calls',
          'order': ['params'],
          'folders_order': ['admin'],
          'collection_id': 'c1',
          'variables': [
            {'id': 'role', 'value': 'admin'},
          ],
        },
        {
          'id': 'admin',
          'name': 'Admin',
          'description': '',
          'order': ['urlencoded'],
        },
      ],
      'requests': [
        v1Request('raw', {
          'name': 'Create user',
          'method': 'POST',
          'url': '{{baseUrl}}/users/:id?verbose=1',
          'description': 'Creates',
          'descriptionFormat': 'markdown',
          'headers': 'Content-Type: application/json\n// X-Debug: 1\n',
          'dataMode': 'raw',
          'rawModeData': '{"name": "a"}',
          'pathVariables': {'id': '7', 'other': 'x'},
          'pathVariableData': [
            {'key': 'id', 'value': '7', 'description': 'User id'},
          ],
          'queryParams': [
            {
              'key': 'verbose',
              'value': '1',
              'enabled': false,
              'description': 'More',
            },
          ],
          'tests': 'pm.test("ok")\npm.expect(1)',
          'preRequestScript': 'setup()',
          'responses_order': ['r2', 'r1'],
          'responses': [
            {
              'id': 'r1',
              'name': 'Created',
              'request': 'raw',
              'responseCode': {'code': 201, 'name': 'Created', 'detail': 'd'},
              'headers': [
                {
                  'key': 'X-Id',
                  'value': '7',
                  'name': 'X-Id',
                  'description': 'Id',
                },
              ],
              'cookies': [],
              'text': '{"id": 7}',
              'language': 'javascript',
              'mime': 'application/json',
              'time': 12,
            },
            {
              'id': 'r2',
              'name': 'Bad',
              'request': {
                'url': '{{baseUrl}}/users/:id',
                'method': 'POST',
                'headers': '',
                'dataMode': 'raw',
                'rawModeData': '{}',
              },
              'status': 'Bad Request',
              'responseCode': {'code': 400, 'name': 'Bad Request'},
              'headers': [],
              'text': 'no',
            },
          ],
        }),
        v1Request('params', {
          'method': 'POST',
          'dataMode': 'params',
          'data': [
            {
              'key': 'avatar',
              'value': '/a.png',
              'type': 'file',
              'enabled': true,
            },
            {
              'key': 'note',
              'value': 'n',
              'type': 'text',
              'enabled': false,
              'description': '',
            },
            {'value': 'no key', 'type': 'text'},
          ],
          'currentHelper': 'apikeyAuth',
          'helperAttributes': {
            'id': 'apikey',
            'key': 'X-Key',
            'value': 's',
            'in': 'header',
          },
        }),
        v1Request('urlencoded', {
          'dataMode': 'urlencoded',
          'data': [
            {'key': 'q', 'value': 'x', 'type': 'text'},
          ],
          'headerData': [
            {'key': 'Accept', 'value': 'text/plain', 'enabled': true},
          ],
          'headers': 'Accept: application/json\nX-A: 1',
          'events': [
            {
              'listen': 'test',
              'script': {'exec': 'a\nb'},
            },
          ],
        }),
        v1Request('binary', {
          'folder': 'admin',
          'dataMode': 'binary',
          'rawModeData': '/file.bin',
          'dataDisabled': true,
        }),
        v1Request('graphql', {
          'dataMode': 'graphql',
          'graphqlModeData': {'query': '{ me }', 'variables': ''},
          'dataOptions': {
            'graphql': {'x': 1},
          },
        }),
        v1Request('inferred', {'rawModeData': '{"a": 1}'}),
        v1Request('nobody', {'dataMode': null, 'rawModeData': 'ignored'}),
        v1Request('mismatch', {'dataMode': 'params', 'rawModeData': 'text'}),
      ],
    };

    late Map<String, Object?> collection;
    late Map<String, Map<Object?, Object?>> items;
    setUp(() {
      collection = normalizePostmanCollection(v1);
      items = {};
      void index(Object? list) {
        for (final item in list! as List) {
          items[(item as Map)['name'] as String] = item;
          if (item['item'] != null) index(item['item']);
        }
      }

      index(collection['item']);
    });

    Map<Object?, Object?> request(String name) =>
        items[name]!['request']! as Map;

    test('collection fields', () {
      expect(collection['info'], {
        '_postman_id': 'c1',
        'name': 'Legacy',
        'description': 'Old export',
        'schema': v21Schema,
      });
      expect(collection['variable'], [
        {
          'key': 'baseUrl',
          'value': 'https://api.example.com',
          'type': 'string',
        },
      ]);
      expect(collection['auth'], v1['auth']);
    });

    test('folders and requests follow folders_order and order; orphans are '
        'kept in their folder or the root', () {
      List<Object?> names(Object? list) => [
        for (final item in list! as List)
          if ((item as Map)['item'] case final List<Object?> children)
            {item['name']: names(children)}
          else
            item['name'],
      ];
      expect(names(collection['item']), [
        {
          'Users': [
            {
              'Admin': ['urlencoded', 'binary'],
            },
            'params',
          ],
        },
        'Create user',
        'graphql',
        'inferred',
        'nobody',
        'mismatch',
      ]);
      expect(items['Users'], containsPair('description', 'User calls'));
      expect(items['Users']!['variable'], [
        {'key': 'role', 'value': 'admin'},
      ]);
      expect(items['Admin']!.containsKey('description'), isFalse);
    });

    test('url, query params and path variables', () {
      expect(request('Create user')['url'], {
        'raw': '{{baseUrl}}/users/:id?verbose=1',
        'query': [
          {
            'key': 'verbose',
            'value': '1',
            'description': 'More',
            'disabled': true,
          },
        ],
        'variable': [
          {'key': 'id', 'value': '7', 'description': 'User id'},
          {'key': 'other', 'value': 'x'},
        ],
      });
      expect(request('params')['url'], 'https://x.io/params');
    });

    test('headers: headerData first, then the headers string', () {
      expect(request('Create user')['header'], [
        {'key': 'Content-Type', 'value': 'application/json'},
        {'key': 'X-Debug', 'value': '1', 'disabled': true},
      ]);
      expect(request('urlencoded')['header'], [
        {'key': 'Accept', 'value': 'text/plain'},
        {'key': 'X-A', 'value': '1'},
      ]);
    });

    test('dataMode params, urlencoded, raw, binary and graphql', () {
      expect(request('Create user')['body'], {
        'mode': 'raw',
        'raw': '{"name": "a"}',
      });
      expect(request('params')['body'], {
        'mode': 'formdata',
        'formdata': [
          {'key': 'avatar', 'type': 'file', 'src': '/a.png'},
          {'key': 'note', 'value': 'n', 'type': 'text', 'disabled': true},
        ],
      });
      expect(request('urlencoded')['body'], {
        'mode': 'urlencoded',
        'urlencoded': [
          {'key': 'q', 'value': 'x', 'type': 'text'},
        ],
      });
      expect(request('binary')['body'], {
        'mode': 'file',
        'file': {'src': '/file.bin'},
        'disabled': true,
      });
      expect(request('graphql')['body'], {
        'mode': 'graphql',
        'graphql': {'query': '{ me }', 'variables': ''},
        'options': {
          'graphql': {'x': 1},
        },
      });
      expect(request('inferred')['body'], {'mode': 'raw', 'raw': '{"a": 1}'});
      expect(request('nobody').containsKey('body'), isFalse);
      expect(request('mismatch')['body'], {'mode': 'formdata', 'formdata': []});
    });

    test('method, description and legacy helper auth', () {
      expect(request('Create user')['method'], 'POST');
      expect(request('Create user')['description'], 'Creates');
      expect(request('params')['auth'], {
        'type': 'apikey',
        'apikey': [
          {'key': 'key', 'value': 'X-Key', 'type': 'string'},
          {'key': 'value', 'value': 's', 'type': 'string'},
          {'key': 'in', 'value': 'header', 'type': 'string'},
        ],
      });
    });

    test('tests, preRequestScript and events become event', () {
      expect(items['Create user']!['event'], [
        {
          'listen': 'test',
          'script': {
            'type': 'text/javascript',
            'exec': ['pm.test("ok")', 'pm.expect(1)'],
          },
        },
        {
          'listen': 'prerequest',
          'script': {
            'type': 'text/javascript',
            'exec': ['setup()'],
          },
        },
      ]);
      expect(items['urlencoded']!['event'], [
        {
          'listen': 'test',
          'script': {
            'type': 'text/javascript',
            'exec': ['a', 'b'],
          },
        },
      ]);
    });

    test('responses follow responses_order with code, status, headers and '
        'body', () {
      final responses = items['Create user']!['response']! as List;
      expect(responses.map((r) => (r as Map)['name']), ['Bad', 'Created']);
      final created = responses[1] as Map;
      expect(created['code'], 201);
      expect(created['status'], 'Created');
      expect(created['header'], [
        {'key': 'X-Id', 'value': '7', 'description': 'Id'},
        {'key': 'Content-Type', 'value': 'application/json'},
      ]);
      expect(created['body'], '{"id": 7}');
      expect(created['_postman_previewlanguage'], 'javascript');
      expect(created['responseTime'], 12);
      expect(
        (created['originalRequest'] as Map)['url'],
        request('Create user')['url'],
      );
      final bad = responses[0] as Map;
      expect(bad['code'], 400);
      expect(bad['status'], 'Bad Request');
      expect((bad['originalRequest'] as Map)['body'], {
        'mode': 'raw',
        'raw': '{}',
      });
    });
  });

  test('v1 JSON text fields with out-of-range numbers normalize to an '
      'encodable collection', () {
    final collection = normalizePostmanCollection({
      'id': 'c',
      'name': 'n',
      'order': ['r'],
      'requests': [
        v1Request('r', {
          'url': 'https://x.io/:id',
          'pathVariables': '{"id": 1e999}',
          'currentHelper': 'basicAuth',
          'helperAttributes': '{"username": "u", "n": -1e999}',
          'responses': [
            {
              'id': 'x',
              'name': 'x',
              'request': '{"url": "https://x.io", "n": 1e999}',
            },
          ],
        }),
      ],
    });
    expect(() => jsonEncode(collection), returnsNormally);
  });
}
