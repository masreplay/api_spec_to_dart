import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

import '../support/fixtures.dart';

SwaggerToDart _config(String yaml) =>
    SwaggerToDartYaml.fromYamlMap(loadYaml(yaml) as YamlMap).swaggerToDart;

void main() {
  test('model.class_prefix prefixes every model class and its file', () {
    final files = renderSpec(
      {
        'openapi': '3.1.0',
        'info': {'title': 't', 'version': '1'},
        'paths': {
          '/items': {
            'get': {
              'operationId': 'listItems',
              'responses': {
                '200': {
                  'description': 'ok',
                  'content': {
                    'application/json': {
                      'schema': {
                        'type': 'object',
                        'properties': {
                          'items': {r'$ref': '#/components/schemas/Items'},
                        },
                      },
                    },
                  },
                },
              },
            },
          },
        },
        'components': {
          'schemas': {
            'Item': {
              'type': 'object',
              'properties': {
                'kind': {
                  'type': 'string',
                  'enum': ['a', 'b'],
                },
                'info': {
                  'type': 'object',
                  'properties': {
                    'v': {'type': 'string'},
                  },
                },
                'url': {
                  'oneOf': [
                    {'type': 'string'},
                    {
                      'type': 'array',
                      'items': {'type': 'string'},
                    },
                  ],
                },
                'children': {
                  'type': 'array',
                  'items': {r'$ref': '#/components/schemas/Item'},
                },
              },
            },
            'Items': {
              'type': 'array',
              'items': {r'$ref': '#/components/schemas/Item'},
            },
          },
        },
      },
      config: _config('swagger_to_dart: {model: {class_prefix: Postman}}'),
    ).files;

    expect(
      files['models/postman_item.dart'],
      allOf(
        contains('abstract class PostmanItem '),
        contains('PostmanItemKind? kind'),
        contains('PostmanItemInfo? info'),
        contains('PostmanItemUrl? url'),
        contains('List<PostmanItem>? children'),
      ),
    );
    expect(
      files['models/postman_items.dart'],
      contains('typedef PostmanItems = List<PostmanItem>;'),
    );
    expect(
      files['models/postman_item_kind.dart'],
      contains('enum PostmanItemKind'),
    );
    expect(
      files['models/postman_item_url.dart'],
      contains('sealed class PostmanItemUrl'),
    );
    expect(
      files['models/postman_list_items_response.dart'],
      contains('PostmanItems? items'),
    );
    expect(
      files['api_client/default_client.dart'],
      contains('HttpResponse<PostmanListItemsResponse>'),
    );
    expect(files.keys.where((f) => f.startsWith('models/item')), isEmpty);
  });

  test('names built from a prefixed class keep one prefix as written', () {
    final files = renderSpec(
      {
        'openapi': '3.1.0',
        'info': {'title': 't', 'version': '1'},
        'paths': <String, dynamic>{},
        'components': {
          'schemas': {
            'Item': {
              'type': 'object',
              'properties': {
                'info': {
                  'type': 'object',
                  'properties': {
                    'v': {'type': 'string'},
                  },
                },
                'kind': {
                  'type': 'string',
                  'enum': ['a', 'b'],
                },
              },
            },
          },
        },
      },
      config: _config('swagger_to_dart: {model: {class_prefix: HTTP}}'),
    ).files;

    expect(files['models/http_item.dart'], contains('HTTPItemInfo? info'));
    expect(files['models/http_item_info.dart'], contains('class HTTPItemInfo'));
    expect(files['models/http_item.dart'], contains('HTTPItemKind? kind'));
    expect(files['models/http_item_kind.dart'], contains('enum HTTPItemKind'));
  });

  test('the prefix is added once, whatever a name starts with', () {
    Map<String, String> render(String prefix, List<String> components) =>
        renderSpec(
          {
            'openapi': '3.1.0',
            'info': {'title': 't', 'version': '1'},
            'paths': <String, dynamic>{},
            'components': {
              'schemas': {
                for (final name in components)
                  name: {
                    'type': 'object',
                    'properties': {
                      'v': {'type': 'string'},
                    },
                  },
              },
            },
          },
          config: _config('swagger_to_dart: {model: {class_prefix: $prefix}}'),
        ).files;

    final api = render('Api', ['ApiResponse', 'Key', 'ApiKey']);
    expect(
      api['models/api_api_response.dart'],
      contains('class ApiApiResponse '),
    );
    expect(api['models/api_key.dart'], contains('class ApiKey '));
    expect(api['models/api_api_key.dart'], contains('class ApiApiKey '));
    expect(api.keys, isNot(contains('models/api_key2.dart')));

    final my = render('My', ['Mystery']);
    expect(my['models/my_mystery.dart'], contains('class MyMystery '));
  });

  test('generic arguments that are core types are not prefixed', () {
    final files = renderSpec(
      {
        'openapi': '3.1.0',
        'info': {'title': 't', 'version': '1'},
        'paths': {
          '/users': {
            'get': {
              'operationId': 'listUsers',
              'responses': {
                '200': {
                  'description': 'ok',
                  'content': {
                    'application/json': {
                      'schema': {
                        r'$ref':
                            '#/components/schemas/BaseResponse_list_User__',
                      },
                    },
                  },
                },
              },
            },
          },
        },
        'components': {
          'schemas': {
            'BaseResponse_list_User__': {
              'title': 'BaseResponse[list[User]]',
              'type': 'object',
              'required': ['data'],
              'properties': {
                'data': {
                  'type': 'array',
                  'items': {r'$ref': '#/components/schemas/User'},
                },
              },
            },
            'User': {
              'type': 'object',
              'properties': {
                'id': {'type': 'integer'},
              },
            },
          },
        },
      },
      config: _config('''
swagger_to_dart:
  generation_source: FastAPI
  model: {class_prefix: Postman, support_generic_arguments: true}
'''),
    ).files;

    expect(
      files['api_client/default_client.dart'],
      contains('HttpResponse<PostmanBaseResponse<List<PostmanUser>>>'),
    );
    expect(
      files['models/postman_base_response.dart'],
      contains('class PostmanBaseResponse<T>'),
    );
  });
}
