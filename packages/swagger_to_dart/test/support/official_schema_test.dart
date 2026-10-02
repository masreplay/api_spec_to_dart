import 'package:test/test.dart';

import 'official_schema.dart';

/// The load-time rewrites keep the official schemas' checks, including the
/// ones OpenAPI 3.1 states with `dependentSchemas`.
void main() {
  final v31 = officialSchema('openapi/3.1/schema.json');

  Map<String, dynamic> withPathParameter(Map<String, dynamic> extra) => {
    'openapi': '3.1.0',
    'info': {'title': 'T', 'version': '1'},
    'paths': {
      '/a/{id}': {
        'get': {
          'parameters': [
            {
              'name': 'id',
              'in': 'path',
              'required': true,
              'schema': {'type': 'string'},
              ...extra,
            },
          ],
          'responses': {
            '200': {'description': 'OK'},
          },
        },
      },
    },
  };

  test('accepts a valid parameter style and example', () {
    expectValid(v31, withPathParameter({'style': 'simple', 'example': 'a'}));
  });

  test('rejects what dependentSchemas forbids', () {
    expect(
      () => expectValid(v31, withPathParameter({'style': 'deepObject'})),
      throwsStateError,
    );
    expect(
      () => expectValid(
        v31,
        withPathParameter({
          'example': 'a',
          'examples': {
            'one': {'value': 'a'},
          },
        }),
      ),
      throwsStateError,
    );
  });

  test('still rejects unknown keys', () {
    expect(
      () => expectValid(v31, withPathParameter({'bogus': true})),
      throwsStateError,
    );
  });
}
