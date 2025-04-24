import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Orchestrates the Dart code generation from Swagger/OpenAPI using code_builder for convertors
class SwaggerToDartDartCodeGenerator {
  SwaggerToDartDartCodeGenerator({
    required this.config,
    required this.openApi,
    this.fileHandler = const FileHandler(),
  });

  final ConfigComponents config;
  final OpenApi openApi;
  final FileHandler fileHandler;

  /// Runs the complete generation process
  Future<void> run() async {
    await _generateModels();
    await _generateClients();
    await _generateConvertors();
    await _generateExports();
  }

  /// Generates all models from the OpenAPI schemas
  Future<void> _generateModels() async {
    final modelGenerator = OpenApiModelGenerator(config: config);
    await fileHandler.createDirectory(config.pathConfig.modelsOutputDirectory);

    final schemas = openApi.components?.schemas;
    if (schemas != null) {
      for (final entry in schemas.entries) {
        final result = modelGenerator.run(entry);
        final filepath = '${config.pathConfig.modelsOutputDirectory}'
            '/${config.namingUtils.renameFile(entry.key)}.dart';
        await fileHandler.writeFile(filepath, result.content);
      }
    }
  }

  /// Generates all clients from the OpenAPI paths
  Future<void> _generateClients() async {
    final clientGen = OpenApiClientGenerator(config: config);
    final baseGen =
        OpenApiBaseClientGenerator(config: config, openApi: openApi);
    await fileHandler.createDirectory(config.pathConfig.clientsOutputDirectory);

    final pathsMap = openApi.paths;
    if (pathsMap != null) {
      final pathsByTags = OpenApiParser().extractPathsByTags(pathsMap);
      // Per-tag clients
      for (final tag in pathsByTags.keys) {
        final result = clientGen.generator(
          path: pathsMap,
          clientName: tag,
          tagPaths: pathsByTags[tag]!,
        );
        final filepath = '${config.pathConfig.clientsOutputDirectory}'
            '/${config.namingUtils.renameFile(tag)}_client.dart';
        await fileHandler.writeFile(filepath, result.content);
      }
      // Base client
      final baseContent = baseGen.generator(
        clients: pathsByTags.keys.toList(),
      );
      final basePath = '${config.pathConfig.clientsOutputDirectory}'
          '/${config.namingUtils.renameFile(config.baseConfig.swaggerToDart.apiClientClassName)}.dart';
      await fileHandler.writeFile(basePath, baseContent);
    }
  }

  /// Generates convertors using code_builder instead of raw string
  Future<void> _generateConvertors() async {
    // Build the library
    final lib = Library((b) {
      // Imports
      b.directives.addAll([
        Directive.import('package:dio/dio.dart'),
        Directive.import('package:json_annotation/json_annotation.dart'),
      ]);

      // Converter class
      b.body.add(Class((c) {
        c.name = 'MultipartFileJsonConverter';
        c.implements.add(refer('JsonConverter<MultipartFile, MultipartFile>'));
        c.constructors.add(Constructor((ctr) => ctr.constant = true));

        // fromJson
        c.methods.add(Method((m) => m
          ..name = 'fromJson'
          ..returns = refer('MultipartFile')
          ..annotations.add(CodeExpression(Code('override')))
          ..requiredParameters.add(Parameter((p) => p
            ..name = 'json'
            ..type = refer('MultipartFile')))
          ..lambda = true
          ..body = Code('json')));

        // toJson
        c.methods.add(Method((m) => m
          ..name = 'toJson'
          ..returns = refer('MultipartFile')
          ..annotations.add(CodeExpression(Code('override')))
          ..requiredParameters.add(Parameter((p) => p
            ..name = 'object'
            ..type = refer('MultipartFile')))
          ..lambda = true
          ..body = Code('object')));
      }));

      // Add a class to hold the convertors list
      b.body.add(Class((c) {
        c.name = 'Convertors';
        c.fields.add(Field((f) => f
          ..name = 'convertors'
          ..modifier = FieldModifier.constant
          ..static = true
          ..type = TypeReference((t) => t
            ..symbol = 'List'
            ..types.add(refer('JsonConverter')))
          ..assignment =
              Code('<JsonConverter>[MultipartFileJsonConverter()]')));
      }));
    });

    // Format
    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    final formatter = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    );
    final code = formatter.format('${lib.accept(emitter)}');

    final outDir = config.pathConfig.convertorOutputDirectory;
    await fileHandler.createDirectory(outDir);
    final filePath = '$outDir/convertors.dart';
    await fileHandler.writeFile(filePath, code);
  }

  /// Generates export files for models and clients
  Future<void> _generateExports() async {
    final exportsGen = DartCodeExportsGenerator(
      config: config,
      fileHandler: fileHandler,
    );
    await exportsGen.generateModelsExports();
    await exportsGen.generateClientsExports();
  }
}
