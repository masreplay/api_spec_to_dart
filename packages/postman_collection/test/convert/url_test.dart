import 'package:postman_collection/src/convert/url.dart';
import 'package:test/test.dart';

void main() {
  test('string URL: origin, path template, path params and query', () {
    final url = parseUrl('{{baseUrl}}/users/:id?x=1#h');
    expect(url.origin, '{{baseUrl}}');
    expect(url.path, '/users/{id}');
    expect(url.pathParams, ['id']);
    expect(url.query, [
      {'key': 'x', 'value': '1'},
    ]);
  });

  test('object URL: host and path arrays, {{id}} and {type, value} '
      'segments, trailing slash kept', () {
    final url = parseUrl({
      'raw': 'https://api.example.com/users/{{id}}/files/',
      'protocol': 'https',
      'host': ['api', 'example', 'com'],
      'path': [
        'users',
        '{{id}}',
        {'type': 'string', 'value': 'files'},
        '',
      ],
      'query': [
        {'key': 'a', 'value': null, 'disabled': true},
      ],
      'variable': [
        {'key': 'id', 'value': '1'},
      ],
    });
    expect(url.origin, 'https://api.example.com');
    expect(url.path, '/users/{id}/files/');
    expect(url.pathParams, ['id']);
    expect(url.query, [
      {'key': 'a', 'value': null, 'disabled': true},
    ]);
    expect(url.variables, [
      {'key': 'id', 'value': '1'},
    ]);
  });

  test('duplicate path variables get suffixes', () {
    final url = parseUrl('https://x.io/a/:id/b/:id/{{id}}');
    expect(url.path, '/a/{id}/b/{id2}/{id3}');
    expect(url.pathParams, ['id', 'id2', 'id3']);
  });

  test('an empty path is /', () {
    expect(parseUrl('https://x.io').path, '/');
    expect(parseUrl('https://x.io/').path, '/');
    expect(
      parseUrl({
        'host': ['x', 'io'],
      }).path,
      '/',
    );
    expect(parseUrl(null).path, '/');
    expect(parseUrl(42).origin, '');
  });

  test('protocol and port', () {
    final url = parseUrl({
      'protocol': 'http',
      'host': 'localhost',
      'port': '8080',
      'path': '/api/v1',
    });
    expect(url.origin, 'http://localhost:8080');
    expect(url.path, '/api/v1');
  });

  test('origins: default scheme, userinfo dropped, variables kept', () {
    expect(parseUrl('localhost:3000/api').origin, 'http://localhost:3000');
    expect(parseUrl('https://user:p@ss@x.io/a').origin, 'https://x.io');
    expect(parseUrl({'protocol': 5, 'host': 'x.io'}).origin, 'http://x.io');
    expect(parseUrl('/relative/path').origin, '');
    expect(
      parseUrl('{{protocol}}://{{host}}:{{port}}/a').origin,
      '{{protocol}}://{{host}}:{{port}}',
    );
    expect(parseUrl('{{host}}:{{port}}/a').origin, 'http://{{host}}:{{port}}');
  });

  test('an object URL without host, path or query falls back to raw', () {
    final url = parseUrl({'raw': ' {{baseUrl}}/a?b=2&c&=3 '});
    expect(url.origin, '{{baseUrl}}');
    expect(url.path, '/a');
    expect(url.query, [
      {'key': 'b', 'value': '2'},
      {'key': 'c', 'value': null},
      {'key': '', 'value': '3'},
    ]);
  });

  test('variables inside a segment are templated', () {
    final url = parseUrl('{{base}}/v{{version}}/items');
    expect(url.path, '/v{version}/items');
    expect(url.pathParams, ['version']);
  });
}
