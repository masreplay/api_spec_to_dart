import 'package:postman_collection/src/convert/body.dart';
import 'package:test/test.dart';

Map<String, Object?>? requestBody(
  Object? body, {
  Object? headers,
  Map<String, String> variables = const {},
  List<String>? warnings,
}) => (RequestBodies(
  onWarning: warnings?.add,
)..add(body, headers: headers, variables: variables, name: 'Example')).toJson();

Map<String, Object?> raw(String text, [String? language]) => {
  'mode': 'raw',
  'raw': text,
  if (language != null)
    'options': {
      'raw': {'language': language},
    },
};

void main() {
  test('raw json: inferred schema and the substituted example', () {
    expect(
      requestBody(
        raw('{"id": 1, "name": "{{name}}"}', 'json'),
        variables: {'name': 'Ann'},
      ),
      {
        'content': {
          'application/json': {
            'schema': {
              'type': 'object',
              'properties': {
                'id': {'type': 'integer'},
                'name': {'type': 'string'},
              },
            },
            'examples': {
              'Example': {
                'value': {'id': 1, 'name': 'Ann'},
              },
            },
          },
        },
      },
    );
  });

  test('raw json takes the media type of an enabled Content-Type header', () {
    final content =
        requestBody(
              raw('{"a": true}', 'json'),
              headers: [
                {
                  'key': 'content-type',
                  'value': 'text/plain',
                  'disabled': true,
                },
                {
                  'key': 'Content-Type',
                  'value': 'application/vnd.api+json; charset=utf-8',
                },
              ],
            )!['content']!
            as Map;
    expect(content.keys, ['application/vnd.api+json']);
    expect((content['application/vnd.api+json'] as Map)['schema'], {
      'type': 'object',
      'properties': {
        'a': {'type': 'boolean'},
      },
    });
    expect(
      (requestBody(
                raw('{"a": 1}'),
                headers: 'Content-Type: text/json',
              )!['content']
              as Map)
          .keys,
      ['text/json'],
    );
  });

  test('xml, text, html and javascript are strings under their media type', () {
    for (final (language, mediaType) in [
      ('xml', 'application/xml'),
      ('text', 'text/plain'),
      ('html', 'text/html'),
      ('javascript', 'application/javascript'),
    ]) {
      expect(
        requestBody(raw('<a>{{v}}</a>', language), variables: {'v': '1'}),
        {
          'content': {
            mediaType: {
              'schema': {'type': 'string'},
              'examples': {
                'Example': {'value': '<a>1</a>'},
              },
            },
          },
        },
      );
    }
  });

  test('raw without language or header is sniffed', () {
    expect((requestBody(raw('[1, 2]'))!['content'] as Map).keys, [
      'application/json',
    ]);
    expect((requestBody(raw('hello'))!['content'] as Map).keys, ['text/plain']);
  });

  test('invalid json falls back to an object and warns', () {
    final warnings = <String>[];
    final content =
        requestBody(raw('{"a": }', 'json'), warnings: warnings)!['content']
            as Map;
    expect((content['application/json'] as Map)['schema'], {'type': 'object'});
    expect(warnings, hasLength(1));
  });

  test('urlencoded: an object whose values are inferred', () {
    expect(
      requestBody(
        {
          'mode': 'urlencoded',
          'urlencoded': [
            {'key': 'page', 'value': '{{page}}'},
            {'key': 'q', 'value': 'abc', 'description': 'Search'},
            {'key': 'flag', 'value': 'true', 'disabled': true},
            {'key': 'phone', 'value': '0770'},
            {'key': '', 'value': 'skipped'},
            {'value': 'skipped'},
          ],
        },
        variables: {'page': '1'},
      ),
      {
        'content': {
          'application/x-www-form-urlencoded': {
            'schema': {
              'type': 'object',
              'properties': {
                'page': {'type': 'integer'},
                'q': {'type': 'string', 'description': 'Search'},
                'flag': {'type': 'boolean'},
                'phone': {'type': 'string'},
              },
            },
            'examples': {
              'Example': {
                'value': {'page': 1, 'q': 'abc', 'flag': true, 'phone': '0770'},
              },
            },
          },
        },
      },
    );
  });

  test('formdata: text parts inferred, file parts binary (arrays for src '
      'lists), contentType as encoding', () {
    expect(
      requestBody({
        'mode': 'formdata',
        'formdata': [
          {'key': 'name', 'value': 'Ann', 'type': 'text'},
          {
            'key': 'meta',
            'value': '{"a": 1}',
            'type': 'text',
            'contentType': 'application/json',
          },
          {
            'key': 'avatar',
            'type': 'file',
            'src': '/tmp/a.png',
            'description': {'content': 'Face'},
          },
          {
            'key': 'docs',
            'type': 'file',
            'src': ['/a', '/b'],
          },
          {'key': 'tags', 'value': 'a', 'type': 'text'},
          {'key': 'tags', 'value': 'b', 'type': 'text'},
        ],
      }),
      {
        'content': {
          'multipart/form-data': {
            'schema': {
              'type': 'object',
              'properties': {
                'name': {'type': 'string'},
                'meta': {'type': 'string'},
                'avatar': {
                  'type': 'string',
                  'format': 'binary',
                  'description': 'Face',
                },
                'docs': {
                  'type': 'array',
                  'items': {'type': 'string', 'format': 'binary'},
                },
                'tags': {
                  'type': 'array',
                  'items': {'type': 'string'},
                },
              },
            },
            'encoding': {
              'meta': {'contentType': 'application/json'},
            },
            'examples': {
              'Example': {
                'value': {
                  'name': 'Ann',
                  'meta': '{"a": 1}',
                  'tags': ['a', 'b'],
                },
              },
            },
          },
        },
      },
    );
  });

  test('file: binary under octet-stream or the Content-Type header', () {
    const binary = {
      'schema': {'type': 'string', 'format': 'binary'},
    };
    final file = {
      'mode': 'file',
      'file': {'src': '/tmp/x.bin'},
    };
    expect(requestBody(file), {
      'content': {'application/octet-stream': binary},
    });
    expect(
      requestBody(
        file,
        headers: [
          {'key': 'Content-Type', 'value': 'image/png'},
        ],
      ),
      {
        'content': {'image/png': binary},
      },
    );
  });

  test('graphql: query, inferred variables (given as a string) and '
      'operationName', () {
    expect(
      requestBody(
        {
          'mode': 'graphql',
          'graphql': {
            'query': 'query Me(\$id: ID) { me(id: \$id) { id } }',
            'variables': '{"id": {{id}}}',
            'operationName': 'Me',
          },
        },
        variables: {'id': '7'},
      ),
      {
        'content': {
          'application/json': {
            'schema': {
              'type': 'object',
              'properties': {
                'query': {'type': 'string'},
                'variables': {
                  'type': 'object',
                  'properties': {
                    'id': {'type': 'integer'},
                  },
                },
                'operationName': {'type': 'string'},
              },
            },
            'examples': {
              'Example': {
                'value': {
                  'query': 'query Me(\$id: ID) { me(id: \$id) { id } }',
                  'variables': {'id': 7},
                  'operationName': 'Me',
                },
              },
            },
          },
        },
      },
    );
  });

  test('disabled, null, empty and unknown bodies give no request body', () {
    expect(requestBody({...raw('{"a": 1}', 'json'), 'disabled': true}), isNull);
    expect(requestBody(null), isNull);
    expect(requestBody(raw('  ')), isNull);
    expect(requestBody({'mode': 'raw'}), isNull);
    expect(requestBody({'mode': 'formdata', 'formdata': []}), isNull);
    expect(requestBody('junk'), isNull);
  });

  test('a body without mode uses the field it has', () {
    expect((requestBody({'raw': '{"a": 1}'})!['content'] as Map).keys, [
      'application/json',
    ]);
  });

  test('bodies merge by media type; examples are keyed by name', () {
    final bodies = RequestBodies()
      ..add(raw('{"phone": "1", "password": "x"}', 'json'), name: 'By phone')
      ..add(
        raw('{"email": "a@b.c", "password": "x"}', 'json'),
        name: 'By email',
      )
      ..add(
        raw('{"email": "a@b.c", "password": "x"}', 'json'),
        name: 'Duplicate',
      )
      ..add(raw('{"email": "z@b.c"}', 'json'), name: 'By email');
    final media =
        (bodies.toJson()!['content'] as Map)['application/json'] as Map;
    expect((media['schema'] as Map)['properties'], {
      'phone': {'type': 'string'},
      'password': {'type': 'string'},
      'email': {'type': 'string'},
    });
    expect((media['examples'] as Map).keys, [
      'By phone',
      'By email',
      'By email 2',
    ]);
  });
}
