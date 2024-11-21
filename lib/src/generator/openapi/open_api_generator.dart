import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/src/generator/openapi/open_api_client_generator.dart';
import 'package:swagger_to_dart/src/generator/openapi/open_api_model_generator.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:collection/collection.dart';

class OpenApiDartGenerator {
  OpenApiDartGenerator({
    required this.config,
  }) {
    final file = File(config.input);
    final json = file.readAsStringSync();
    final map = jsonDecode(json);

    _openApi = OpenApi.fromJson(map);
  }

  final OpenApiGeneratorConfig config;

  late final OpenApi _openApi;

  Future<void> run() async {
    final modelGenerator = OpenApiDartModelGenerator(config: config);

    if (!Directory(config.modelsOutputDirectory).existsSync()) {
      Directory(config.modelsOutputDirectory).createSync(recursive: true);
    }

    for (final entry in _openApi.components.schemas.entries) {
      final result = modelGenerator.run(entry);

      final filepath = path.join(
        config.modelsOutputDirectory,
        '${config.renameFile(entry.key)}.dart',
      );

      final file = File(filepath);

      await file.writeAsString(result.content);

      print('Generated: $filepath');
    }

    //Client generator
    final clientGenerator = OpenApiDartClientGenerator(config: config);

    final List<({String tag, String path})> tagsPaths = [];

    for (final entry in _openApi.paths.entries) {
      final tag = [
        entry.value.post,
        entry.value.get,
        entry.value.put,
        entry.value.delete,
        entry.value.patch,
      ].where((element) => element != null).first;

      final path = entry.key;

      tagsPaths.add((tag: tag!.tags.first, path: path));
    }

    final clients = groupBy(tagsPaths, (element) => element.tag);

    for (final entry in clients.entries) {
      final tag = entry.key;
      final paths = entry.value;

      print('Generating client for tag: $tag');

      clientGenerator.generator(
        _openApi.paths,
        paths.map((e) => e.path).toList(),
      );
    }
  }
}
