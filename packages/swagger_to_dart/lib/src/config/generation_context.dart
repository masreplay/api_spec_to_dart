import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:yaml/yaml.dart';

class GenerationContext {
  GenerationContext({
    required this.pubspec,
    required this.config,
    required this.openApi,
    this.rootDirectory = '.',
  });

  final OpenApi openApi;

  /// The consuming project's root; relative config paths resolve against it.
  final String rootDirectory;
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

  /// Builds every model and api client from [openApi], replacing earlier results.
  void generate() {
    _models.clear();
    _apiClients.clear();
    _jsonConvertor.clear();
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

/// Loads the config, the pubspec and the OpenAPI document of a project.
class GenerationContextBuilder {
  GenerationContextBuilder({this.configPath, String? rootDirectory})
      : rootDirectory = rootDirectory ?? Directory.current.path;

  final String? configPath;

  /// The project root holding `pubspec.yaml`; relative config paths resolve
  /// against it.
  final String rootDirectory;

  Future<GenerationContext> build() async {
    final swaggerToDart = await _loadSwaggerToDartYaml();
    final pubspec = await _loadPubspecYaml();
    final openApi = await _loadOpenApi(swaggerToDart);

    return GenerationContext(
      config: swaggerToDart,
      pubspec: pubspec,
      openApi: openApi,
      rootDirectory: rootDirectory,
    );
  }

  Future<Pubspec> _loadPubspecYaml() async {
    final file = File(path.join(rootDirectory, 'pubspec.yaml'));
    if (!file.existsSync()) {
      throw FileSystemException('pubspec.yaml not found', file.path);
    }

    return Pubspec.parse(await file.readAsString());
  }

  Future<SwaggerToDart> _loadSwaggerToDartYaml() async {
    final file = File(
      configPath ?? path.join(rootDirectory, SwaggerToDartYaml.filename),
    );
    if (!file.existsSync()) {
      throw FileSystemException(
        '${SwaggerToDartYaml.filename} not found',
        file.path,
      );
    }

    final yaml = loadYaml(await file.readAsString());
    return SwaggerToDartYaml.fromYamlMap(yaml).swaggerToDart;
  }

  /// Fetches the spec from `url` when configured, refreshing the local copy
  /// at `input_directory`; otherwise (or when the fetch fails and a local
  /// copy exists) reads the local copy.
  Future<OpenApi> _loadOpenApi(SwaggerToDart config) async {
    final file = File(path.join(rootDirectory, config.inputDirectory));

    if (config.url case final url?) {
      final uri = Uri.tryParse(url);
      if (uri == null || !uri.hasScheme) {
        throw FormatException('Invalid OpenAPI url', url);
      }

      try {
        print('Fetching OpenAPI specification from $url');
        final data = await _fetchJson(uri);

        // Always refresh: a write-once cache silently ages while generation
        // uses the live document, so the file stops describing the client.
        await file.parent.create(recursive: true);
        await file.writeAsString(const JsonEncoder.withIndent('  ').convert(data));

        return OpenApi.fromJson(data);
      } on Exception catch (e) {
        // Generating from a stale spec looks like success and silently drops
        // endpoints, so the fallback is loud.
        if (!file.existsSync()) rethrow;
        final age = DateTime.now().difference(file.lastModifiedSync());
        print('!' * 78);
        print('WARNING: could not fetch the OpenAPI spec from $url\n  $e');
        print(
          'Falling back to ${file.path}, last modified ${age.inDays} day(s) '
          'ago. Endpoints added since then are missing from the output.',
        );
        print('!' * 78);
      }
    }

    if (!file.existsSync()) {
      throw FileSystemException('OpenAPI input file not found', file.path);
    }

    final json = jsonDecode(await file.readAsString());
    if (json is! Map<String, dynamic>) {
      throw FormatException('OpenAPI spec is not a JSON object', file.path);
    }
    return OpenApi.fromJson(json);
  }

  Future<Map<String, dynamic>> _fetchJson(Uri uri) async {
    final client = HttpClient();
    try {
      final response = await (await client.getUrl(uri)).close();
      final body = await response.transform(utf8.decoder).join();
      if (response.statusCode ~/ 100 != 2) {
        throw HttpException('HTTP ${response.statusCode}', uri: uri);
      }

      final json = jsonDecode(body);
      if (json is! Map<String, dynamic>) {
        throw FormatException('OpenAPI spec is not a JSON object', uri);
      }
      return json;
    } finally {
      client.close();
    }
  }
}
