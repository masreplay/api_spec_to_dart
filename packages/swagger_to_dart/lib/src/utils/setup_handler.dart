import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/src/config/code_generation_context.dart';
import 'package:swagger_to_dart/src/config/swagger_to_dart_yaml.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:yaml/yaml.dart';

/// Handles setup and validation for the code generator
class SetupHandler {
  SetupHandler({this.configPath});

  final String? configPath;

  /// Validates and sets up the environment for code generation
  Future<CodeGenerationContext> setup() async {
    final rootDir = Directory.current.path;

    final swaggerToDart = await _loadSwaggerToDartYaml(rootDir);
    final pubspec = await _loadPubspecYaml(rootDir);
    final openApi = await _loadOpenApi(swaggerToDart);

    return CodeGenerationContext(
      swaggerToDart: swaggerToDart,
      pubspec: pubspec,
      openApi: openApi,
    );
  }

  Future<Pubspec> _loadPubspecYaml(String rootDir) async {
    final filePath = path.join(rootDir, 'pubspec.yaml');

    final file = File(filePath);
    if (!file.existsSync()) {
      print('Pubspec file not found: $filePath');
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
      print('swagger_to_dart.yaml file not found: $filePath');
      throw Exception('swagger_to_dart.yaml file not found: $filePath');
    }

    final content = await file.readAsString();
    final yaml = loadYaml(content);

    return SwaggerToDartYaml.fromYamlMap(yaml).swaggerToDart;
  }

  /// Loads and validates the OpenAPI specification
  Future<OpenApi> _loadOpenApi(SwaggerToDart config) async {
    final file = File(config.inputDirectory);

    // If a URL is provided
    if (config.url case final url?) {
      final uri = Uri.tryParse(url);
      if (uri == null || !uri.hasAbsolutePath) {
        print('Invalid URL: $url');
        throw Exception('Invalid URL: $url');
      }

      try {
        print('Fetching OpenAPI specification from URL: $url');
        final dio = Dio();
        final response = await dio.get(url);

        if (response.statusCode != 200 && response.statusCode != 201) {
          throw Exception(
            'Failed to fetch OpenAPI spec from URL. Status: ${response.statusCode}',
          );
        }

        final data = response.data;

        if (data is! Map<String, dynamic>) {
          print('OpenAPI spec is not a valid JSON object');
          throw Exception('OpenAPI spec is not a valid JSON object');
        }

        // Cache the spec locally if file doesn't exist
        if (!file.existsSync()) {
          print('Writing OpenAPI specification to file: ${file.path}');
          await file.writeAsString(jsonEncode(data));
        }

        return OpenApi.fromJson(data);
      } catch (e) {
        print('Error fetching OpenAPI spec from URL: $e');
      }
    }

    // Otherwise, read from local file
    if (!file.existsSync()) {
      print('Input file not found: ${config.inputDirectory}');
    }

    final content = await file.readAsString();
    final map = jsonDecode(content);

    return OpenApi.fromJson(map);
  }
}
