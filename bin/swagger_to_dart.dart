import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:yaml/yaml.dart';

Future<void> main(List<String> args) async {
  try {
    final String rootDir = Directory.current.path;

    final pubspecPath = path.join(rootDir, 'pubspec.yaml');
    final pubspec = Pubspec.parse(
      await File(pubspecPath).readAsString(),
      sourceUrl: Uri.parse(pubspecPath),
    );

    final swaggerToDart = SwaggerToDartYaml.fromYaml(
      await readYamlFile(path.join(rootDir, SwaggerToDartYaml.filename)),
    );

    final genDir = Directory(swaggerToDart.outputDirectory);
    if (genDir.existsSync()) genDir.deleteSync(recursive: true);
    genDir.createSync(recursive: true);

    final config = SwaggerToDartConfig(
      pubspec: pubspec,
      swaggerToDart: swaggerToDart,
    );

    print('Generating code...');

    final generator = OpenApiDartGenerator(config: config);

    await generator.run();

    print('Code generation completed');
  } catch (e, s) {
    print('Error: $e');
    print('Stack trace: $s');
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

  final YamlMap yaml = loadYaml(await file.readAsString());

  return yaml.toMap();
}

extension on YamlMap {
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};

    for (final entry in entries) {
      if (entry.value case final YamlMap map) {
        map[entry.key.toString()] = map.toMap();
      } else if (entry.value is YamlList) {
        map[entry.key.toString()] =
            (entry.value as YamlList)
                .map((e) => e is YamlMap ? e.toMap() : e)
                .toList();
      } else if (entry.value is YamlScalar) {
        map[entry.key.toString()] = entry.value.toString();
      } else {
        map[entry.key.toString()] = entry.value.toString();
      }
    }
    return map;
  }
}
