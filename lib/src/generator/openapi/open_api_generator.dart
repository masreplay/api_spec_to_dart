import 'dart:convert';
import 'package:path/path.dart';
import 'dart:io';

import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/src/generator/openapi/open_api_model_generator.dart';
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

  Future<void> generate() async {
    final modelGenerator = OpenApiDartModelGenerator(config: config);

    for (final entry in _openApi.components.schemas.entries) {
      final result = modelGenerator.generator(entry);

      final filepath = join(
        config.output,
        '${modelGenerator.filename(entry)}.dart',
      );

      final file = File(filepath);

      await file.writeAsString(result.content);

      print('Generated: $filepath');
    }
  }
}
