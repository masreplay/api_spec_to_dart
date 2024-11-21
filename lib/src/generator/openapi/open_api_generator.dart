import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/generator/openapi/open_api_base_client_generator.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

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
    final modelGenerator = OpenApiModelGenerator(config: config);

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
    final clientGenerator = OpenApiClientGenerator(config: config);
    if (!Directory(config.clientsOutputDirectory).existsSync()) {
      Directory(config.clientsOutputDirectory).createSync(recursive: true);
    }

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

      final result = clientGenerator.generator(
        path: _openApi.paths,
        clientName: tag,
        tagPaths: paths.map((e) => e.path).toList(),
      );

      final filepath = path.join(
        config.clientsOutputDirectory,
        '${config.renameFile(entry.key)}_client.dart',
      );

      final file = File(filepath);

      await file.writeAsString(result.content);
    }

    final clientsGenerator = OpenApiBaseClientGenerator(config: config);

    final clientsClassContent =
        clientsGenerator.generator(clients: clients.keys.toList());

    final clientsFilepath = path.join(
      config.clientsOutputDirectory,
      '${config.renameFile(config.clientsClassName)}.dart',
    );

    final clientsFile = File(clientsFilepath);

    await clientsFile.writeAsString(clientsClassContent);
  }
}
