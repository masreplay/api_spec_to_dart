import 'package:test/test.dart';

import 'examples_round_trip.dart';

Map<String, dynamic> _json(Object? example, Map<String, dynamic> schema) => {
  'content': {
    'application/json': {
      'schema': schema,
      'examples': {
        "Ada's": {'value': example},
      },
    },
  },
};

const _object = {
  'type': 'object',
  'properties': {
    'id': {'type': 'integer'},
  },
};

void main() {
  test('a test per JSON example of the success response', () {
    final source = examplesRoundTripTest({
      'paths': {
        '/users/{id}': {
          'get': {
            'tags': ['Users'],
            'operationId': 'getUser',
            'responses': {
              '200': _json({'id': 1}, _object),
              '404': _json({'id': 2}, _object),
            },
          },
        },
        '/users': {
          'get': {
            'operationId': 'listUsers',
            'responses': {
              '200': _json(
                [
                  {'id': 1},
                ],
                {'type': 'array', 'items': _object},
              ),
            },
          },
          'post': {
            'operationId': 'createUser',
            'responses': {
              '201': _json("'''", {'type': 'string'}),
            },
          },
        },
      },
    }, library: 'package:e2e/gen/x/gen.dart');

    expect(source, contains("import 'package:e2e/gen/x/gen.dart';"));
    expect(
      source,
      contains('''
  test('getUser 200 example Ada\\'s decodes', () {
    final json = jsonDecode(r\'\'\'{"id":1}\'\'\') as Map<String, dynamic>;
    final once = GetUserResponse.fromJson(json);
    final twice = GetUserResponse.fromJson(
      jsonDecode(jsonEncode(once.toJson())) as Map<String, dynamic>,
    );
    expect(twice, once);
  });
'''),
    );
    expect(source, contains("// getUser 404 example Ada's: skipped, "));
    expect(
      source,
      contains('''
  test('listUsers 200 example Ada\\'s decodes', () {
    for (final json in (jsonDecode(r\'\'\'[{"id":1}]\'\'\') as List)
        .whereType<Map<String, dynamic>>()) {
      final once = ListUsersResponseItem.fromJson(json);'''),
    );
    expect(source, contains("// createUser 201 example Ada's: skipped, "));
  });

  test("JSON containing ''' is a plain string literal", () {
    final source = examplesRoundTripTest({
      'paths': {
        '/a': {
          'get': {
            'operationId': 'a',
            'responses': {
              '200': _json({'q': "'''\$"}, _object),
            },
          },
        },
      },
    }, library: 'gen.dart');

    expect(source, contains(r"""jsonDecode('{"q":"\'\'\'\$"}')"""));
  });

  test('methods are named per client like the generator', () {
    Map<String, dynamic> op(String tag) => {
      'tags': [tag],
      'operationId': 'get',
      'responses': {
        '200': _json({'id': 1}, _object),
      },
    };
    final source = examplesRoundTripTest({
      'paths': {
        '/a': {'get': op('A')},
        '/b': {'get': op('A')},
        '/c': {'get': op('B')},
      },
    }, library: 'gen.dart');

    expect(
      RegExp(
        r'(\w+)\.fromJson\(json\)',
      ).allMatches(source!).map((m) => m[1]).toList(),
      ['GetResponse', 'Get2Response', 'GetResponse'],
    );
  });

  test('no examples, no test file', () {
    expect(
      examplesRoundTripTest({'paths': <String, dynamic>{}}, library: 'g'),
      isNull,
    );
  });
}
