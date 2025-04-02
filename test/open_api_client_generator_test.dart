import 'package:pub_semver/pub_semver.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/src/generator/v310/open_api_client_generator.dart';
import 'package:swagger_to_dart/src/parser/swagger/models/open_api_content.dart';
import 'package:swagger_to_dart/src/parser/swagger/models/open_api_paths.dart';
import 'package:swagger_to_dart/src/parser/swagger/models/open_api_schema.dart';
import 'package:swagger_to_dart/src/parser/swagger/models/open_api_components.dart';
import 'package:test/test.dart';

void main() {
  late SwaggerToDartConfig config;
  late OpenApiClientGenerator generator;

  setUp(() {
    final pubspec = Pubspec('test_package', version: Version.parse('1.0.0'));
    config = SwaggerToDartConfig(
      swaggerToDart: SwaggerToDart(),
      pubspec: pubspec,
    );
    generator = OpenApiClientGenerator(config: config);
  });

  group('OpenApiClientGenerator', () {
    test('generates client with basic path correctly', () {
      final paths = <String, OpenApiPath>{
        '/users': OpenApiPath(
          get: OpenApiPathMethod(
            tags: const ['users'],
            summary: 'Get all users',
            description: 'Returns a list of users',
            operationId: 'getUsers',
            deprecated: false,
            parameters: null,
            requestBody: null,
            responses: {
              '200': OpenApiPathMethodResponse(
                description: 'Successful response',
                content: OpenApiContent(
                  applicationJson: OpenApiContentSchema(
                    schema: OpenApiSchemaType(
                      type: OpenApiSchemaVarType.array,
                      items: OpenApiSchemaRef(ref: '#/components/schemas/User'),
                    ),
                  ),
                  applicationXWwwFormUrlencoded: null,
                  multipartFormData: null,
                ),
              ),
            },
          ),
        ),
      };

      final result = generator.generator(
        path: paths,
        clientName: 'user',
        tagPaths: ['/users'],
      );

      expect(result.filename, 'user_client');
      expect(result.content, contains('@RestApi()'));
      expect(result.content, contains('@GET()'));
      expect(result.content, contains('Future<List<User>> getUsers();'));
    });

    test('generates client with path parameters correctly', () {
      final paths = <String, OpenApiPath>{
        '/users/{id}': OpenApiPath(
          get: OpenApiPathMethod(
            tags: const ['users'],
            summary: 'Get user by ID',
            description: 'Returns a single user',
            operationId: 'getUserById',
            deprecated: false,
            parameters: [
              OpenApiPathMethodParameter(
                name: 'id',
                in_: OpenApiPathMethodParameterType.path,
                required_: true,
                schema: OpenApiSchemaType(type: OpenApiSchemaVarType.integer),
              ),
            ],
            requestBody: null,
            responses: {
              '200': OpenApiPathMethodResponse(
                description: 'Successful response',
                content: OpenApiContent(
                  applicationJson: OpenApiContentSchema(
                    schema: OpenApiSchemaRef(ref: '#/components/schemas/User'),
                  ),
                  applicationXWwwFormUrlencoded: null,
                  multipartFormData: null,
                ),
              ),
            },
          ),
        ),
      };

      final result = generator.generator(
        path: paths,
        clientName: 'user',
        tagPaths: ['/users/{id}'],
      );

      expect(result.filename, 'user_client');
      expect(result.content, contains('@GET(\'/users/{id}\')'));
      expect(
        result.content,
        contains('Future<User> getUserById(@Path(\'id\') int id);'),
      );
    });

    test('generates client with query parameters correctly', () {
      final paths = <String, OpenApiPath>{
        '/users': OpenApiPath(
          get: OpenApiPathMethod(
            tags: const ['users'],
            summary: 'Search users',
            description: 'Search users by query parameters',
            operationId: 'searchUsers',
            deprecated: false,
            parameters: [
              OpenApiPathMethodParameter(
                name: 'page',
                in_: OpenApiPathMethodParameterType.query,
                required_: false,
                schema: OpenApiSchemaType(type: OpenApiSchemaVarType.integer),
              ),
              OpenApiPathMethodParameter(
                name: 'limit',
                in_: OpenApiPathMethodParameterType.query,
                required_: false,
                schema: OpenApiSchemaType(type: OpenApiSchemaVarType.integer),
              ),
            ],
            requestBody: null,
            responses: {
              '200': OpenApiPathMethodResponse(
                description: 'Successful response',
                content: OpenApiContent(
                  applicationJson: OpenApiContentSchema(
                    schema: OpenApiSchemaType(
                      type: OpenApiSchemaVarType.array,
                      items: OpenApiSchemaRef(ref: '#/components/schemas/User'),
                    ),
                  ),
                  applicationXWwwFormUrlencoded: null,
                  multipartFormData: null,
                ),
              ),
            },
          ),
        ),
      };

      final result = generator.generator(
        path: paths,
        clientName: 'user',
        tagPaths: ['/users'],
      );

      expect(result.filename, 'user_client');
      expect(result.content, contains('@GET(\'/users\')'));
      expect(result.content, contains('Future<List<User>> searchUsers('));
      expect(result.content, contains('@Query(\'page\') int? page,'));
      expect(result.content, contains('@Query(\'limit\') int? limit,'));
    });

    test('generates client with request body correctly', () {
      final paths = <String, OpenApiPath>{
        '/users': OpenApiPath(
          post: OpenApiPathMethod(
            tags: const ['users'],
            summary: 'Create user',
            description: 'Create a new user',
            operationId: 'createUser',
            deprecated: false,
            parameters: null,
            requestBody: OpenApiPathMethodRequestBody(
              required_: true,
              content: OpenApiContent(
                applicationJson: OpenApiContentSchema(
                  schema: OpenApiSchemaRef(ref: '#/components/schemas/User'),
                ),
                applicationXWwwFormUrlencoded: null,
                multipartFormData: null,
              ),
            ),
            responses: {
              '201': OpenApiPathMethodResponse(
                description: 'User created successfully',
                content: OpenApiContent(
                  applicationJson: OpenApiContentSchema(
                    schema: OpenApiSchemaRef(ref: '#/components/schemas/User'),
                  ),
                  applicationXWwwFormUrlencoded: null,
                  multipartFormData: null,
                ),
              ),
            },
          ),
        ),
      };

      final result = generator.generator(
        path: paths,
        clientName: 'user',
        tagPaths: ['/users'],
      );

      expect(result.filename, 'user_client');
      expect(result.content, contains('@POST(\'/users\')'));
      expect(
        result.content,
        contains('Future<User> createUser(@Body() User user);'),
      );
    });

    test('generates client with multiple methods correctly', () {
      final paths = <String, OpenApiPath>{
        '/users': OpenApiPath(
          get: OpenApiPathMethod(
            tags: const ['users'],
            summary: 'Get all users',
            description: 'Returns a list of users',
            operationId: 'getUsers',
            deprecated: false,
            parameters: null,
            requestBody: null,
            responses: {
              '200': OpenApiPathMethodResponse(
                description: 'Successful response',
                content: OpenApiContent(
                  applicationJson: OpenApiContentSchema(
                    schema: OpenApiSchemaType(
                      type: OpenApiSchemaVarType.array,
                      items: OpenApiSchemaRef(ref: '#/components/schemas/User'),
                    ),
                  ),
                  applicationXWwwFormUrlencoded: null,
                  multipartFormData: null,
                ),
              ),
            },
          ),
          post: OpenApiPathMethod(
            tags: const ['users'],
            summary: 'Create user',
            description: 'Create a new user',
            operationId: 'createUser',
            deprecated: false,
            parameters: null,
            requestBody: OpenApiPathMethodRequestBody(
              required_: true,
              content: OpenApiContent(
                applicationJson: OpenApiContentSchema(
                  schema: OpenApiSchemaRef(ref: '#/components/schemas/User'),
                ),
                applicationXWwwFormUrlencoded: null,
                multipartFormData: null,
              ),
            ),
            responses: {
              '201': OpenApiPathMethodResponse(
                description: 'User created successfully',
                content: OpenApiContent(
                  applicationJson: OpenApiContentSchema(
                    schema: OpenApiSchemaRef(ref: '#/components/schemas/User'),
                  ),
                  applicationXWwwFormUrlencoded: null,
                  multipartFormData: null,
                ),
              ),
            },
          ),
        ),
      };

      final result = generator.generator(
        path: paths,
        clientName: 'user',
        tagPaths: ['/users'],
      );

      expect(result.filename, 'user_client');
      expect(result.content, contains('@GET(\'/users\')'));
      expect(result.content, contains('@POST(\'/users\')'));
      expect(result.content, contains('Future<List<User>> getUsers();'));
      expect(
        result.content,
        contains('Future<User> createUser(@Body() User user);'),
      );
    });
  });
}
