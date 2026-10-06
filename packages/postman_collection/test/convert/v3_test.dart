import 'package:postman_collection/convert.dart';
import 'package:test/test.dart';

import '../support/official_schema.dart';

/// The worked example of Postman's `collection-schema-v3` skill, plus
/// examples, GraphQL, gRPC, nested ordered folders and collection metadata.
const files = {
  '.resources/definition.yaml': r'''
$kind: collection
name: Bookstore API
description: Books and authors
variables:
  - key: base_url
    value: 'https://api.bookstore.com/v1'
  - key: token
    value: 'abc'
    disabled: true
auth:
  type: bearer
  credentials:
    - key: token
      value: '{{token}}'
''',
  'get all books.request.yaml': r'''
$kind: http-request
method: GET
url: '{{base_url}}/books'
order: 1000
queryParams:
  - key: limit
    value: '10'
    description: Page size
examples: './.resources/get all books.resources/examples/'
''',
  'get-book-by-id.request.yaml': r'''
$kind: http-request
name: 'get book by :id'
method: GET
url: '{{base_url}}/books/:id'
order: 2000
pathVariables:
  - key: id
    value: '1'
''',
  'add new book.request.yaml': r'''
$kind: http-request
method: POST
url: '{{base_url}}/books'
order: 3000
headers:
  - key: Content-Type
    value: application/json
body:
  type: json
  content: |-
    {
      "title": "Example Book",
      "author": "Jane Doe"
    }
''',
  '.resources/get all books.resources/examples/200 OK.example.yaml': r'''
$kind: http-example
order: 2
request:
  url: '{{base_url}}/books?limit=10'
  method: GET
response:
  statusCode: 200
  statusText: OK
  headers:
    - key: Content-Type
      value: application/json
  body:
    type: json
    content: '[{"title": "Example Book"}]'
''',
  '.resources/get all books.resources/examples/500 Error.example.yaml': r'''
$kind: http-example
name: Server error
order: 1
response:
  statusCode: 500
  body:
    type: text
    content: oops
''',
  'search.request.yaml': r'''
$kind: graphql-request
url: '{{base_url}}/graphql'
order: 4000
query: |-
  query Books($q: String) { books(q: $q) { title } }
variables: '{"q": "dune"}'
''',
  'stream.request.yaml': r'''
$kind: grpc-request
url: 'grpc.bookstore.com'
methodPath: books.Books/Stream
''',
  'broken.request.yaml': 'url: [unclosed',
  'authentication/.resources/definition.yaml': r'''
$kind: collection
name: Auth
description: Sign in and up
order: 500
auth:
  type: noauth
''',
  'authentication/login.request.yaml': r'''
$kind: http-request
method: POST
url: '{{base_url}}/login'
order: 2
auth:
  - id: a1
    name: Key
    type: apikey
    credentials:
      - key: key
        value: X-Api-Key
      - key: value
        value: secret
  - id: a2
    type: basic
    credentials: []
body:
  type: formdata
  content:
    - key: user
      type: text
      value: jane
    - key: avatar
      type: file
      src: ./avatar.png
''',
  'authentication/signup.request.yaml': r'''
$kind: http-request
method: POST
url: '{{base_url}}/signup'
order: 1
body:
  type: urlencoded
  content:
    - key: email
      value: jane@example.com
''',
  'authentication/tokens/refresh.request.yaml': r'''
$kind: http-request
method: POST
url: '{{base_url}}/tokens/refresh'
body:
  type: none
''',
  'misc/upload.request.yaml': r'''
$kind: http-request
method: PUT
url: '{{base_url}}/upload'
body:
  type: file
  content: ./book.pdf
''',
};

void main() {
  late List<String> warnings;
  late Map<String, Object?> collection;
  late Map<String, Map<Object?, Object?>> items;
  setUp(() {
    warnings = [];
    collection = postmanCollectionFromV3Files(
      files,
      name: 'bookstore api',
      onWarning: warnings.add,
    );
    items = {};
    void index(Object? list) {
      for (final item in list! as List) {
        items[(item as Map)['name'] as String] = item;
        if (item['item'] != null) index(item['item']);
      }
    }

    index(collection['item']);
  });

  Map<Object?, Object?> request(String name) => items[name]!['request']! as Map;

  test('the result validates against the official v2.1 schema', () {
    expectValid(officialSchema('postman/v2.1.0/collection.json'), collection);
  });

  test('definition.yaml: name, description, variables and auth', () {
    expect(collection['info'], {
      'name': 'Bookstore API',
      'description': 'Books and authors',
      'schema':
          'https://schema.getpostman.com/json/collection/v2.1.0/collection.json',
    });
    expect(collection['variable'], [
      {'key': 'base_url', 'value': 'https://api.bookstore.com/v1'},
      {'key': 'token', 'value': 'abc', 'disabled': true},
    ]);
    expect(collection['auth'], {
      'type': 'bearer',
      'bearer': [
        {'key': 'token', 'value': '{{token}}'},
      ],
    });
  });

  test('folders and requests ordered by order, then name; non-HTTP and '
      'unreadable requests skipped with warnings', () {
    List<Object?> names(Object? list) => [
      for (final item in list! as List)
        if ((item as Map)['item'] case final List<Object?> children)
          {item['name']: names(children)}
        else
          item['name'],
    ];
    expect(names(collection['item']), [
      {
        'Auth': [
          'signup',
          'login',
          {
            'tokens': ['refresh'],
          },
        ],
      },
      'get all books',
      'get book by :id',
      'add new book',
      'search',
      {
        'misc': ['upload'],
      },
    ]);
    expect(warnings, [
      contains('broken.request.yaml'),
      contains('grpc-request'),
    ]);
    expect(items['Auth']!['description'], 'Sign in and up');
    expect(items['Auth']!['auth'], {'type': 'noauth'});
  });

  test('http-request: url, query params, path variables, headers, body', () {
    expect(request('get all books'), {
      'method': 'GET',
      'url': {
        'raw': '{{base_url}}/books',
        'query': [
          {'key': 'limit', 'value': '10', 'description': 'Page size'},
        ],
      },
    });
    expect(request('get book by :id')['url'], {
      'raw': '{{base_url}}/books/:id',
      'variable': [
        {'key': 'id', 'value': '1'},
      ],
    });
    expect(request('add new book')['header'], [
      {'key': 'Content-Type', 'value': 'application/json'},
    ]);
    expect(request('add new book')['body'], {
      'mode': 'raw',
      'raw': '{\n  "title": "Example Book",\n  "author": "Jane Doe"\n}',
      'options': {
        'raw': {'language': 'json'},
      },
    });
    expect(request('signup')['body'], {
      'mode': 'urlencoded',
      'urlencoded': [
        {'key': 'email', 'value': 'jane@example.com'},
      ],
    });
    expect(request('login')['body'], {
      'mode': 'formdata',
      'formdata': [
        {'key': 'user', 'type': 'text', 'value': 'jane'},
        {'key': 'avatar', 'type': 'file', 'src': './avatar.png'},
      ],
    });
    expect(request('upload')['body'], {
      'mode': 'file',
      'file': {'src': './book.pdf'},
    });
    expect(request('refresh').containsKey('body'), isFalse);
  });

  test('multi-auth keeps the first entry', () {
    expect(request('login')['auth'], {
      'type': 'apikey',
      'apikey': [
        {'key': 'key', 'value': 'X-Api-Key'},
        {'key': 'value', 'value': 'secret'},
      ],
    });
  });

  test('graphql-request becomes a POST with a graphql body', () {
    expect(request('search'), {
      'method': 'POST',
      'url': '{{base_url}}/graphql',
      'body': {
        'mode': 'graphql',
        'graphql': {
          'query': r'query Books($q: String) { books(q: $q) { title } }',
          'variables': '{"q": "dune"}',
        },
      },
    });
  });

  test('examples become saved responses, ordered', () {
    expect(items['get all books']!['response'], [
      {
        'name': 'Server error',
        'code': 500,
        'body': 'oops',
        '_postman_previewlanguage': 'text',
      },
      {
        'name': '200 OK',
        'originalRequest': {
          'method': 'GET',
          'url': '{{base_url}}/books?limit=10',
        },
        'code': 200,
        'status': 'OK',
        'header': [
          {'key': 'Content-Type', 'value': 'application/json'},
        ],
        'body': '[{"title": "Example Book"}]',
        '_postman_previewlanguage': 'json',
      },
    ]);
  });

  test('a folder with only a definition is an empty item-group', () {
    expect(
      postmanCollectionFromV3Files({
        'a.request.yaml': "\$kind: http-request\nurl: 'https://x.io/a'",
        'empty/.resources/definition.yaml':
            '\$kind: collection\nname: Later\ndescription: Nothing yet\n'
            'order: 1',
        'nested/deeper/.resources/definition.yaml': '\$kind: collection',
      })['item'],
      [
        {'name': 'Later', 'description': 'Nothing yet', 'item': []},
        {
          'name': 'a',
          'request': {'url': 'https://x.io/a'},
        },
        {
          'name': 'nested',
          'item': [
            {'name': 'deeper', 'item': []},
          ],
        },
      ],
    );
  });

  test('without a definition the name comes from the argument', () {
    final collection = postmanCollectionFromV3Files({
      'a.request.yaml': "\$kind: http-request\nurl: 'https://x.io/a'",
    }, name: 'my api');
    expect((collection['info'] as Map)['name'], 'my api');
    expect(
      (postmanCollectionFromV3Files({})['info'] as Map)['name'],
      'Collection',
    );
  });
}
