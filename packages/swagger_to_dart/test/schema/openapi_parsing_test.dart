import 'dart:convert';
import 'dart:io';

import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

void main() {
  test('parses the example FastAPI spec', () {
    final json =
        jsonDecode(File('example/schema/swagger.json').readAsStringSync())
            as Map<String, dynamic>;
    final openApi = OpenApi.fromJson(json);
    expect(openApi.paths, isNotEmpty);
    expect(openApi.components?.schemas, isNotEmpty);
  });

  test('additionalProperties may be a schema object (Swashbuckle)', () {
    final schemas = OpenApiSchemas.fromJson({
      'type': 'object',
      'properties': <String, dynamic>{},
      'additionalProperties': {'type': 'string'},
    });
    expect(schemas.type, 'object');
  });

  test('normalizeSchemaJson leaves the parsed spec untouched', () {
    final typeArray = {
      'type': ['string', 'null'],
    };
    final singleAllOf = {
      'allOf': [
        {r'$ref': '#/components/schemas/Base'},
      ],
      'nullable': true,
    };

    normalizeSchemaJson(typeArray);
    normalizeSchemaJson(singleAllOf);

    expect(typeArray, {
      'type': ['string', 'null'],
    });
    expect(singleAllOf, contains('allOf'));
  });

  test('type arrays with an array or object kind become a oneOf', () {
    // Each variant gets the keywords of its own kind only.
    expect(
      normalizeSchemaJson({
        'type': ['array', 'string', 'object', 'null'],
        'items': {'type': 'string'},
        'properties': {
          'a': {'type': 'string'},
        },
        'required': ['a'],
        'format': 'uri',
        'title': 'Src',
        'description': 'Files',
      }),
      {
        'title': 'Src',
        'description': 'Files',
        'oneOf': [
          {
            'items': {'type': 'string'},
            'format': 'uri',
            'type': 'array',
          },
          {'format': 'uri', 'type': 'string'},
          {
            'properties': {
              'a': {'type': 'string'},
            },
            'required': ['a'],
            'format': 'uri',
            'type': 'object',
          },
        ],
        'nullable': true,
      },
    );
    // A primitive-only mix still has no type (`dynamic`).
    expect(
      normalizeSchemaJson({
        'type': ['string', 'number'],
      }),
      isEmpty,
    );
  });
}
