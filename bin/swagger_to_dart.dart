import 'dart:io';

import 'package:logger/logger.dart';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/swagger_to_dart_yaml.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:yaml/yaml.dart';

final logger = Logger();

Future<void> main(List<String> args) async {
  final String rootDir = Directory.current.path;

  final pubspec = PubspecYaml.fromYaml(
    await readYamlFile(path.join(rootDir, PubspecYaml.filename)),
  );

  final swaggerToDart = SwaggerToDartYaml.fromYaml(
    await readYamlFile(path.join(rootDir, SwaggerToDartYaml.filename)),
  );

  final config = SwaggerToDartConfig(
    pubspec: pubspec,
    swaggerToDart: swaggerToDart,
  );

  print(JsonFactory.instance.encode(config.toJson()));

  print(JsonFactory.instance.encode(config.toJson()));

  print('Generating code...');

  final generator = OpenApiDartGenerator(config: config);

  await generator.run();

  print('Code generation completed');
}

Future<Map<String, dynamic>> readYamlFile(String path) async {
  final file = File(path);

  final filename = path.split('/').last;

  if (!file.existsSync()) {
    logger.e('${filename} not found in the current directory');
    exit(1);
  }

  print('Reading pubspec.yaml...');

  final yaml = loadYaml(await file.readAsString());

  final map = <String, dynamic>{...yaml};

  return map;
}
