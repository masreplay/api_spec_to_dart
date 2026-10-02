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

  /// File names of component schemas; inline models never take them.
  final Set<String> reservedModelNames = {};

  /// Class name of every non-generic component schema, by schema key. Unique
  /// even when several schemas share a title (e.g. FastAPI's `X-Input` /
  /// `X-Output`); references and strategies both read it.
  final Map<String, String> componentClassNames = {};

  /// Adds a component model. The first model for a file name wins; a
  /// different model mapping to the same name is reported, not silently
  /// lost — unless [isGenericInstantiation], where every instantiation of
  /// the same generic class (`BaseResponse[User]`, `BaseResponse[Item]`, …)
  /// is expected to collapse into that one class, so differing source is not
  /// a collision worth reporting.
  void addModel(Library library, {bool isGenericInstantiation = false}) {
    final existing = _models[library.name!];
    if (existing == null) {
      _models[library.name!] = library;
    } else if (!isGenericInstantiation &&
        _source(existing) != _source(library)) {
      print(
        'swagger_to_dart: warning: two schemas generate ${library.name}.dart; '
        'keeping the first. Give one of them a different title.',
      );
    }
  }

  /// Adds an inline model (enum, union, query class) as [className], or as
  /// `${className}2`, `3`... when a different model already uses the name.
  /// Returns the class name used.
  String registerInlineModel(
    String className,
    Library Function(String className) build,
  ) {
    for (var i = 1; ; i++) {
      final name = i == 1 ? className : '$className$i';
      final library = build(name);
      final existing = _models[library.name!];
      if (existing == null && !reservedModelNames.contains(library.name)) {
        _models[library.name!] = library;
        return name;
      }
      if (existing != null && _source(existing) == _source(library)) {
        return name;
      }
    }
  }

  String _source(Library library) => '${library.accept(DartEmitter())}';

  final List<Library> _apiClients = <Library>[];
  List<Library> get apiClients => _apiClients;

  void addApiClient(Library library) {
    _apiClients.add(library);
  }

  /// Builds every model and api client from [openApi], replacing earlier results.
  void generate() {
    _models.clear();
    _apiClients.clear();
    reservedModelNames.clear();
    componentClassNames.clear();
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

  /// The spec at `input_directory` (refreshed from `url` when configured),
  /// converted to OpenAPI 3.
  Future<OpenApi> _loadOpenApi(SwaggerToDart config) async {
    final input = path.join(rootDirectory, config.inputDirectory);
    final document = await loadSpec(url: config.url, path: input);
    return OpenApi.fromJson(
      toOpenApiJson(
        document,
        sourceName: path.basenameWithoutExtension(input),
      ),
    );
  }
}
