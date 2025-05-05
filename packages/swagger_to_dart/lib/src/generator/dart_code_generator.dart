import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/code_generation_context.dart';
import 'package:swagger_to_dart/src/utils/renaming.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

//TODO(shahadKadhim): refactor this
final globalUnionClasses = <String>[];

class SwaggerToDartDartCodeGenerator {
  SwaggerToDartDartCodeGenerator({
    required this.context,
    required this.fileHandler,
  });

  final CodeGenerationContext context;
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
    final modelGenerator = OpenApiModelGenerator(context);

    final dir = Directory(
      path.join(context.swaggerToDart.outputDirectory, 'models'),
    );
    await fileHandler.createDirectory(dir);

    if (context.openApi.components case final openApiComponents?)
      for (final entry in openApiComponents.schemas.entries) {
        final result = modelGenerator.run(entry);
        // final filename = '${NamingUtils.instance.renameFile(entry.key)}.dart';
        // final filepath = '$dir/$filename';

        await fileHandler.writeLibrary(result);
      }
  }

  /// Generates all clients from the OpenAPI paths
  Future<void> _generateClients() async {
    final clientGenerator = OpenApiClientGenerator(context);

    final dir = Directory(
      path.join(context.swaggerToDart.outputDirectory, 'clients'),
    );
    await fileHandler.createDirectory(dir);

    if (context.openApi.paths case final openApiPaths?) {
      // Generate individual clients
      final pathsByTags = OpenApiParser().groupPathsByTag(openApiPaths);

      for (final entry in pathsByTags.entries) {
        final tag = entry.key;
        final paths = entry.value;

        final result = clientGenerator.generate(
          path: openApiPaths,
          clientName: tag,
          tagPaths: paths,
        );
      }

      // Generate base client
      final baseClientContent = SwaggerToDartCodeBuilder.instance.class_(
        context: context,
        clients: pathsByTags.keys.toList(),
      );

      await fileHandler.writeLibrary(baseClientContent);
    }
  }

  /// Generates convertors for handling special data types like MultipartFile
  Future<void> _generateConvertors() async {
    final isFlutterProject = context.isFlutterProject;

    final content = '''
import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
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

    final convertorsDir = context.pathConfig.convertorOutputDirectory;
    await fileHandler.createDirectory(convertorsDir);

    final filePath = '$convertorsDir/convertors.dart';
    await fileHandler.writeFile(filePath, content);

    // Make sure the convertors are included in the exports
    // They'll be picked up by _generateExports() since they're in the models directory
  }

  /// Generates export files for models and clients
  Future<void> _generateExports() async {
    final exportsGenerator = DartCodeExportsGenerator(
      context: context,
      fileHandler: fileHandler,
    );

    await exportsGenerator.generateModelsExports();
    await exportsGenerator.generateClientsExports();
  }
}
