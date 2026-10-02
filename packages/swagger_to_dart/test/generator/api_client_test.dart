import 'dart:io';

import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

import '../support/fixtures.dart';

Map<String, dynamic> _spec({
  Map<String, dynamic> paths = const {},
  Map<String, dynamic> schemas = const {},
}) => {
  'openapi': '3.1.0',
  'info': {'title': 'T', 'version': '1'},
  'paths': paths,
  'components': {'schemas': schemas},
};

Map<String, dynamic> _get(
  String operationId, {
  List<Map<String, dynamic>> parameters = const [],
}) => {
  'get': {
    'tags': ['items'],
    'operationId': operationId,
    'parameters': parameters,
    'responses': {
      '200': {'description': 'OK'},
    },
  },
};

void main() {
  test('optional params are nullable, path params always required (#50)', () {
    final client = renderSpec(
      _spec(
        paths: {
          '/items/{id}': _get(
            'getItem',
            parameters: [
              {
                'name': 'id',
                'in': 'path',
                'schema': {'type': 'string'},
              },
              {
                'name': 'offset',
                'in': 'query',
                'required': false,
                'schema': {'type': 'number'},
              },
              {
                'name': 'limit',
                'in': 'query',
                'required': false,
                'schema': {'type': 'integer', 'default': 20},
              },
              {
                'name': 'q',
                'in': 'query',
                'required': true,
                'schema': {'type': 'string'},
              },
              {
                'name': 'trace',
                'in': 'header',
                'schema': {'type': 'string'},
              },
            ],
          ),
        },
      ),
    ).files['api_client/items_client.dart']!;

    expect(client, contains("@Path('id') required String id,"));
    expect(client, contains("@Query('offset') double? offset,"));
    expect(client, contains("@Query('limit') int limit = 20,"));
    expect(client, contains("@Query('q') required String q,"));
    expect(client, contains("@Header('trace') String? trace,"));
  });

  test('generic models honour the required list (#52)', () {
    final model = renderSpec(
      _spec(
        schemas: {
          'Item': {
            'type': 'object',
            'properties': {
              'id': {'type': 'integer'},
            },
          },
          'BaseResponse[Item]': {
            'title': 'BaseResponse[Item]',
            'type': 'object',
            'required': ['data'],
            'properties': {
              'data': {r'$ref': '#/components/schemas/Item'},
              'message': {'type': 'string'},
            },
          },
        },
      ),
      config: const SwaggerToDart(
        generationSource: GenerationSource.fastAPI,
        model: ModelConfig(supportGenericArguments: true),
      ),
    ).files['models/base_response.dart']!;

    expect(model, contains('required T data,'));
    expect(model, contains('String? message,'));
  });

  test('generic models use their type parameter (FastAPI)', () {
    final files = renderSpec(
      _spec(
        schemas: {
          'Item': {
            'type': 'object',
            'properties': {
              'id': {'type': 'integer'},
            },
          },
          // Registered before Item: a name that merely contains "Item" must
          // not be mistaken for the type argument.
          'PaginationResponse_Item_': {
            'title': 'PaginationResponse[Item]',
            'type': 'object',
            'required': ['items', 'total'],
            'properties': {
              'items': {
                'type': 'array',
                'items': {r'$ref': '#/components/schemas/Item'},
              },
              'total': {'type': 'integer'},
            },
          },
          'Pair_str_int_': {
            'title': 'Pair[str, int]',
            'type': 'object',
            'required': ['first', 'second'],
            'properties': {
              'first': {'type': 'string'},
              'second': {'type': 'integer'},
            },
          },
        },
      ),
      config: const SwaggerToDart(
        generationSource: GenerationSource.fastAPI,
        model: ModelConfig(supportGenericArguments: true),
      ),
    ).files;

    expect(
      files['models/pagination_response.dart'],
      contains('required List<T> items,'),
    );
    expect(
      files['models/pagination_response.dart'],
      contains('required int total,'),
    );
    expect(files['models/pair.dart'], contains('required T first,'));
    expect(files['models/pair.dart'], contains('required T2 second,'));
  });

  test('generic class comes from an instantiation with schema arguments', () {
    final model = renderSpec(
      _spec(
        schemas: {
          'BaseResponse_str_': {
            'title': 'BaseResponse[str]',
            'type': 'object',
            'required': ['data', 'message'],
            'properties': {
              'data': {'type': 'string'},
              'message': {'type': 'string'},
            },
          },
          'BaseResponse_User_': {
            'title': 'BaseResponse[User]',
            'type': 'object',
            'required': ['data', 'message'],
            'properties': {
              'data': {r'$ref': '#/components/schemas/User'},
              'message': {'type': 'string'},
            },
          },
          'User': {
            'type': 'object',
            'properties': {
              'id': {'type': 'integer'},
            },
          },
        },
      ),
      config: const SwaggerToDart(
        generationSource: GenerationSource.fastAPI,
        model: ModelConfig(supportGenericArguments: true),
      ),
    ).files['models/base_response.dart']!;

    expect(model, contains('required T data,'));
    expect(model, contains('required String message,'));
  });

  test('clients hold the operations of their tag, not whole paths (G5)', () {
    final files = Fixture(
      Directory('test/fixtures/tag_grouping'),
    ).render().files;
    List<String> methods(String client) => [
      for (final match in RegExp(
        r'> (\w+)\(\{',
      ).allMatches(files['api_client/${client}_client.dart']!))
        match[1]!,
    ];

    expect(methods('users'), ['listUsers', 'getUser']);
    expect(methods('admin'), ['deleteUsers', 'getUser']);
    expect(methods('default'), ['touchUser']);
  });

  group('HTTP methods retrofit has no annotation for use @Method (G6)', () {
    late String client;
    setUpAll(() {
      client = Fixture(
        Directory('test/fixtures/http_methods'),
      ).render().files['api_client/resources_client.dart']!;
    });

    test('trace, OAS 3.2 query and additionalOperations', () {
      expect(client, contains("@Method('TRACE', '/x')"));
      expect(client, contains("@Method('QUERY', '/x')"));
      expect(client, contains("@Method('PURGE', '/x')"));
      expect(client, contains("@Method('LINK', '/x')"));
      expect(client, isNot(contains('@TRACE')));
    });

    test('standard methods keep their annotation', () {
      expect(client, contains("@GET('/x')"));
    });

    test('connect', () {
      final client = renderSpec(
        _spec(
          paths: {
            '/tunnel': {
              'connect': {
                'tags': ['items'],
                'operationId': 'openTunnel',
                'responses': {
                  '200': {'description': 'OK'},
                },
              },
            },
          },
        ),
      ).files['api_client/items_client.dart']!;

      expect(client, contains("@Method('CONNECT', '/tunnel')"));
    });
  });

  group('operation and path servers give absolute URLs (G7)', () {
    late Map<String, String> files;
    setUpAll(() {
      files = Fixture(
        Directory('test/fixtures/operation_servers'),
      ).render().files;
    });

    test('an operation server', () {
      expect(
        files['api_client/auth_client.dart'],
        contains("@POST('https://auth.example.com/token')"),
      );
    });

    test('path servers apply to its operations, with variable defaults; '
        'the operation level wins', () {
      final client = files['api_client/files_client.dart']!;

      expect(
        client,
        contains("@GET('https://acme.files.example.com/v1/files/{id}')"),
      );
      expect(
        client,
        contains("@DELETE('https://archive.example.com/files/{id}')"),
      );
    });

    test('a document server matches with or without a trailing slash', () {
      Map<String, dynamic> get(String operationId, String server) => {
        'get': {
          'tags': ['items'],
          'operationId': operationId,
          'servers': [
            {'url': server},
          ],
          'responses': {
            '200': {'description': 'OK'},
          },
        },
      };
      final client = renderSpec({
        ..._spec(
          paths: {
            '/a': get('getA', 'https://api.example.com'),
            '/b': get('getB', 'https://api.example.com/v1/'),
          },
        ),
        'servers': [
          {'url': 'https://api.example.com/'},
          {'url': 'https://api.example.com/v1'},
        ],
      }).files['api_client/items_client.dart']!;

      expect(client, contains("@GET('/a')"));
      expect(client, contains("@GET('/b')"));
    });

    test('without servers, or repeating the document server, paths stay '
        'relative to baseUrl', () {
      final client = files['api_client/service_client.dart']!;

      expect(client, contains("@GET('/health')"));
      expect(client, contains("@GET('/status')"));
    });
  });

  test('repeated tags, also after dropping non-ASCII, add a method once', () {
    final client = renderSpec(
      _spec(
        paths: {
          '/a': {
            'get': {
              'tags': ['items', 'items', 'itemsé'],
              'operationId': 'listItems',
              'responses': {
                '200': {'description': 'OK'},
              },
            },
          },
        },
      ),
    ).files['api_client/items_client.dart']!;

    expect(RegExp(r'listItems\d*\(\{').allMatches(client), hasLength(1));
  });

  test('a client using no model does not import the models', () {
    final client = renderSpec(
      _spec(
        paths: {
          '/a': _get(
            'listNames',
            parameters: [
              {
                'name': 'q',
                'in': 'query',
                'schema': {
                  'type': 'array',
                  'items': {'type': 'string'},
                },
              },
            ],
          ),
        },
      ),
    ).files['api_client/items_client.dart']!;

    expect(client, isNot(contains('models.dart')));
  });

  test('duplicate operationIds in one client get unique method names', () {
    final client = renderSpec(
      _spec(
        paths: {'/a': _get('listItems'), '/b': _get('listItems')},
      ),
    ).files['api_client/items_client.dart']!;

    expect(client, contains('listItems({'));
    expect(client, contains('listItems2({'));
  });

  test('OpenAPI metadata in @Extras can be turned off (#60)', () {
    final spec = _spec(paths: {'/a': _get('listItems')});
    String client(SwaggerToDart config) =>
        renderSpec(spec, config: config).files['api_client/items_client.dart']!;

    expect(
      client(const SwaggerToDart()),
      contains("'operationId': 'listItems'"),
    );

    final withoutMetadata = client(
      const SwaggerToDart(
        apiClient: ApiClientConfig(includeOpenapiExtras: false),
      ),
    );
    expect(withoutMetadata, isNot(contains('operationId')));
    expect(withoutMetadata, contains('Map<String, dynamic>? extras,'));
  });

  test('untitled inline enums in bodies and responses are named (#55)', () {
    final enumSchema = {
      'type': 'string',
      'enum': ['a', 'b'],
    };
    final files = renderSpec(
      _spec(
        paths: {
          '/mode': {
            'post': {
              'tags': ['items'],
              'operationId': 'setMode',
              'requestBody': {
                'content': {
                  'application/json': {'schema': enumSchema},
                },
              },
              'responses': {
                '200': {
                  'description': 'OK',
                  'content': {
                    'application/json': {'schema': enumSchema},
                  },
                },
              },
            },
          },
        },
      ),
    ).files;

    expect(
      files['api_client/items_client.dart'],
      contains('Future<HttpResponse<SetModeResponse>> setMode('),
    );
    expect(
      files['api_client/items_client.dart'],
      contains('required SetModeBody requestBody'),
    );
  });

  group('non-JSON bodies (#56)', () {
    Map<String, dynamic> post(String operationId, String mediaType) => {
      'post': {
        'tags': ['items'],
        'operationId': operationId,
        'requestBody': {
          'required': true,
          'content': {
            mediaType: {
              'schema': {'type': 'string'},
            },
          },
        },
        'responses': {
          '200': {
            'description': 'OK',
            'content': {
              'application/xml': {
                'schema': {'type': 'string'},
              },
            },
          },
        },
      },
    };

    late String client;
    setUpAll(() {
      client = renderSpec(
        _spec(
          paths: {
            '/text': post('sendText', 'text/plain'),
            '/xml': post('sendXml', 'application/xml'),
            '/bytes': post('sendBytes', 'application/octet-stream'),
          },
        ),
      ).files['api_client/items_client.dart']!;
    });

    test('text and XML bodies are strings with their content type', () {
      expect(
        client,
        contains("@Headers(<String, dynamic>{'Content-Type': 'text/plain'})"),
      );
      expect(
        client,
        contains(
          "@Headers(<String, dynamic>{'Content-Type': 'application/xml'})",
        ),
      );
      expect(
        RegExp('@Body\\(\\) required String requestBody').allMatches(client),
        hasLength(2),
      );
    });

    test('binary bodies are bytes', () {
      expect(client, contains('@Body() required List<int> requestBody'));
    });

    test('XML responses are strings', () {
      expect(client, contains('Future<HttpResponse<String>> sendXml('));
    });
  });

  test('JSON bodies with parameters or +json suffixes stay typed', () {
    Map<String, dynamic> post(String operationId, String mediaType) => {
      'post': {
        'tags': ['items'],
        'operationId': operationId,
        'requestBody': {
          'content': {
            mediaType: {
              'schema': {r'$ref': '#/components/schemas/Item'},
            },
          },
        },
        'responses': {
          '200': {'description': 'OK'},
        },
      },
    };
    final client = renderSpec(
      _spec(
        paths: {
          '/charset': post('withCharset', 'application/json; charset=utf-8'),
          '/vendor': post('vendorJson', 'application/vnd.api+json'),
        },
        schemas: {
          'Item': {
            'type': 'object',
            'properties': {
              'id': {'type': 'integer'},
            },
          },
        },
      ),
    ).files['api_client/items_client.dart']!;

    expect(
      RegExp(r'@Body\(\) required Item requestBody').allMatches(client),
      hasLength(2),
    );
    expect(client, isNot(contains('Content-Type')));
  });

  test('@Extras keeps the spec as written (OpenAPI 3.1 type arrays)', () {
    final client = renderSpec(
      _spec(
        paths: {
          '/a': _get(
            'listItems',
            parameters: [
              {
                'name': 'q',
                'in': 'query',
                'schema': {
                  'type': ['string', 'null'],
                },
              },
            ],
          ),
        },
      ),
    ).files['api_client/items_client.dart']!;

    expect(client, contains("'type': ['string', 'null']"));
  });

  test('Spring-style */* responses are typed like JSON', () {
    final client = renderSpec(
      _spec(
        paths: {
          '/item': {
            'get': {
              'tags': ['items'],
              'operationId': 'getItem',
              'responses': {
                '200': {
                  'description': 'OK',
                  'content': {
                    '*/*': {
                      'schema': {r'$ref': '#/components/schemas/Item'},
                    },
                  },
                },
              },
            },
          },
        },
        schemas: {
          'Item': {
            'type': 'object',
            'properties': {
              'id': {'type': 'integer'},
            },
          },
        },
      ),
    ).files['api_client/items_client.dart']!;

    expect(client, contains('Future<HttpResponse<Item>> getItem('));
  });

  test('an operation accepting JSON and multipart gets one JSON body', () {
    final client = renderSpec(
      _spec(
        paths: {
          '/item': {
            'post': {
              'tags': ['items'],
              'operationId': 'createItem',
              'requestBody': {
                'content': {
                  'application/json': {
                    'schema': {r'$ref': '#/components/schemas/Item'},
                  },
                  'multipart/form-data': {
                    'schema': {r'$ref': '#/components/schemas/Item'},
                  },
                },
              },
              'responses': {
                '200': {'description': 'OK'},
              },
            },
          },
        },
        schemas: {
          'Item': {
            'type': 'object',
            'properties': {
              'id': {'type': 'integer'},
            },
          },
        },
      ),
    ).files['api_client/items_client.dart']!;

    expect(
      RegExp(r'@(Body|Part)\(\) required \S+ requestBody').allMatches(client),
      hasLength(1),
    );
    expect(client, isNot(contains('MultiPart')));
    expect(client, contains('@Body() required Item requestBody'));
  });
}
