import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:yaml/yaml.dart';

class GenerationContext {
  GenerationContext({
    required this.pubspec,
    required this.swaggerToDart,
    required this.openApi,
  });

  final OpenApi openApi;
  final Pubspec pubspec;
  final SwaggerToDart swaggerToDart;

  bool get isFlutterProject {
    return pubspec.dependencies.containsKey('flutter');
  }

  ModelGenerator get modelGenerator => ModelGenerator(this);
  final List<Library> _models = <Library>[];
  List<Library> get models => _models;

  void addModel(Library library) {
    _models.add(library);
  }

  ApiClientGenerator get apiClientGenerator => ApiClientGenerator(this);
  final List<Library> _apiClients = <Library>[];
  List<Library> get apiClients => _apiClients;

  void addApiClient(Library library) {
    _apiClients.add(library);
  }

  final List<Class> _jsonConvertor = <Class>[];
  List<Class> get jsonConvertor => _jsonConvertor;

  void addJsonConvertor(Class jsonConvertor) {
    _jsonConvertor.add(jsonConvertor);
  }

  void generate() {
    modelGenerator.generate();
    apiClientGenerator.generate();
  }
}

/// Handles setup and validation for the code generator
class GenerationContextBuilder {
  GenerationContextBuilder({this.configPath});

  final String? configPath;

  /// Validates and sets up the environment for code generation
  Future<GenerationContext> build() async {
    final rootDir = Directory.current.path;

    final swaggerToDart = await _loadSwaggerToDartYaml(rootDir);
    final pubspec = await _loadPubspecYaml(rootDir);
    final openApi = await _loadOpenApi(swaggerToDart);

    return GenerationContext(
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
