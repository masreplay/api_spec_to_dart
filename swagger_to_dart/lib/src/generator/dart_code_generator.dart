import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:path/path.dart' as path;

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
    final modelGenerator = OpenApiModelGenerator(
      config: config,
      convertersImport: _getConvertersImport(config.pathConfig.modelsOutputDirectory),
    );

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
    final clientGenerator = OpenApiClientGenerator(
      config: config,
      convertersImport: _getConvertersImport(config.pathConfig.clientsOutputDirectory),
    );
    final baseClientGenerator = OpenApiBaseClientGenerator(
      config: config,
      openApi: openApi,
      convertersImport: _getConvertersImport(config.pathConfig.clientsOutputDirectory),
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

  /// Generates convertors for handling special data types like MultipartFile
  Future<void> _generateConvertors() async {
    final content = '''
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';

const convertors = <JsonConverter>[MultipartFileJsonConverter()];

class MultipartFileJsonConverter
    implements JsonConverter<MultipartFile, MultipartFile> {
  const MultipartFileJsonConverter();

  @override
  MultipartFile fromJson(MultipartFile json) => json;

  @override
  MultipartFile toJson(MultipartFile object) => object;
}
''';

    final convertorsDir = config.pathConfig.modelsOutputDirectory;
    await fileHandler.createDirectory(convertorsDir);

    final filePath = '$convertorsDir/convertors.dart';
    await fileHandler.writeFile(filePath, content);

    // Make sure the convertors are included in the exports
    // They'll be picked up by _generateExports() since they're in the models directory
  }

  /// Gets the appropriate import path for the converters.dart file
  /// based on the target directory where files are being generated
  String _getConvertersImport(String targetDirectory) {
    final convertorsPath = path.join(config.pathConfig.modelsOutputDirectory, 'convertors.dart');
    final targetPath = path.dirname(targetDirectory);
    
    // Calculate relative import path from the target directory to the converters file
    final relativePath = path.relative(convertorsPath, from: targetPath);
    return relativePath.startsWith('.') ? relativePath : './$relativePath';
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
