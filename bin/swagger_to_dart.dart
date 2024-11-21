import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:logger/logger.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:yaml/yaml.dart';
import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/src/generator/openapi/open_api_generator.dart';

final logger = Logger();

Future<void> main(List<String> args) async {
  final String dir = Directory.current.path;

  final pubspecYamlFile = File(path.join(dir, 'pubspec.yaml'));

  if (!pubspecYamlFile.existsSync()) {
    logger.e('pubspec.yaml not found in the current directory');
    exit(1);
  }

  final pubspecYaml = loadYaml(pubspecYamlFile.readAsStringSync());

  final packageName = pubspecYaml['name'];

  final config = OpenApiGeneratorConfig(
    packageName: packageName,
    input: path.join(dir, 'schema/swagger.json'),
    output: path.join(dir, 'lib/src/gen'),
    isFlutter: false,
  );

  print(JsonFactory.instance.encode(config.toJson()));

  print('Generating code...');

  final generator = OpenApiDartGenerator(config: config);

  await generator.run();

  print('Code generation completed');
}
