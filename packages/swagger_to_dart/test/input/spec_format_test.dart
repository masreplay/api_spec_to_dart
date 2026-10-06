import 'dart:async';

import 'package:postman_collection/convert.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

void main() {
  group('detectSpecFormat', () {
    final cases = <String, (Object?, SpecFormat)>{
      'openapi 3.0': ({'openapi': '3.0.3'}, SpecFormat.openApi3),
      'openapi 3.1': ({'openapi': '3.1.0'}, SpecFormat.openApi3),
      'openapi 3.2': ({'openapi': '3.2.0'}, SpecFormat.openApi3),
      'openapi 3.1 as a YAML number': ({'openapi': 3.1}, SpecFormat.openApi3),
      'openapi 4': ({'openapi': '4.0.0'}, SpecFormat.unknown),
      'swagger 2.0': ({'swagger': '2.0'}, SpecFormat.swagger2),
      'swagger 2.0 as a YAML number': ({'swagger': 2.0}, SpecFormat.swagger2),
      'swagger 2.0 with definitions': (
        {
          'swagger': '2.0',
          'definitions': <String, dynamic>{},
        },
        SpecFormat.swagger2,
      ),
      'swagger 1.2': ({'swaggerVersion': '1.2'}, SpecFormat.unknown),
      'postman v2.1 (getpostman.com)': (
        {
          'info': {
            'name': 'C',
            'schema':
                'https://schema.getpostman.com/json/collection/v2.1.0/collection.json',
          },
          'item': <Object?>[],
        },
        SpecFormat.postman,
      ),
      'postman (postman.com)': (
        {
          'info': {
            'schema':
                'https://schema.postman.com/json/collection/v2.0.0/collection.json',
          },
        },
        SpecFormat.postman,
      ),
      'postman API envelope': (
        {
          'collection': {'info': <String, dynamic>{}, 'item': <Object?>[]},
        },
        SpecFormat.postman,
      ),
      'postman v1': (
        {'name': 'C', 'requests': <Object?>[], 'order': <Object?>[]},
        SpecFormat.postman,
      ),
      'postman v2.1 without a schema url': (
        {
          'info': {'name': 'C'},
          'item': <Object?>[],
        },
        SpecFormat.postman,
      ),
      'postman v1 with folders': (
        {'id': 'c', 'requests': <Object?>[], 'folders': <Object?>[]},
        SpecFormat.postman,
      ),
      'JSON Schema definitions': (
        {'definitions': <String, dynamic>{}},
        SpecFormat.jsonSchema,
      ),
      r'JSON Schema $defs': (
        {r'$defs': <String, dynamic>{}},
        SpecFormat.jsonSchema,
      ),
      r'JSON Schema $schema': (
        {
          r'$schema': 'https://json-schema.org/draft/2020-12/schema',
          'type': 'object',
        },
        SpecFormat.jsonSchema,
      ),
      'an info without a postman schema': (
        {
          'info': {'schema': 'https://example.com/schema.json'},
        },
        SpecFormat.unknown,
      ),
      'empty object': (<String, dynamic>{}, SpecFormat.unknown),
      'list': (<Object?>[], SpecFormat.unknown),
      'string': ('openapi: 3.0.0', SpecFormat.unknown),
      'null': (null, SpecFormat.unknown),
    };

    for (final MapEntry(key: name, value: (document, format))
        in cases.entries) {
      test(name, () => expect(detectSpecFormat(document), format));
    }
  });

  group('toOpenApiJson', () {
    test('returns an OpenAPI 3 document as it is', () {
      final spec = {
        'openapi': '3.1.0',
        'info': {'title': 'T', 'version': '1'},
        'paths': <String, dynamic>{},
      };

      expect(toOpenApiJson(spec), spec);
    });

    test('YAML-number versions become strings', () {
      final openApi = toOpenApiJson({
        'openapi': 3.1,
        'info': {'title': 'T', 'version': 1.0},
        'paths': <String, dynamic>{},
      });

      expect(openApi['openapi'], '3.1');
      expect(openApi['info'], {'title': 'T', 'version': '1.0'});
      expect(OpenApi.fromJson(openApi).info?.version, '1.0');

      final swagger = toOpenApiJson({
        'swagger': 2.0,
        'info': {'title': 'T', 'version': 2},
        'paths': <String, dynamic>{},
      });
      expect(swagger['info'], {'title': 'T', 'version': '2'});
      expect(OpenApi.fromJson(swagger).info?.version, '2');
    });

    test('accepts documents as package:yaml loads them', () {
      final openApi = toOpenApiJson(
        loadYaml('''
openapi: 3.0.3
info: {title: T, version: '1'}
paths:
  /a:
    get:
      responses:
        200: {description: OK}
'''),
      );

      expect(openApi, isA<Map<String, dynamic>>());
      expect(openApi['paths']['/a']['get']['responses'], {
        '200': {'description': 'OK'},
      });
      expect(OpenApi.fromJson(openApi).paths?['/a'], isNotNull);
    });

    test('converts a Postman collection with postmanToOpenApi', () {
      final collection = {
        'info': {
          'name': 'Users',
          'schema':
              'https://schema.getpostman.com/json/collection/v2.1.0/collection.json',
        },
        'item': [
          {
            'name': 'Get user',
            'request': {'method': 'GET', 'url': 'https://api.test/users/:id'},
          },
        ],
      };

      final spec = toOpenApiJson(collection);

      expect(spec, postmanToOpenApi(collection));
      expect(spec['paths'], contains('/users/{id}'));
      expect(OpenApi.fromJson(spec).paths?['/users/{id}'], isNotNull);
    });

    test('prints Postman conversion warnings', () {
      final printed = <String>[];

      runZoned(
        () => toOpenApiJson({
          'info': {'name': 'C'},
          'item': [
            {'name': 'Folder-less note'},
          ],
        }),
        zoneSpecification: ZoneSpecification(
          print: (_, _, _, line) => printed.add(line),
        ),
      );

      expect(printed, [
        "swagger_to_dart: warning: item 'Folder-less note' has no request; "
            'skipped',
      ]);
    });

    test('an unknown document is a format error', () {
      expect(
        () => toOpenApiJson({'hello': 'world'}),
        throwsA(isA<FormatException>()),
      );
    });

    group('a \$ref into a schema is replaced by what it points to', () {
      const page = {
        'type': 'object',
        'properties': {
          'items': {
            'type': 'array',
            'items': {r'$ref': '#/components/schemas/Pet'},
          },
        },
      };
      const items = {
        'type': 'array',
        'items': {r'$ref': '#/components/schemas/Pet'},
      };
      Map<String, dynamic> schemas(Map<String, dynamic> spec) =>
          spec['components']['schemas'] as Map<String, dynamic>;

      test('OpenAPI 3', () {
        final spec = toOpenApiJson({
          'openapi': '3.1.0',
          'info': {'title': 'T', 'version': '1'},
          'paths': <String, dynamic>{},
          'components': {
            'schemas': {
              'Page': page,
              'Pet': {'type': 'object'},
              'Holder': {
                'type': 'object',
                'properties': {
                  'items': {
                    r'$ref': '#/components/schemas/Page/properties/items',
                    'description': 'kept',
                  },
                  'pet': {r'$ref': '#/components/schemas/Pet'},
                },
              },
            },
          },
        });
        expect(schemas(spec)['Holder']['properties'], {
          'items': {...items, 'description': 'kept'},
          'pet': {r'$ref': '#/components/schemas/Pet'},
        });
      });

      test('Swagger 2.0 and JSON Schema', () {
        final swagger = toOpenApiJson({
          'swagger': '2.0',
          'info': {'title': 'T', 'version': '1'},
          'paths': {
            '/x': {
              'get': {
                'responses': {
                  '200': {
                    'description': 'ok',
                    'schema': {r'$ref': '#/definitions/Page/properties/items'},
                  },
                },
              },
            },
          },
          'definitions': {
            'Page': {
              'type': 'object',
              'properties': {
                'items': {
                  'type': 'array',
                  'items': {r'$ref': '#/definitions/Pet'},
                },
              },
            },
            'Pet': {'type': 'object'},
          },
        });
        expect(
          swagger['paths']['/x']['get']['responses']['200']['content']['application/json']['schema'],
          items,
        );

        final jsonSchema = toOpenApiJson({
          r'$schema': 'http://json-schema.org/draft-07/schema#',
          'definitions': {
            'Page': {
              'type': 'object',
              'properties': {
                'items': {
                  'type': 'array',
                  'items': {r'$ref': '#/definitions/Pet'},
                },
              },
            },
            'Pet': {'type': 'object'},
            'Holder': {
              'type': 'object',
              'properties': {
                'items': {r'$ref': '#/definitions/Page/properties/items'},
              },
            },
          },
        });
        expect(schemas(jsonSchema)['Holder']['properties']['items'], items);
      });

      test('also under a property named like a data keyword', () {
        final spec = toOpenApiJson({
          'openapi': '3.1.0',
          'info': {'title': 'T', 'version': '1'},
          'paths': <String, dynamic>{},
          'components': {
            'schemas': {
              'Page': page,
              'Pet': {'type': 'object'},
              'Holder': {
                'type': 'object',
                'properties': {
                  for (final key in ['default', 'enum', 'example'])
                    key: {
                      r'$ref': '#/components/schemas/Page/properties/items',
                    },
                },
                'patternProperties': {
                  'const': {
                    r'$ref': '#/components/schemas/Page/properties/items',
                  },
                },
                'default': {
                  r'$ref': '#/components/schemas/Page/properties/items',
                },
              },
            },
          },
        });
        final holder = schemas(spec)['Holder'];
        expect(holder['properties'], {
          'default': items,
          'enum': items,
          'example': items,
        });
        expect(holder['patternProperties'], {'const': items});
        // A default is data: left as written.
        expect(holder['default'], {
          r'$ref': '#/components/schemas/Page/properties/items',
        });
      });

      test('a pointer into itself is left as it is', () {
        const self = {r'$ref': '#/components/schemas/A/items'};
        final spec = toOpenApiJson({
          'openapi': '3.1.0',
          'info': {'title': 'T', 'version': '1'},
          'paths': <String, dynamic>{},
          'components': {
            'schemas': {
              'A': {'type': 'array', 'items': self},
            },
          },
        });
        expect(schemas(spec)['A'], {'type': 'array', 'items': self});
      });
    });
  });
}
