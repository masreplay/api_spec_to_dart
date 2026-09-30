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
}
