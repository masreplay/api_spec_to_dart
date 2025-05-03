import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/src/config/open_api_to_dart_type_converter.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:yaml/yaml.dart';

/// Handles setup and validation for the code generator
class SetupHandler {
  SetupHandler({this.configPath});

  final String? configPath;

  /// Validates and sets up the environment for code generation
  Future<SwaggerToDartConfig> setup() async {
    final rootDir = Directory.current.path;

    final swaggerToDart = await _loadSwaggerToDartYaml(rootDir);
    final pubspec = await _loadPubspecYaml(rootDir);
    final openApi = await _loadOpenApi(swaggerToDart);
    await _setupOutputDirectory(swaggerToDart);
    final isFlutterProject = pubspec.dependencies.containsKey('flutter');

    return SwaggerToDartConfig(
      swaggerToDart: swaggerToDart,
      pubspec: pubspec,
      openApi: openApi,
      dartTypeConverter:
          OpenApiToDartTypeConverter(isFlutterProject: isFlutterProject),
    );
  }

  Future<Pubspec> _loadPubspecYaml(String rootDir) async {
    final filePath = path.join(rootDir, 'pubspec.yaml');

    final file = File(filePath);
    if (!file.existsSync()) {
      throw Exception('Pubspec file not found: $filePath');
    }

    final content = await file.readAsString();
    return Pubspec.parse(content);
  }

  Future<SwaggerToDart> _loadSwaggerToDartYaml(String rootDir) async {
    final filePath =
        configPath ?? path.join(rootDir, SwaggerToDartYaml.filename);

    final file = File(filePath);

    if (!file.existsSync()) {
      throw Exception('swagger_to_dart.yaml file not found: $filePath');
    }

    final content = await file.readAsString();
    final yaml = loadYaml(content);

    return SwaggerToDartYaml.fromYamlMap(yaml).swaggerToDart;
  }

  /// Loads and validates the OpenAPI specification
  Future<OpenApi> _loadOpenApi(SwaggerToDart swaggerConfig) async {
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
  Future<void> _setupOutputDirectory(SwaggerToDart swaggerToDart) async {
    final genDir = Directory(swaggerToDart.outputDirectory);
    if (genDir.existsSync()) {
      await genDir.delete(recursive: true);
    }
    await genDir.create(recursive: true);
  }
}
