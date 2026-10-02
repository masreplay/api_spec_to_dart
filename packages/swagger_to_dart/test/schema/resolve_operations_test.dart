import 'dart:convert';

import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

const _id = {
  'name': 'id',
  'in': 'path',
  'required': true,
  'schema': {'type': 'integer'},
};
const _pageSize = {
  'name': 'pageSize',
  'in': 'query',
  'schema': {'type': 'integer'},
};

Map<String, dynamic> _spec(
  Map<String, dynamic> pathItem, {
  Map<String, dynamic> components = const {},
}) => {
  'paths': {'/pets/{id}': pathItem},
  'components': components,
};

/// The path item of [_spec] after [resolveOperations].
Map<String, dynamic> _resolve(
  Map<String, dynamic> pathItem, {
  Map<String, dynamic> components = const {},
}) =>
    resolveOperations(
          _spec(pathItem, components: components),
        )['paths']['/pets/{id}']
        as Map<String, dynamic>;

void main() {
  test('path items keep only their operations', () {
    final item = _resolve({
      'summary': 'A pet',
      'description': 'One pet by id.',
      'servers': [
        {'url': 'https://example.com'},
      ],
      r'$ref': '#/components/pathItems/Pet',
      'x-internal': true,
      'get': <String, dynamic>{},
      'delete': <String, dynamic>{},
    });

    expect(item.keys, ['get', 'delete']);
  });

  test('OAS 3.2 query is an operation; pat is not', () {
    final item = _resolve({
      'query': <String, dynamic>{},
      'pat': <String, dynamic>{},
    });

    expect(item.keys, ['query']);
  });

  test('additionalOperations move to x-additional-operations, resolved like '
      'operations (G6)', () {
    final spec = resolveOperations(
      _spec(
        {
          'parameters': [_id],
          'get': <String, dynamic>{},
          'additionalOperations': {
            'PURGE': {
              'parameters': [
                {r'$ref': '#/components/parameters/PageSize'},
              ],
            },
            'LINK': <String, dynamic>{},
          },
        },
        components: {
          'parameters': {'PageSize': _pageSize},
        },
      ),
    );

    expect(spec['paths']['/pets/{id}'].keys, ['get']);
    expect(spec['x-additional-operations'], {
      '/pets/{id}': {
        'PURGE': {
          'parameters': [_id, _pageSize],
        },
        'LINK': {
          'parameters': [_id],
        },
      },
    });
    expect(
      OpenApi.fromJson(spec).additionalOperations?['/pets/{id}']?.keys,
      ['PURGE', 'LINK'],
    );
  });

  test('path-level parameters apply to every operation', () {
    final item = _resolve({
      'parameters': [_id],
      'get': {
        'parameters': [_pageSize],
      },
      'delete': <String, dynamic>{},
    });

    expect(item['get']['parameters'], [_id, _pageSize]);
    expect(item['delete']['parameters'], [_id]);
  });

  test('an operation parameter overrides the path one with its name + in', () {
    const idAsString = {
      'name': 'id',
      'in': 'path',
      'required': true,
      'schema': {'type': 'string'},
    };
    const pageSizeHeader = {'name': 'pageSize', 'in': 'header'};

    final item = _resolve({
      'parameters': [_id, _pageSize],
      'get': {
        'parameters': [pageSizeHeader, idAsString],
      },
    });

    expect(item['get']['parameters'], [_pageSize, pageSizeHeader, idAsString]);
  });

  test('resolves #/components/parameters refs, also through a ref', () {
    final item = _resolve(
      {
        'parameters': [
          {r'$ref': '#/components/parameters/Id'},
        ],
        'get': {
          'parameters': [
            {r'$ref': '#/components/parameters/Size'},
          ],
        },
      },
      components: {
        'parameters': {
          'Id': _id,
          'PageSize': _pageSize,
          'Size': {r'$ref': '#/components/parameters/PageSize'},
        },
      },
    );

    expect(item['get']['parameters'], [_id, _pageSize]);
  });

  test('resolves #/components/requestBodies and responses refs', () {
    const body = {
      'required': true,
      'content': {
        'application/json': {
          'schema': {r'$ref': '#/components/schemas/Pet'},
        },
      },
    };
    const notFound = {'description': 'Not found'};

    final item = _resolve(
      {
        'post': {
          'requestBody': {r'$ref': '#/components/requestBodies/PetBody'},
          'responses': {
            '200': {'description': 'OK'},
            '404': {r'$ref': '#/components/responses/NotFound'},
          },
        },
      },
      components: {
        'requestBodies': {'PetBody': body},
        'responses': {'NotFound': notFound},
      },
    );

    expect(item['post']['requestBody'], body);
    expect(item['post']['responses'], {
      '200': {'description': 'OK'},
      '404': notFound,
    });
  });

  test('an unresolvable ref throws, naming it', () {
    Map<String, dynamic> referencing(String ref) => _spec(
      {
        'get': {
          'parameters': [
            {r'$ref': ref},
          ],
        },
      },
      components: {
        'parameters': {
          'A': {r'$ref': '#/components/parameters/B'},
          'B': {r'$ref': '#/components/parameters/A'},
        },
      },
    );
    Matcher throwsNaming(String ref) => throwsA(
      isA<FormatException>().having((e) => e.message, 'message', contains(ref)),
    );

    expect(
      () => resolveOperations(referencing('#/components/parameters/Missing')),
      throwsNaming('#/components/parameters/Missing'),
    );
    expect(
      () => resolveOperations(referencing('#/components/parameters/A')),
      throwsNaming('#/components/parameters/A'),
    );
  });

  test('leaves its input unchanged', () {
    final spec = _spec(
      {
        'summary': 'A pet',
        'parameters': [
          {r'$ref': '#/components/parameters/Id'},
        ],
        'post': {
          'parameters': [_pageSize],
          'requestBody': {r'$ref': '#/components/requestBodies/PetBody'},
          'responses': {
            '404': {r'$ref': '#/components/responses/NotFound'},
          },
        },
      },
      components: {
        'parameters': {'Id': _id},
        'requestBodies': {
          'PetBody': {'content': <String, dynamic>{}},
        },
        'responses': {
          'NotFound': {'description': 'Not found'},
        },
      },
    );
    final before = jsonEncode(spec);

    resolveOperations(spec);

    expect(jsonEncode(spec), before);
  });
}
