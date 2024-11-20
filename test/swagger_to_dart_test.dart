import 'dart:convert';
import 'dart:io';

import 'package:swagger_to_dart/src/parser/swagger/models/open_api.dart';
import 'package:swagger_to_dart/src/parser/swagger/models/open_api_components.dart';
import 'package:swagger_to_dart/src/parser/swagger/models/open_api_info.dart';
import 'package:swagger_to_dart/src/parser/swagger/models/open_api_paths.dart';
import 'package:test/test.dart';

extension on String {
  Uri get _ => Uri.parse(this);
}

void main() {
  group('A group of tests', () {
    setUp(() {});

    test('First Test', () {
      final openApi = OpenApi(
        openapi: '3.1.0',
        info: OpenApiInfo(
          title: 'title',
          description: 'description',
          version: '0.0.1',
        ),
        servers: null,
        paths: {
          '/api'._: OpenApiPath(
            get: OpenApiPathMethod(
              tags: ['tag'],
              summary: 'summary',
              description: 'description',
              operationId: 'operationId',
              parameters: [
                OpenApiPathMethodParameter(
                  name: 'accept-language',
                  in_: OpenApiPathMethodParameterType.header,
                  required_: true,
                  schema: OpenApiPathMethodParameterSchema.type(
                    type: OpenApiSchemaVariableType.string,
                  ),
                ),
                OpenApiPathMethodParameter(
                  name: 'package-name',
                  in_: OpenApiPathMethodParameterType.header,
                  required_: true,
                  schema: OpenApiPathMethodParameterSchema.anyOf(
                    anyOf: [
                      OpenApiPathMethodParameterSchema.type(
                        type: OpenApiSchemaVariableType.boolean,
                      ),
                      OpenApiPathMethodParameterSchemaType(
                        type: OpenApiSchemaVariableType.null_,
                      ),
                    ],
                  ),
                ),
              ],
              responses: null,
            ),
          ),
        },
        components: OpenApiComponents(
          schemas: {},
          securitySchemes: {},
        ),
      );

      final value = openApi.toJson();
      dumpJson('open_api', value);
      expect(value.length, 4);
    });
  });
}

Future<void> dumpJson(
  String name,
  Map<String, dynamic> value,
) {
  return File('test/dump/$name.json').writeAsString(
    JsonEncoder.withIndent('  ').convert(value),
  );
}
