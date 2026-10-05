import 'package:test/test.dart';

import 'official_schema.dart';

Map<String, Object?> document(Map<String, Object?> parameter) => {
  'openapi': '3.1.1',
  'info': {'title': 't', 'version': '1'},
  'paths': {
    '/a/{id}': {
      'get': {
        'parameters': [parameter],
        'responses': {
          'default': {
            'description': 'd',
            'headers': {
              'X-Rate': {
                'schema': {'type': 'string'},
                'example': '59',
              },
            },
          },
        },
      },
    },
  },
};

void main() {
  final oas31 = officialSchema('openapi/3.1/schema.json');

  test('dependentSchemas keep applying: example and explode are allowed', () {
    expectValid(
      oas31,
      document({
        'name': 'tag',
        'in': 'query',
        'schema': {
          'type': 'array',
          'items': {'type': 'string'},
        },
        'explode': true,
        'example': ['a', 'b'],
      }),
    );
  });

  test('dependentSchemas keep applying: path styles are still checked', () {
    expect(
      () => expectValid(
        oas31,
        document({
          'name': 'id',
          'in': 'path',
          'required': true,
          'style': 'form',
          'schema': {'type': 'string'},
        }),
      ),
      throwsStateError,
    );
  });
}
