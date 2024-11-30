<<<<<<< HEAD
=======
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:yaml/yaml.dart';

Future<void> main(List<String> args) async {
  try {
    final String rootDir = Directory.current.path;

    final pubspec = PubspecYaml.fromYaml(
      await readYamlFile(path.join(rootDir, PubspecYaml.filename)),
    );

    print(JsonFactory.instance.encode(pubspec.toJson()));

    final swaggerToDart = SwaggerToDartYaml.fromYaml(
      await readYamlFile(path.join(rootDir, SwaggerToDartYaml.filename)),
    );

    print(JsonFactory.instance.encode(swaggerToDart.toJson()));

    final config = SwaggerToDartConfig(
      pubspec: pubspec,
      swaggerToDart: swaggerToDart,
    );

    print('Generating code...');

    final generator = OpenApiDartGenerator(config: config);

    await generator.run();

    print('Code generation completed');
  } catch (e, s) {
    print(s);
    print(e);
  }
}

Future<Map<String, dynamic>> readYamlFile(String path) async {
  final file = File(path);

  final filename = path.split('/').last;

  if (!file.existsSync()) {
    print('${filename} not found in the current directory');
    exit(1);
  }

  print('Reading pubspec.yaml...');

  final yaml = loadYaml(await file.readAsString());

  final map = <String, dynamic>{...yaml};

  return map;
}
>>>>>>> dev
