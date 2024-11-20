import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

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
          '/api/': OpenApiPath(
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
                  schema: OpenApiSchema.type(
                    type: OpenApiSchemaVarType.string,
                  ),
                ),
                OpenApiPathMethodParameter(
                  name: 'package-name',
                  in_: OpenApiPathMethodParameterType.header,
                  required_: true,
                  schema: OpenApiSchema.anyOf(
                    anyOf: [
                      OpenApiSchema.type(
                        type: OpenApiSchemaVarType.boolean,
                      ),
                      OpenApiSchemaType(
                        type: OpenApiSchemaVarType.null_,
                      ),
                    ],
                  ),
                ),
              ],
              responses: null,
              requestBody: null,
              deprecated: null,
            ),
          ),
        },
        components: OpenApiComponents(
          schemas: {},
          securitySchemes: {},
        ),
      );

      final value = openApi.toJson();

      expect(value.length, 4);
    });
  });
}
