import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:swagger_to_dart/src/utils/warning.dart';
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

  String get _classPrefix => config.model.classPrefix ?? '';

  /// [className] (a renamed model name) with `model.class_prefix` prepended.
  /// Called once where a model name is made; names derived from a model's
  /// class name start from [unprefixed].
  String withClassPrefix(String className) => _classPrefix.isEmpty
      ? className
      // Prefixed, a reserved word needs no escape: `$Function` →
      // PostmanFunction.
      : '$_classPrefix${className.replaceFirst(RegExp(r'^\$'), '')}';

  /// A model's [className] without the prefix [withClassPrefix] gave it:
  /// what names derived from it start from (`PostmanItem` → `Item_info`).
  String unprefixed(String className) =>
      _classPrefix.isNotEmpty && className.startsWith(_classPrefix)
      ? className.substring(_classPrefix.length)
      : className;

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
      printWarning(
        'two schemas generate ${library.name}.dart; '
        'keeping the first. Give one of them a different title.',
      );
    }
  }

  /// Adds an inline model (object, enum, union, query class) as [className],
  /// reusing a model of that name with the same code (docs aside). When a
  /// different model has the name, it is [orElse] (a title gives way to the
  /// context), else `${className}2`, `3`... Returns the class name used.
  String registerInlineModel(
    String className,
    Library Function(String className) build, {
    String? orElse,
  }) {
    for (var i = 1; ; i++) {
      final name = i == 1 ? className : '$className$i';
      final before = {..._models.keys};
      final library = build(name);
      final existing = _models[library.name!];
      if (existing == null && !reservedModelNames.contains(library.name)) {
        _models[library.name!] = library;
        return name;
      }
      if (existing != null && _code(existing) == _code(library)) {
        return name;
      }
      // A model nested in this one took its name: every suffix would be
      // taken the same way.
      if (existing != null && !before.contains(library.name)) {
        throw StateError(
          'swagger_to_dart: a model nested in $name is named $name too; '
          'give the nested schema a title.',
        );
      }
      // Drop the nested models this attempt registered under its name.
      _models.removeWhere((key, _) => !before.contains(key));
      if (orElse != null && orElse != className) {
        return registerInlineModel(orElse, build);
      }
    }
  }

  String _source(Library library) => '${library.accept(DartEmitter())}';

  /// [library]'s source without its doc comment (the schema it came from:
  /// a `oneOf` and an `anyOf` of the same variants are one model).
  String _code(Library library) =>
      _source(library.rebuild((b) => b.docs.clear()));

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
