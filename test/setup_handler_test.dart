import 'dart:io';
import 'package:test/test.dart';
import 'package:swagger_to_dart/src/utils/setup_handler.dart';
import 'package:swagger_to_dart/src/utils/file_handler.dart';
import 'package:swagger_to_dart/src/config/swagger_to_dart_yaml.dart';
import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:pubspec_parse/pubspec_parse.dart';

void main() {
  group('SetupHandler', () {
    late SetupHandler setupHandler;
    late FileHandler fileHandler;
    late Directory testDir;
    late File pubspecFile;
    late File configFile;

    /// Sets up the test environment before each test
    setUp(() {
      fileHandler = const FileHandler();
      testDir = Directory('test/temp');
      pubspecFile = File('${testDir.path}/pubspec.yaml');
      configFile = File('${testDir.path}/${SwaggerToDartYaml.filename}');
      setupHandler = SetupHandler(
        fileHandler: fileHandler,
        configPath: configFile.path,
      );
    });

    /// Cleans up the test environment after each test
    tearDown(() {
      if (pubspecFile.existsSync()) {
        pubspecFile.deleteSync();
      }
      if (configFile.existsSync()) {
        configFile.deleteSync();
      }
      if (testDir.existsSync()) {
        testDir.deleteSync();
      }
    });

    /// Tests the configuration loading functionality
    test('setup loads configuration from YAML file', () async {
      // Create test pubspec.yaml
      await pubspecFile.writeAsString('''
name: test_package
version: 1.0.0
''');

      // Create test swagger_to_dart.yaml
      await configFile.writeAsString('''
swagger_to_dart:
  input_directory: schema/swagger.json
  output_directory: lib/src/gen
  api_client_class_name: TestApiClient
  imports:
    - package:test/import.dart
  skipped_parameters:
    - Accept-Language
''');

      // Change to test directory
      final originalDir = Directory.current;
      Directory.current = testDir;

      try {
        final (config: config, openApi: openApi) = await setupHandler.setup();

        expect(config.swaggerToDart.inputDirectory, 'schema/swagger.json');
        expect(config.swaggerToDart.outputDirectory, 'lib/src/gen');
        expect(config.swaggerToDart.apiClientClassName, 'TestApiClient');
        expect(config.swaggerToDart.imports, ['package:test/import.dart']);
        expect(config.swaggerToDart.skippedParameters, ['Accept-Language']);
      } finally {
        Directory.current = originalDir;
      }
    });

    /// Tests error handling for missing configuration file
    test('setup throws exception when config file is missing', () async {
      // Create test pubspec.yaml
      await pubspecFile.writeAsString('''
name: test_package
version: 1.0.0
''');

      // Change to test directory
      final originalDir = Directory.current;
      Directory.current = testDir;

      try {
        expect(() => setupHandler.setup(), throwsException);
      } finally {
        Directory.current = originalDir;
      }
    });

    /// Tests error handling for invalid pubspec.yaml
    test('setup throws exception when pubspec.yaml is invalid', () async {
      // Create invalid pubspec.yaml
      await pubspecFile.writeAsString('invalid yaml content');

      // Create test swagger_to_dart.yaml
      await configFile.writeAsString('''
swagger_to_dart:
  input_directory: schema/swagger.json
''');

      // Change to test directory
      final originalDir = Directory.current;
      Directory.current = testDir;

      try {
        expect(() => setupHandler.setup(), throwsException);
      } finally {
        Directory.current = originalDir;
      }
    });

    /// Tests the output directory setup functionality
    test('setup creates and cleans output directory', () async {
      // Create test pubspec.yaml
      await pubspecFile.writeAsString('''
name: test_package
version: 1.0.0
''');

      // Create test swagger_to_dart.yaml with output directory
      final outputDir = '${testDir.path}/output';
      await configFile.writeAsString('''
swagger_to_dart:
  input_directory: schema/swagger.json
  output_directory: $outputDir
''');

      // Create output directory with some files
      final outputDirFile = Directory(outputDir);
      await outputDirFile.create(recursive: true);
      await File('$outputDir/test.txt').writeAsString('test');

      // Change to test directory
      final originalDir = Directory.current;
      Directory.current = testDir;

      try {
        await setupHandler.setup();

        // Verify directory exists and is empty
        expect(outputDirFile.existsSync(), isTrue);
        expect(outputDirFile.listSync().isEmpty, isTrue);
      } finally {
        Directory.current = originalDir;
      }
    });
  });
}
