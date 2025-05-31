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
    required this.config,
    required this.openApi,
  });

  final OpenApi openApi;
  final Pubspec pubspec;
  final SwaggerToDart config;

  bool get isFlutterProject {
    return pubspec.dependencies.containsKey('flutter');
  }

  ContextExtension get extension => ContextExtension(this);

  final Map<String, Library> _models = <String, Library>{};
  List<Library> get models => _models.values.toList();

  void addModel(Library library) {
    // if already exists, throw error
    if (_models.containsKey(library.name!)) {
      // print('Model ${library.name!} already exists');
      return;
    }

    _models[library.name!] = library;
  }

  final List<Library> _apiClients = <Library>[];
  List<Library> get apiClients => _apiClients;

  void addApiClient(Library library) {
    _apiClients.add(library);
  }

  final Map<String, Class> _jsonConvertor = <String, Class>{};
  List<Class> get jsonConvertor => _jsonConvertor.values.toList();

  void addJsonConvertor(Class jsonConvertor) {
    if (_jsonConvertor.containsKey(jsonConvertor.name)) {
      print('Json convertor ${jsonConvertor.name} already exists');
      return;
    }

    _jsonConvertor[jsonConvertor.name] = jsonConvertor;
  }

  void generate() {
    extension.modelGenerator.generate();
    extension.apiClientGenerator.generate();
  }
}

class ContextExtension {
  ContextExtension(this.context);

  final GenerationContext context;

  PropertyGeneratorStrategy get propertyGenerator {
    return PropertyGeneratorStrategy(context);
  }

  ApiClientGenerator get apiClientGenerator {
    return ApiClientGenerator(context);
  }

  OpenApiSchemaDartTypeConverter get typeConverter =>
      OpenApiSchemaDartTypeConverter(context);

  ModelGenerator get modelGenerator => ModelGenerator(context);
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
      config: swaggerToDart,
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
