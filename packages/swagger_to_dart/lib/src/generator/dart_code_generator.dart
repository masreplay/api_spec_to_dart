import 'package:swagger_to_dart/src/pubspec.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

//TODO(shahadKadhim): refactor this
final globalUnionClasses = <String>[];

class SwaggerToDartDartCodeGenerator {
  SwaggerToDartDartCodeGenerator({
    required this.config,
    required this.openApi,
    
  });

  final OpenApi openApi;
  final BaseConfig config;
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

    if (openApi.components case final openApiComponents?)
      for (final entry in openApiComponents.schemas.entries) {
        final result = modelGenerator.run(entry);
        final filepath =
            '${config.pathConfig.modelsOutputDirectory}/${NamingUtils.instance.renameFile(entry.key)}.dart';
        await fileHandler.writeLibrary(result.content);
      }
  }

  /// Generates all clients from the OpenAPI paths
  Future<void> _generateClients() async {
    final clientGenerator = OpenApiClientGenerator(config: config);

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
            '${config.pathConfig.clientsOutputDirectory}/${NamingUtils.instance.renameFile(tag)}_client.dart';
        await fileHandler.writeFile(filepath, result.content);
      }

      // Generate base client
      final baseClientContent = SwaggerToDartCodeBuilder.instance.class_(
        config: config,
        openApi: openApi,
        clients: pathsByTags.keys.toList(),
      );

      await fileHandler.writeLibrary(baseClientContent);
    }
  }

  /// Generates convertors for handling special data types like MultipartFile
  Future<void> _generateConvertors() async {
    final isFlutterProject =
        config.importConfig.baseConfig.pubspec.isFlutterProject;

    final content = '''
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
${config.importConfig.importModelsDirective}
${isFlutterProject ? "import 'package:flutter/material.dart';" : ''}

const convertors = <JsonConverter>[
  MultipartFileJsonConverter(),
  ${isFlutterProject ? 'TimeOfDayStringJsonConverter(),\n ColorHexStringJsonConverter(),\n' : ''}
  ${globalUnionClasses.map((className) => '${className}JsonConvertor()').join(',\n')}
];
class MultipartFileJsonConverter
    implements JsonConverter<MultipartFile, MultipartFile> {
  const MultipartFileJsonConverter();

  @override
  MultipartFile fromJson(MultipartFile json) => json;

  @override
  MultipartFile toJson(MultipartFile object) => object;
}


${isFlutterProject ? '''
class ColorHexStringJsonConverter implements JsonConverter<Color, String> {
  const ColorHexStringJsonConverter();

  @override
  Color fromJson(String json) {
    return Color(int.parse(json.substring(1), radix: 16));
  }

  @override
  String toJson(Color? object) {
    // ignore: deprecated_member_use
    return '#\${object?.value.toRadixString(16)}';
  }
}


/// [TimeOfDay] json converter
/// example: PT8H30M
class TimeOfDayStringJsonConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayStringJsonConverter();

  @override
  TimeOfDay fromJson(String json) {
    if (json.contains(':')) {
      final time = json.split(':');
      return TimeOfDay(hour: int.parse(time[0]), minute: int.parse(time[1]));
    } else {
      final regex = RegExp(r'PT(?:(\d+)H)?(?:(\d+)M)?');
      final match = regex.firstMatch(json);

      int hours = match?.group(1) != null ? int.parse(match!.group(1)!) : 0;
      int minutes = match?.group(2) != null ? int.parse(match!.group(2)!) : 0;

      return TimeOfDay(hour: hours, minute: minutes);
    }
  }

  @override
  String toJson(TimeOfDay object) {
    return '\${object.hour.toString().padLeft(2, '0')}:\${object.minute.toString().padLeft(2, '0')}:00';
  }
}
''' : ''}

${globalUnionClasses.map((className) => '''
class ${className}JsonConvertor implements JsonConverter<${className}, Map<String, dynamic>> {
  const ${className}JsonConvertor();

  static const String unionKey = 'value';
   @override
  $className fromJson(Map<String, dynamic> json) {
    try {
      return $className.fromJson({
        unionKey: json,
        ...json,
      });
    } catch (e) {
      return $className.fallback();
    }
  }

  @override
  Map<String, dynamic> toJson($className object) {
    return {...object.toJson()[unionKey]};
  }
}
''').join('\n')}

''';

    final convertorsDir = config.pathConfig.convertorOutputDirectory;
    await fileHandler.createDirectory(convertorsDir);

    final filePath = '$convertorsDir/convertors.dart';
    await fileHandler.writeFile(filePath, content);

    // Make sure the convertors are included in the exports
    // They'll be picked up by _generateExports() since they're in the models directory
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
