import 'dart:io';

import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

import '../support/fixtures.dart';

/// A spec of GET operations `(path, tag, operationId, response schema)`.
Map<String, dynamic> _spec(
  List<(String, String, String, Map<String, dynamic>)> operations, {
  Map<String, dynamic> components = const {},
  List<Map<String, dynamic>> parameters = const [],
}) => {
  'openapi': '3.1.0',
  'info': {'title': 't', 'version': '1'},
  'paths': {
    for (final (path, tag, operationId, response) in operations)
      path: {
        'get': {
          'tags': [tag],
          'operationId': operationId,
          'parameters': parameters,
          'responses': {
            '200': {
              'description': 'ok',
              'content': {
                'application/json': {'schema': response},
              },
            },
          },
        },
      },
  },
  'components': {'schemas': components},
};

const _withAddress = {
  'type': 'object',
  'properties': {
    'address': {
      'type': 'object',
      'properties': {
        'city': {'type': 'string'},
      },
    },
  },
};

void main() {
  test('inline objects become models named by context', () {
    final files = renderSpec({
      'openapi': '3.1.0',
      'info': {'title': 't', 'version': '1'},
      'paths': {
        '/users/{id}': {
          'get': {
            'operationId': 'getUser',
            'parameters': [
              {
                'name': 'id',
                'in': 'path',
                'required': true,
                'schema': {'type': 'string'},
              },
            ],
            'responses': {
              '200': {
                'description': 'ok',
                'content': {
                  'application/json': {
                    'schema': {
                      'type': 'object',
                      'properties': {
                        'name': {'type': 'string'},
                        'address': {
                          'type': 'object',
                          'properties': {
                            'city': {'type': 'string'},
                          },
                        },
                        'roles': {
                          'type': 'array',
                          'items': {
                            'type': 'object',
                            'properties': {
                              'id': {'type': 'integer'},
                            },
                          },
                        },
                      },
                    },
                  },
                },
              },
            },
          },
        },
      },
    }).files;
    expect(
      files['models/get_user_response.dart'],
      contains('abstract class GetUserResponse'),
    );
    expect(
      files['models/get_user_response.dart'],
      contains('GetUserResponseAddress? address'),
    );
    expect(
      files['models/get_user_response.dart'],
      contains('List<GetUserResponseRolesItem>? roles'),
    );
    expect(
      files['models/get_user_response_address.dart'],
      contains('String? city'),
    );
    expect(
      files['api_client/default_client.dart'],
      contains('HttpResponse<GetUserResponse>'),
    );
  });

  test('a title naming a component gives way to the context', () {
    final files = renderSpec(
      _spec(
        [
          (
            '/pet',
            'pets',
            'getPet',
            {
              'title': 'Pet',
              'type': 'object',
              'properties': {
                'age': {'type': 'integer'},
              },
            },
          ),
        ],
        components: {
          'Pet': {
            'type': 'object',
            'properties': {
              'name': {'type': 'string'},
            },
          },
        },
      ),
    ).files;

    expect(files['models/pet.dart'], contains('String? name'));
    expect(files['models/get_pet_response.dart'], contains('int? age'));
    expect(
      files['api_client/pets_client.dart'],
      contains('HttpResponse<GetPetResponse>'),
    );
  });

  test('a name taken by a different model gets a suffix, no orphans', () {
    const withZip = {
      'type': 'object',
      'properties': {
        'address': {
          'type': 'object',
          'properties': {
            'zip': {'type': 'integer'},
          },
        },
      },
    };
    final files = renderSpec(
      _spec([
        ('/a', 'a', 'getUser', _withAddress),
        ('/b', 'b', 'getUser', withZip),
        ('/c', 'c', 'getUser', _withAddress),
      ]),
    ).files;

    expect(files['api_client/a_client.dart'], contains('<GetUserResponse>'));
    expect(files['api_client/b_client.dart'], contains('<GetUserResponse2>'));
    // The same shape reuses the first model.
    expect(files['api_client/c_client.dart'], contains('<GetUserResponse>'));
    expect(
      files['models/get_user_response2_address.dart'],
      contains('int? zip'),
    );
    expect(
      files.keys.where((f) => f.startsWith('models/get_user')),
      unorderedEquals([
        'models/get_user_response.dart',
        'models/get_user_response_address.dart',
        'models/get_user_response2.dart',
        'models/get_user_response2_address.dart',
      ]),
    );
  });

  test('inline object parameters stay Map<String, dynamic>', () {
    final files = renderSpec(
      _spec(
        [('/pets', 'pets', 'listPets', _withAddress)],
        parameters: [
          {
            'name': 'filter',
            'in': 'query',
            'schema': {
              'type': 'object',
              'properties': {
                'q': {'type': 'string'},
              },
            },
          },
        ],
      ),
    ).files;

    expect(
      files['api_client/pets_client.dart'],
      contains('Map<String, dynamic>? filter'),
    );
    expect(files.keys, isNot(contains('models/list_pets_filter.dart')));
  });

  test('query parameter classes keep untyped inline parameters', () {
    final files = renderSpec(
      _spec(
        [('/pets', 'pets', 'listPets', _withAddress)],
        parameters: [
          {
            'name': 'filter',
            'in': 'query',
            'schema': {
              'type': 'object',
              'properties': {
                'q': {'type': 'string'},
              },
            },
          },
          {
            'name': 'ids',
            'in': 'query',
            'schema': {
              'oneOf': [
                {'type': 'string'},
                {
                  'type': 'array',
                  'items': {'type': 'string'},
                },
              ],
            },
          },
        ],
      ),
      config: const SwaggerToDart(
        apiClient: ApiClientConfig(useClassForQueryParameters: true),
      ),
    ).files;
    final queries = files['models/list_pets_query_parameters.dart']!;

    expect(queries, contains('Map<String, dynamic>? filter'));
    expect(queries, contains('dynamic ids'));
    expect(
      files.keys.where(
        (f) => f.startsWith('models/list_pets_query_parameters_'),
      ),
      isEmpty,
    );
  });

  test('a title another inline model took gives way to the context', () {
    Map<String, dynamic> titled(String property) => {
      'title': 'Thing',
      'type': 'object',
      'properties': {
        property: {'type': 'string'},
      },
    };
    final files = renderSpec(
      _spec([
        ('/a', 'a', 'getA', titled('a')),
        ('/b', 'b', 'getB', titled('b')),
      ]),
    ).files;

    expect(files['models/thing.dart'], contains('String? a'));
    expect(files['models/get_b_response.dart'], contains('String? b'));
    expect(files.keys, isNot(contains('models/thing2.dart')));
  });

  test('a title naming a core or dio type gives way to the context', () {
    Map<String, dynamic> titled(String title) => {
      'title': title,
      'type': 'object',
      'properties': {
        'v': {'type': 'string'},
      },
    };
    final files = renderSpec(
      _spec([
        ('/a', 'a', 'getA', titled('List')),
        ('/b', 'b', 'getB', titled('Response')),
      ]),
    ).files;

    expect(files['api_client/a_client.dart'], contains('<GetAResponse>'));
    expect(files['api_client/b_client.dart'], contains('<GetBResponse>'));
    expect(files.keys, isNot(contains('models/list.dart')));
    expect(files.keys, isNot(contains('models/response.dart')));
  });

  test('an inline object without a title needs a context name', () {
    final context = contextFor(_spec([]));

    expect(
      () => context.extension.typeConverter.get(
        const OpenApiSchemaJsonConverter().fromJson(_withAddress),
        className: 'Holder',
      ),
      throwsA(
        isA<ArgumentError>().having(
          (e) => e.message,
          'message',
          contains('Holder'),
        ),
      ),
    );
  });

  test('names dio, retrofit and dart:core use get a suffix', () {
    final files = Fixture(
      Directory('test/fixtures/reserved_names'),
    ).render().files;
    final client = files['api_client/core_client.dart']!;

    // Inline models named by context.
    expect(client, contains('Future<HttpResponse<HttpResponse2>> http('));
    expect(client, contains('required ResponseBody2 requestBody'));
    // Components.
    expect(client, contains('Future<HttpResponse<Response2>> response('));
    expect(client, contains('Method2? method'));
    expect(client, contains('required Headers2 requestBody'));
    expect(client, contains('Future<HttpResponse<List2>> putThings('));
    // dart:core types generated code never uses keep their name.
    expect(files['models/error.dart'], contains('class Error '));
  });
}
