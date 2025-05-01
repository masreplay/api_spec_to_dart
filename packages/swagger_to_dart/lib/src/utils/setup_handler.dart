import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/src/pubspec.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:yaml/yaml.dart';

/// Handles setup and validation for the code generator
class SetupHandler {
  SetupHandler({required this.fileHandler, this.configPath});

  final FileHandler fileHandler;
  final String? configPath;

  /// Validates and sets up the environment for code generation
  Future<({BaseConfig config, OpenApi openApi})> setup() async {
    final rootDir = Directory.current.path;

    final config = await _loadConfig(rootDir);
    final openApi = await _loadOpenApi(config);
    await _setupOutputDirectory(config);
    return (config: config, openApi: openApi);
  }

  /// Loads and validates the configuration
  Future<BaseConfig> _loadConfig(String rootDir) async {
    final pubspecPath = path.join(rootDir, 'pubspec.yaml');
    final pubspec = Pubspec.parse(
      await File(pubspecPath).readAsString(),
      sourceUrl: Uri.parse(pubspecPath),
    );

    // Use custom config path if provided, otherwise use default
    final configFilePath = configPath ?? SwaggerToDartYaml.filename;
    final swaggerToDartYamlFile = File(configFilePath);

    if (!swaggerToDartYamlFile.existsSync()) {
      throw Exception('Configuration file not found: $configFilePath');
    }

    final swaggerToDartYamlFileContent =
        await swaggerToDartYamlFile.readAsString();
    final swaggerToDartYamlMap = loadYaml(swaggerToDartYamlFileContent);

    final swaggerToDartYaml = SwaggerToDartYaml.fromYamlMap(
      swaggerToDartYamlMap,
    );

    return ConfigFactory.create(
      pubspec: pubspec,
      swaggerToDart: swaggerToDartYaml.swaggerToDart,
    );
  }

  /// Loads and validates the OpenAPI specification
  Future<OpenApi> _loadOpenApi(BaseConfig config) async {
    final swaggerConfig = config.baseConfig.swaggerToDart;
    Map<String, dynamic> map;

    // Check if URL is provided
    if (swaggerConfig.url != null && swaggerConfig.url!.isNotEmpty) {
      // Fetch from URL
      print('Fetching OpenAPI specification from URL: ${swaggerConfig.url}');

      try {
        final uri = Uri.parse(swaggerConfig.url!);
        final client = HttpClient();
        final request = await client.getUrl(uri);
        final response = await request.close();

        if (response.statusCode != 200) {
          throw Exception(
            'Failed to fetch OpenAPI spec from URL. Status: ${response.statusCode}',
          );
        }

        final content = await response.transform(utf8.decoder).join();

        // Parse JSON content
        try {
          map = jsonDecode(content);
        } catch (e) {
          throw Exception('Failed to parse OpenAPI spec as JSON: $e');
        }

        // Save the fetched spec locally if input_directory is provided
        if (swaggerConfig.inputDirectory.isNotEmpty) {
          final inputFile = File(swaggerConfig.inputDirectory);
          await inputFile.create(recursive: true);
          await inputFile.writeAsString(
            JsonEncoder.withIndent('  ').convert(map),
          );
          print('Saved OpenAPI spec to: ${swaggerConfig.inputDirectory}');
        }

        client.close();
      } catch (e) {
        throw Exception('Error fetching OpenAPI spec from URL: $e');
      }
    } else {
      // Fetch from file
      final inputFile = File(swaggerConfig.inputDirectory);
      if (!inputFile.existsSync()) {
        throw Exception(
          'Input file not found: ${swaggerConfig.inputDirectory}',
        );
      }

      final content = await inputFile.readAsString();

      // Parse JSON file
      try {
        map = jsonDecode(content);
      } catch (e) {
        throw Exception('Failed to parse JSON file: $e');
      }
    }

    return OpenApi.fromJson(map);
  }

  /// Sets up the output directory
  Future<void> _setupOutputDirectory(BaseConfig config) async {
    final genDir = Directory(config.baseConfig.swaggerToDart.outputDirectory);
    if (genDir.existsSync()) {
      await genDir.delete(recursive: true);
    }
    await genDir.create(recursive: true);
  }
}
