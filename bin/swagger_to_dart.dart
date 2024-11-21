import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:logger/logger.dart';
import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/src/generator/openapi/open_api_generator.dart';

final logger = Logger();

Future<void> main(List<String> args) async {
  final String dir = Directory.current.path;

  final config = OpenApiGeneratorConfig(
    packageName: 'example',
    input: path.join(dir, 'schema/swagger.json'),
    output: path.join(dir, 'lib/src/gen'),
    isFlutter: false,
  );

  final generator = OpenApiDartGenerator(config: config);

  generator.run();
}
