import 'package:swagger_to_dart/swagger_to_dart.dart';

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
    await _generateExports();
  }

  /// Generates all models from the OpenAPI schemas
  Future<void> _generateModels() async {
    final modelGenerator = OpenApiModelGenerator(config: config);

    await fileHandler.createDirectory(config.pathConfig.modelsOutputDirectory);

    if (openApi.components case final openApiComponents?)
      for (final entry in openApiComponents.schemas.entries) {
        final result = modelGenerator.run(entry);
        final filepath =
            '${config.pathConfig.modelsOutputDirectory}/${config.namingUtils.renameFile(entry.key)}.dart';
        await fileHandler.writeFile(filepath, result.content);
      }
  }

  /// Generates all clients from the OpenAPI paths
  Future<void> _generateClients() async {
    final clientGenerator = OpenApiClientGenerator(config: config);
    final baseClientGenerator = OpenApiBaseClientGenerator(
      config: config,
      openApi: openApi,
    );

    await fileHandler.createDirectory(config.pathConfig.clientsOutputDirectory);

    if (openApi.paths case final openApiPaths?) {
      // Generate individual clients
      final pathsByTags = OpenApiParser().extractPathsByTags(openApiPaths);

      for (final entry in pathsByTags.entries) {
        final tag = entry.key;
        final paths = entry.value;

        final result = clientGenerator.generator(
          path: openApiPaths,
          clientName: tag,
          tagPaths: paths,
        );

        final filepath =
            '${config.pathConfig.clientsOutputDirectory}/${config.namingUtils.renameFile(tag)}_client.dart';
        await fileHandler.writeFile(filepath, result.content);
      }

      // Generate base client
      final baseClientContent = baseClientGenerator.generator(
        clients: pathsByTags.keys.toList(),
      );

      final baseClientPath =
          '${config.pathConfig.clientsOutputDirectory}/${config.namingUtils.renameFile(config.baseConfig.swaggerToDart.apiClientClassName)}.dart';
      await fileHandler.writeFile(baseClientPath, baseClientContent);
    }
  }

  /// Generates export files for models and clients
  Future<void> _generateExports() async {
    final exportsGenerator = DartCodeExportsGenerator(
      config: config,
      fileHandler: fileHandler,
    );

    await exportsGenerator.generateModelsExports();
    await exportsGenerator.generateClientsExports();
  }
}
