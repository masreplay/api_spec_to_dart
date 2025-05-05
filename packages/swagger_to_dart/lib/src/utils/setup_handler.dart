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
    await _setupOutputDirectory(swaggerToDart);

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
      print('Fetching OpenAPI specification from URL: \\${swaggerConfig.url}');

      map = await _downloadAndParseOpenApi(swaggerConfig.url!);
    } else {
      // Fetch from file
      final inputFile = File(swaggerConfig.inputDirectory);
      if (!inputFile.existsSync()) {
        throw Exception(
          'Input file not found: \\${swaggerConfig.inputDirectory}',
        );
      }

      final content = await inputFile.readAsString();

      // Parse JSON file
      try {
        map = jsonDecode(content);
      } catch (e) {
        throw Exception('Failed to parse JSON file: \\$e');
      }
    }

    return OpenApi.fromJson(map);
  }

  /// Downloads and parses the OpenAPI spec from a URL using Dio
  Future<Map<String, dynamic>> _downloadAndParseOpenApi(String url) async {
    try {
      final dio = Dio();
      final response = await dio.get(url);

      if (response.statusCode != 200 && response.statusCode != 201) {
        throw Exception(
          'Failed to fetch OpenAPI spec from URL. Status: \\${response.statusCode}',
        );
      }

      final content =
          response.data is String ? response.data : jsonEncode(response.data);

      try {
        return jsonDecode(content);
      } catch (e) {
        throw Exception('Failed to parse OpenAPI spec as JSON: \\$e');
      }
    } catch (e) {
      throw Exception('Error fetching OpenAPI spec from URL: \\$e');
    }
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
