import 'package:test/test.dart';
import 'package:swagger_to_dart/src/generator/v310/open_api_model_generator.dart';
import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:pub_semver/pub_semver.dart';

void main() {
  group('OpenApiModelGenerator', () {
    late OpenApiModelGenerator modelGenerator;
    late SwaggerToDartConfig config;

    /// Sets up the test environment before each test
    setUp(() {
      final pubspec = Pubspec('test_package', version: Version.parse('1.0.0'));
      config = SwaggerToDartConfig(
        swaggerToDart: SwaggerToDart(),
        pubspec: pubspec,
      );
      modelGenerator = OpenApiModelGenerator(config: config);
    });

    /// Tests enum model generation
    test('generates enum model correctly', () {
      final model = MapEntry(
        'TestEnum',
        OpenApiSchemas(
          type: 'string',
          enum_: ['value1', 'value2'],
          description: 'Test enum description',
          properties: {},
        ),
      );

      final result = modelGenerator.run(model);

      expect(result.filename, 'test_enum');
      expect(result.content, contains('@freezed'));
      expect(result.content, contains('class TestEnum'));
      expect(result.content, contains('value1'));
      expect(result.content, contains('value2'));
      expect(result.content, contains('Test enum description'));
    });

    /// Tests union model generation
    test('generates union model correctly', () {
      final model = MapEntry(
        'TestUnion',
        OpenApiSchemas(
          type: 'object',
          properties: {
            'type': OpenApiSchema.type(
              type: OpenApiSchemaVarType.string,
              enum_: ['type1', 'type2'],
            ),
            'data': OpenApiSchema.anyOf(
              anyOf: [
                OpenApiSchema.type(type: OpenApiSchemaVarType.string),
                OpenApiSchema.type(type: OpenApiSchemaVarType.integer),
              ],
              description: 'Test union description',
            ),
          },
        ),
      );

      final result = modelGenerator.run(model);

      expect(result.filename, 'test_union');
      expect(result.content, contains('@freezed'));
      expect(result.content, contains('class TestUnion'));
      expect(result.content, contains('String'));
      expect(result.content, contains('int'));
      expect(result.content, contains('Test union description'));
    });

    /// Tests regular model generation
    test('generates regular model correctly', () {
      final model = MapEntry(
        'TestModel',
        OpenApiSchemas(
          type: 'object',
          properties: {
            'name': OpenApiSchema.type(
              type: OpenApiSchemaVarType.string,
              description: 'Name property',
            ),
            'age': OpenApiSchema.type(
              type: OpenApiSchemaVarType.integer,
              description: 'Age property',
            ),
          },
          description: 'Test model description',
        ),
      );

      final result = modelGenerator.run(model);

      expect(result.filename, 'test_model');
      expect(result.content, contains('@freezed'));
      expect(result.content, contains('class TestModel'));
      expect(result.content, contains('String name'));
      expect(result.content, contains('int age'));
      expect(result.content, contains('Test model description'));
    });

    /// Tests error handling for invalid enum model
    test('throws error for enum model without values', () {
      final model = MapEntry(
        'TestEnum',
        OpenApiSchemas(
          type: 'string',
          enum_: [],
          description: 'Test enum description',
          properties: {},
        ),
      );

      expect(() => modelGenerator.run(model), throwsArgumentError);
    });

    /// Tests model type determination
    test('correctly determines model type', () {
      final enumModel = MapEntry(
        'TestEnum',
        OpenApiSchemas(type: 'string', enum_: ['value1'], properties: {}),
      );

      final unionModel = MapEntry(
        'TestUnion',
        OpenApiSchemas(
          type: 'object',
          properties: {
            'type': OpenApiSchema.type(
              type: OpenApiSchemaVarType.string,
              enum_: ['type1'],
            ),
            'data': OpenApiSchema.anyOf(
              anyOf: [OpenApiSchema.type(type: OpenApiSchemaVarType.string)],
            ),
          },
        ),
      );

      final regularModel = MapEntry(
        'TestModel',
        OpenApiSchemas(
          type: 'object',
          properties: {
            'name': OpenApiSchema.type(type: OpenApiSchemaVarType.string),
          },
        ),
      );

      final enumResult = modelGenerator.run(enumModel);
      final unionResult = modelGenerator.run(unionModel);
      final regularResult = modelGenerator.run(regularModel);

      expect(enumResult.content, contains('enum'));
      expect(unionResult.content, contains('union'));
      expect(regularResult.content, contains('class'));
    });
  });
}
