import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:yaml/yaml.dart';
import 'file_handler.dart';

/// Handles setup and validation for the code generator
class SetupHandler {
  SetupHandler({required this.fileHandler});

  final FileHandler fileHandler;

  /// Validates and sets up the environment for code generation
  Future<({SwaggerToDartConfig config, OpenApi openApi})> setup() async {
    final rootDir = Directory.current.path;
    final config = await _loadConfig(rootDir);
    final openApi = await _loadOpenApi(config);
    await _setupOutputDirectory(config);
    return (config: config, openApi: openApi);
  }

  /// Loads and validates the configuration
  Future<SwaggerToDartConfig> _loadConfig(String rootDir) async {
    final pubspecPath = path.join(rootDir, 'pubspec.yaml');
    final pubspec = Pubspec.parse(
      await File(pubspecPath).readAsString(),
      sourceUrl: Uri.parse(pubspecPath),
    );

    final swaggerToDartYamlFile = File(SwaggerToDartYaml.filename);
    if (!swaggerToDartYamlFile.existsSync()) {
      throw Exception('${SwaggerToDartYaml.filename} not found');
    }

    final swaggerToDartYamlFileContent =
        await swaggerToDartYamlFile.readAsString();
    final swaggerToDartYamlMap = loadYaml(swaggerToDartYamlFileContent);

    final swaggerToDartYaml = SwaggerToDartYaml.fromYamlMap(
      swaggerToDartYamlMap,
    );
    return SwaggerToDartConfig(
      pubspec: pubspec,
      swaggerToDart: swaggerToDartYaml.swaggerToDart,
    );
  }

  /// Loads and validates the OpenAPI specification
  Future<OpenApi> _loadOpenApi(SwaggerToDartConfig config) async {
    final inputFile = File(config.swaggerToDart.inputDirectory);
    if (!inputFile.existsSync()) {
      throw Exception(
        'Input file not found: ${config.swaggerToDart.inputDirectory}',
      );
    }

    final json = await inputFile.readAsString();
    final map = jsonDecode(json);
    return OpenApi.fromJson(map);
  }

  /// Sets up the output directory
  Future<void> _setupOutputDirectory(SwaggerToDartConfig config) async {
    final genDir = Directory(config.swaggerToDart.outputDirectory);
    if (genDir.existsSync()) {
      await genDir.delete(recursive: true);
    }
    await genDir.create(recursive: true);
  }
}
