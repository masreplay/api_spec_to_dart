import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

void main() {
  late OpenApiDartGenerator generator;
  late Directory testDir;
  late SwaggerToDartConfig config;
  late OpenApi openApi;

  setUp(() async {
    testDir = Directory(path.join(Directory.current.path, 'test', 'tmp'));
    if (testDir.existsSync()) {
      await testDir.delete(recursive: true);
    }
    await testDir.create();

    config = SwaggerToDartConfig(
      pubspec: Pubspec('test', version: Version.parse('1.0.0')),
      swaggerToDart: SwaggerToDart(
        inputDirectory: path.join(testDir.path, 'swagger.json'),
        outputDirectory: path.join(testDir.path, 'output'),
      ),
    );

    // Create a minimal OpenAPI spec for testing
    openApi = OpenApi(
      openapi: '3.1.0',
      info: OpenApiInfo(
        title: 'Test API',
        version: '1.0.0',
        description: 'Test API description',
      ),
      paths: <String, OpenApiPath>{},
      components: OpenApiComponents(
        schemas: {
          'User': OpenApiSchemas(
            type: 'object',
            properties: {
              'id': OpenApiSchema.type(type: OpenApiSchemaVarType.string),
              'name': OpenApiSchema.type(type: OpenApiSchemaVarType.string),
            },
          ),
        },
        securitySchemes: {},
      ),
      servers: [],
    );

    generator = OpenApiDartGenerator(config: config, openApi: openApi);
  });

  tearDown(() async {
    if (testDir.existsSync()) {
      await testDir.delete(recursive: true);
    }
  });

  group('OpenApiDartGenerator', () {
    test('run should generate all required files', () async {
      await generator.run();

      // Check if output directories exist
      expect(
        Directory(config.swaggerToDart.outputDirectory).existsSync(),
        isTrue,
      );
      expect(
        Directory(
          path.join(config.swaggerToDart.outputDirectory, 'models'),
        ).existsSync(),
        isTrue,
      );
      expect(
        Directory(
          path.join(config.swaggerToDart.outputDirectory, 'clients'),
        ).existsSync(),
        isTrue,
      );

      // Check if model file was generated
      final modelFile = File(
        path.join(config.modelsOutputDirectory, 'user.dart'),
      );
      expect(modelFile.existsSync(), isTrue);

      // Verify model file content
      final content = await modelFile.readAsString();
      expect(content, contains('class User'));
      expect(content, contains('String id'));
      expect(content, contains('String name'));
    });

    test('should handle API paths and generate client files', () async {
      // Add a path to the OpenAPI spec
      openApi = openApi.copyWith(
        paths: <String, OpenApiPath>{
          '/users': OpenApiPath(
            get: OpenApiPathMethod(
              tags: ['users'],
              summary: 'Get users',
              description: 'Get all users',
              operationId: 'getUsers',
              deprecated: false,
              parameters: [],
              requestBody: null,
              responses: {
                '200': OpenApiPathMethodResponse(
                  description: 'Success',
                  content: OpenApiContent(
                    applicationJson: OpenApiContentSchema(
                      schema: OpenApiSchema.type(
                        type: OpenApiSchemaVarType.array,
                        items: OpenApiSchema.ref(
                          ref: '#/components/schemas/User',
                        ),
                      ),
                    ),
                    applicationXWwwFormUrlencoded: null,
                    multipartFormData: null,
                  ),
                ),
              },
            ),
          ),
        },
      );

      generator = OpenApiDartGenerator(config: config, openApi: openApi);

      await generator.run();

      // Check if client file was generated
      final clientFile = File(
        path.join(config.clientsOutputDirectory, 'users_client.dart'),
      );
      expect(clientFile.existsSync(), isTrue);

      // Verify client file content
      final content = await clientFile.readAsString();
      expect(content, contains('class UsersClient'));
      expect(content, contains('Future<HttpResponse<List<User>>> getUsers()'));
    });

    test('should handle empty OpenAPI spec', () async {
      final emptyOpenApi = OpenApi(
        openapi: '3.1.0',
        info: OpenApiInfo(
          title: 'Empty API',
          version: '1.0.0',
          description: 'Empty API description',
        ),
        paths: <String, OpenApiPath>{},
        components: OpenApiComponents(schemas: {}, securitySchemes: {}),
        servers: [],
      );

      final emptyGenerator = OpenApiDartGenerator(
        config: config,
        openApi: emptyOpenApi,
      );

      await expectLater(emptyGenerator.run(), completes);
    });
  });
}
