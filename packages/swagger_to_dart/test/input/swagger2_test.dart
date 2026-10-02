import 'dart:io';

import 'package:json_schema/json_schema.dart';
import 'package:path/path.dart' as p;
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

import '../support/fixtures.dart';
import '../support/official_schema.dart';

final JsonSchema _v2 = officialSchema('openapi/2.0/schema.json');
final JsonSchema _v3 = officialSchema('openapi/3.0/schema.json');

/// A Swagger 2.0 document around [paths] and [extra] top-level keys.
Map<String, dynamic> _swagger({
  Map<String, dynamic> paths = const {},
  Map<String, dynamic> extra = const {},
}) => {
  'swagger': '2.0',
  'info': {'title': 'T', 'version': '1'},
  'paths': paths,
  ...extra,
};

/// [swagger] converted, both validated against their official schemas.
Map<String, dynamic> _convert(Map<String, dynamic> swagger) {
  expectValid(_v2, swagger);
  final openApi = toOpenApiJson(swagger);
  expectValid(_v3, openApi);
  return openApi;
}

/// The operation `GET /x` (or [method] [path]) of the converted [swagger].
Map<String, dynamic> _operation(
  Map<String, dynamic> swagger, {
  String path = '/x',
  String method = 'get',
}) => _convert(swagger)['paths'][path][method] as Map<String, dynamic>;

const _ok = {
  '200': {'description': 'OK'},
};

Map<String, dynamic> _get(
  List<Map<String, dynamic>> parameters, {
  Map<String, dynamic> responses = _ok,
  Map<String, dynamic> extra = const {},
}) => {
  'get': {'parameters': parameters, 'responses': responses, ...extra},
};

void main() {
  group('top level', () {
    test('is OpenAPI 3.0.3, keeping info, tags, security and extensions', () {
      final openApi = _convert(
        _swagger(
          extra: {
            'tags': [
              {'name': 'pets'},
            ],
            'security': [
              {'key': <String>[]},
            ],
            'externalDocs': {'url': 'https://example.com/docs'},
            'x-logo': 'logo.png',
            'securityDefinitions': {
              'key': {'type': 'apiKey', 'name': 'key', 'in': 'query'},
            },
          },
        ),
      );

      expect(openApi['openapi'], '3.0.3');
      expect(openApi['info'], {'title': 'T', 'version': '1'});
      expect(openApi['tags'], [
        {'name': 'pets'},
      ]);
      expect(openApi['security'], [
        {'key': <String>[]},
      ]);
      expect(openApi['externalDocs'], {'url': 'https://example.com/docs'});
      expect(openApi['x-logo'], 'logo.png');
      expect(openApi, isNot(contains('swagger')));
    });

    test('host, basePath and schemes become servers', () {
      List<Object?>? servers(Map<String, dynamic> extra) =>
          _convert(_swagger(extra: extra))['servers'] as List<Object?>?;

      expect(
        servers({
          'host': 'api.example.com:8080',
          'basePath': '/v1/',
          'schemes': ['https', 'http'],
        }),
        [
          {'url': 'https://api.example.com:8080/v1'},
          {'url': 'http://api.example.com:8080/v1'},
        ],
      );
      expect(servers({'host': 'api.example.com'}), [
        {'url': '//api.example.com'},
      ]);
      expect(servers({'basePath': '/v1'}), [
        {'url': '/v1'},
      ]);
      expect(servers({'basePath': '/'}), isNull);
      expect(servers({}), isNull);
    });
  });

  group('definitions', () {
    late Map<String, dynamic> schemas;

    setUpAll(() {
      schemas =
          _convert(
                _swagger(
                  extra: {
                    'definitions': {
                      'Pet': {
                        'type': 'object',
                        'discriminator': 'petType',
                        'required': ['name', 'petType'],
                        'properties': {
                          'name': {'type': 'string', 'x-nullable': true},
                          'petType': {'type': 'string'},
                          'owner': {r'$ref': '#/definitions/Owner'},
                          'tags': {
                            'type': 'array',
                            'items': {r'$ref': '#/definitions/Tag'},
                          },
                        },
                        'example': {r'$ref': 'not a reference', 'name': 'Tom'},
                      },
                      'Cat': {
                        'allOf': [
                          {r'$ref': '#/definitions/Pet'},
                          {
                            'type': 'object',
                            'properties': {
                              'lives': {'type': 'integer'},
                            },
                          },
                        ],
                      },
                      'Owner': {
                        'type': 'object',
                        'x-nullable': true,
                        'additionalProperties': {'type': 'string'},
                      },
                      'Tag': {'type': 'string'},
                    },
                  },
                ),
              )['components']['schemas']
              as Map<String, dynamic>;
    });

    test('become components.schemas with refs rewritten', () {
      expect(schemas.keys, ['Pet', 'Cat', 'Owner', 'Tag']);
      expect(schemas['Pet']['properties']['owner'], {
        r'$ref': '#/components/schemas/Owner',
      });
      expect(schemas['Pet']['properties']['tags'], {
        'type': 'array',
        'items': {r'$ref': '#/components/schemas/Tag'},
      });
      expect(schemas['Cat']['allOf'][0], {
        r'$ref': '#/components/schemas/Pet',
      });
    });

    test('x-nullable becomes nullable', () {
      expect(schemas['Pet']['properties']['name'], {
        'type': 'string',
        'nullable': true,
      });
      expect(schemas['Owner'], {
        'type': 'object',
        'nullable': true,
        'additionalProperties': {'type': 'string'},
      });
    });

    test('a discriminator name becomes a discriminator object', () {
      expect(schemas['Pet']['discriminator'], {'propertyName': 'petType'});
    });

    test('examples are data, not rewritten', () {
      expect(schemas['Pet']['example'], {
        r'$ref': 'not a reference',
        'name': 'Tom',
      });
    });
  });

  test('global parameters and responses become components, refs follow', () {
    final openApi = _convert(
      _swagger(
        paths: {
          '/x': {
            'post': {
              'parameters': [
                {r'$ref': '#/parameters/limit'},
                {r'$ref': '#/parameters/trace'},
                {r'$ref': '#/parameters/pet'},
              ],
              'responses': {
                '200': {'description': 'OK'},
                '404': {r'$ref': '#/responses/NotFound'},
              },
            },
          },
        },
        extra: {
          'parameters': {
            'limit': {
              'name': 'limit',
              'in': 'query',
              'type': 'integer',
              'maximum': 100,
            },
            'trace': {'name': 'X-Trace', 'in': 'header', 'type': 'string'},
            'pet': {
              'name': 'pet',
              'in': 'body',
              'schema': {r'$ref': '#/definitions/Pet'},
            },
          },
          'responses': {
            'NotFound': {
              'description': 'Not found',
              'schema': {r'$ref': '#/definitions/Error'},
            },
          },
          'definitions': {
            'Pet': {'type': 'object'},
            'Error': {'type': 'object'},
          },
        },
      ),
    );
    final components = openApi['components'] as Map<String, dynamic>;
    final post = openApi['paths']['/x']['post'] as Map<String, dynamic>;

    expect(components['parameters'], {
      'limit': {
        'name': 'limit',
        'in': 'query',
        'schema': {'type': 'integer', 'maximum': 100},
      },
      'trace': {
        'name': 'X-Trace',
        'in': 'header',
        'schema': {'type': 'string'},
      },
    });
    expect(components['responses'], {
      'NotFound': {
        'description': 'Not found',
        'content': {
          'application/json': {
            'schema': {r'$ref': '#/components/schemas/Error'},
          },
        },
      },
    });
    expect(post['parameters'], [
      {r'$ref': '#/components/parameters/limit'},
      {r'$ref': '#/components/parameters/trace'},
    ]);
    expect(post['requestBody'], {
      'content': {
        'application/json': {
          'schema': {r'$ref': '#/components/schemas/Pet'},
        },
      },
    });
    expect(post['responses']['404'], {
      r'$ref': '#/components/responses/NotFound',
    });
  });

  group('in: body', () {
    Map<String, dynamic> post({List<String>? consumes}) => {
      'post': {
        'consumes': ?consumes,
        'parameters': [
          {
            'name': 'note',
            'in': 'body',
            'description': 'The note',
            'required': true,
            'schema': {'type': 'string'},
          },
        ],
        'responses': _ok,
      },
    };

    test('becomes the request body, one media type per consumes', () {
      final operation = _operation(
        _swagger(
          paths: {
            '/x': post(consumes: ['text/plain', 'application/xml']),
          },
          extra: {
            'consumes': ['application/json'],
          },
        ),
        method: 'post',
      );

      expect(operation, isNot(contains('parameters')));
      expect(operation, isNot(contains('consumes')));
      expect(operation['requestBody'], {
        'description': 'The note',
        'content': {
          'text/plain': {
            'schema': {'type': 'string'},
          },
          'application/xml': {
            'schema': {'type': 'string'},
          },
        },
        'required': true,
      });
    });

    test('uses the global consumes, else JSON', () {
      Object? mediaTypes(Map<String, dynamic> extra) =>
          (_operation(
                    _swagger(paths: {'/x': post()}, extra: extra),
                    method: 'post',
                  )['requestBody']['content']
                  as Map)
              .keys
              .toList();

      expect(
        mediaTypes({
          'consumes': ['application/xml'],
        }),
        ['application/xml'],
      );
      expect(mediaTypes({}), ['application/json']);
    });
  });

  group('in: formData', () {
    Map<String, dynamic> post(
      List<Map<String, dynamic>> parameters, {
      List<String>? consumes,
    }) => {
      'post': {
        'consumes': ?consumes,
        'parameters': parameters,
        'responses': _ok,
      },
    };
    const file = {
      'name': 'file',
      'in': 'formData',
      'required': true,
      'type': 'file',
      'description': 'The upload',
    };
    const caption = {'name': 'caption', 'in': 'formData', 'type': 'string'};

    Map<String, dynamic> body(Map<String, dynamic> pathItem) =>
        _operation(
              _swagger(paths: {'/x': pathItem}),
              method: 'post',
            )['requestBody']
            as Map<String, dynamic>;

    test('becomes a multipart object with files as binary', () {
      expect(
        body(post([file, caption], consumes: ['multipart/form-data'])),
        {
          'content': {
            'multipart/form-data': {
              'schema': {
                'type': 'object',
                'properties': {
                  'file': {
                    'type': 'string',
                    'format': 'binary',
                    'description': 'The upload',
                  },
                  'caption': {'type': 'string'},
                },
                'required': ['file'],
              },
            },
          },
          'required': true,
        },
      );
    });

    test('is urlencoded when consumes says so, or without a file', () {
      final urlencoded = body(
        post([caption], consumes: ['application/x-www-form-urlencoded']),
      );
      expect(urlencoded['content'].keys, ['application/x-www-form-urlencoded']);
      expect(urlencoded, isNot(contains('required')));

      expect(body(post([caption]))['content'].keys, [
        'application/x-www-form-urlencoded',
      ]);
      expect(body(post([file]))['content'].keys, ['multipart/form-data']);
    });
  });

  group('collectionFormat', () {
    Map<String, dynamic> parameter(
      String in_, [
      String? collectionFormat,
    ]) => {
      'name': 'p',
      'in': in_,
      if (in_ == 'path') 'required': true,
      'type': 'array',
      'items': {'type': 'string'},
      'collectionFormat': ?collectionFormat,
    };

    Map<String, dynamic> convert(Map<String, dynamic> parameter) =>
        _operation(
              _swagger(
                paths: {
                  parameter['in'] == 'path' ? '/x/{p}' : '/x': _get([
                    parameter,
                  ]),
                },
              ),
              path: parameter['in'] == 'path' ? '/x/{p}' : '/x',
            )['parameters'][0]
            as Map<String, dynamic>;

    test('becomes style and explode in queries', () {
      Map<String, dynamic> style(String? format) {
        final converted = convert(parameter('query', format));
        expect(converted['schema'], {
          'type': 'array',
          'items': {'type': 'string'},
        });
        return {
          for (final key in ['style', 'explode', 'x-collectionFormat'])
            if (converted.containsKey(key)) key: converted[key],
        };
      }

      expect(style('csv'), {'style': 'form', 'explode': false});
      expect(style(null), {'style': 'form', 'explode': false});
      expect(style('multi'), {'style': 'form', 'explode': true});
      expect(style('ssv'), {'style': 'spaceDelimited', 'explode': false});
      expect(style('pipes'), {'style': 'pipeDelimited', 'explode': false});
      // No OpenAPI 3 style separates with tabs.
      expect(style('tsv'), {'x-collectionFormat': 'tsv'});
    });

    test('csv is the simple style in paths and headers', () {
      for (final in_ in ['path', 'header']) {
        final converted = convert(parameter(in_));
        expect(converted['style'], 'simple', reason: in_);
        expect(converted['explode'], false, reason: in_);
      }
    });
  });

  test('parameters keep name, in, description, required and extensions', () {
    expect(
      _operation(
        _swagger(
          paths: {
            '/x': _get([
              {
                'name': 'q',
                'in': 'query',
                'description': 'Search',
                'required': true,
                'allowEmptyValue': true,
                'type': 'string',
                'format': 'email',
                'pattern': '.+@.+',
                'enum': ['a@b.c'],
                'default': 'a@b.c',
                'x-nullable': true,
                'x-example': 'a@b.c',
              },
            ]),
          },
        ),
      )['parameters'],
      [
        {
          'name': 'q',
          'in': 'query',
          'description': 'Search',
          'required': true,
          'allowEmptyValue': true,
          'x-example': 'a@b.c',
          'schema': {
            'type': 'string',
            'format': 'email',
            'pattern': '.+@.+',
            'enum': ['a@b.c'],
            'default': 'a@b.c',
            'nullable': true,
          },
        },
      ],
    );
  });

  test('path-level parameters stay; body and formData ones move into '
      'each operation', () {
    final item =
        _convert(
              _swagger(
                paths: {
                  '/x/{id}': {
                    'parameters': [
                      {
                        'name': 'id',
                        'in': 'path',
                        'required': true,
                        'type': 'string',
                      },
                      {
                        'name': 'note',
                        'in': 'body',
                        'schema': {'type': 'string'},
                      },
                    ],
                    'put': {'responses': _ok},
                    'post': {
                      'parameters': [
                        {
                          'name': 'note',
                          'in': 'body',
                          'schema': {'type': 'integer'},
                        },
                      ],
                      'responses': _ok,
                    },
                  },
                },
              ),
            )['paths']['/x/{id}']
            as Map<String, dynamic>;

    expect(item['parameters'], [
      {
        'name': 'id',
        'in': 'path',
        'required': true,
        'schema': {'type': 'string'},
      },
    ]);
    expect(item['put']['requestBody']['content']['application/json'], {
      'schema': {'type': 'string'},
    });
    expect(item['post']['requestBody']['content']['application/json'], {
      'schema': {'type': 'integer'},
    });
  });

  group('responses', () {
    test('get a media type per produces, headers and examples', () {
      final responses =
          _operation(
                _swagger(
                  paths: {
                    '/x': _get(
                      [],
                      extra: {
                        'produces': ['application/json', 'application/xml'],
                      },
                      responses: {
                        '200': {
                          'description': 'OK',
                          'headers': {
                            'X-Rate-Limit': {
                              'type': 'integer',
                              'description': 'Calls left',
                            },
                          },
                          'schema': {r'$ref': '#/definitions/Pet'},
                          'examples': {
                            'application/json': {'name': 'Tom'},
                          },
                        },
                        'default': {'description': 'Error'},
                      },
                    ),
                  },
                  extra: {
                    'produces': ['text/plain'],
                    'definitions': {
                      'Pet': {'type': 'object'},
                    },
                  },
                ),
              )['responses']
              as Map<String, dynamic>;

      expect(responses, {
        '200': {
          'description': 'OK',
          'headers': {
            'X-Rate-Limit': {
              'description': 'Calls left',
              'schema': {'type': 'integer'},
            },
          },
          'content': {
            'application/json': {
              'schema': {r'$ref': '#/components/schemas/Pet'},
              'example': {'name': 'Tom'},
            },
            'application/xml': {
              'schema': {r'$ref': '#/components/schemas/Pet'},
            },
          },
        },
        'default': {'description': 'Error'},
      });
    });

    test('use the global produces; a file is binary', () {
      expect(
        _operation(
          _swagger(
            paths: {
              '/x': _get(
                [],
                responses: {
                  '200': {
                    'description': 'The photo',
                    'schema': {'type': 'file'},
                  },
                },
              ),
            },
            extra: {
              'produces': ['image/png'],
            },
          ),
        )['responses']['200']['content'],
        {
          'image/png': {
            'schema': {'type': 'string', 'format': 'binary'},
          },
        },
      );
    });
  });

  test('securityDefinitions become securitySchemes', () {
    final schemes =
        _convert(
              _swagger(
                extra: {
                  'securityDefinitions': {
                    'basic': {'type': 'basic', 'description': 'Basic'},
                    'key': {
                      'type': 'apiKey',
                      'name': 'X-API-Key',
                      'in': 'header',
                    },
                    'implicit': {
                      'type': 'oauth2',
                      'flow': 'implicit',
                      'authorizationUrl': 'https://a.example.com/authorize',
                      'scopes': {'read': 'Read'},
                    },
                    'password': {
                      'type': 'oauth2',
                      'flow': 'password',
                      'tokenUrl': 'https://a.example.com/token',
                      'scopes': <String, dynamic>{},
                    },
                    'application': {
                      'type': 'oauth2',
                      'flow': 'application',
                      'tokenUrl': 'https://a.example.com/token',
                      'scopes': <String, dynamic>{},
                    },
                    'accessCode': {
                      'type': 'oauth2',
                      'flow': 'accessCode',
                      'authorizationUrl': 'https://a.example.com/authorize',
                      'tokenUrl': 'https://a.example.com/token',
                      'scopes': {'write': 'Write'},
                      'x-provider': 'example',
                    },
                  },
                },
              ),
            )['components']['securitySchemes']
            as Map<String, dynamic>;

    expect(schemes, {
      'basic': {'type': 'http', 'scheme': 'basic', 'description': 'Basic'},
      'key': {'type': 'apiKey', 'name': 'X-API-Key', 'in': 'header'},
      'implicit': {
        'type': 'oauth2',
        'flows': {
          'implicit': {
            'authorizationUrl': 'https://a.example.com/authorize',
            'scopes': {'read': 'Read'},
          },
        },
      },
      'password': {
        'type': 'oauth2',
        'flows': {
          'password': {
            'tokenUrl': 'https://a.example.com/token',
            'scopes': <String, dynamic>{},
          },
        },
      },
      'application': {
        'type': 'oauth2',
        'flows': {
          'clientCredentials': {
            'tokenUrl': 'https://a.example.com/token',
            'scopes': <String, dynamic>{},
          },
        },
      },
      'accessCode': {
        'type': 'oauth2',
        'flows': {
          'authorizationCode': {
            'authorizationUrl': 'https://a.example.com/authorize',
            'tokenUrl': 'https://a.example.com/token',
            'scopes': {'write': 'Write'},
          },
        },
        'x-provider': 'example',
      },
    });
  });

  group('fixtures', () {
    for (final name in ['swagger2_petstore', 'swagger2_edge_cases']) {
      test('$name is valid 2.0 and converts to valid 3.0', () {
        final fixture = Fixture(Directory(p.join('test', 'fixtures', name)));
        expectValid(_v2, readSpecSync(fixture.input));
        expectValid(_v3, fixture.spec);
      });
    }
  });
}
