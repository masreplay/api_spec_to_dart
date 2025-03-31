import 'dart:convert';
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

    final swaggerToDartYaml = SwaggerToDartYaml.fromYamlMap(
      await readYamlFile(path.join(rootDir, SwaggerToDartYaml.filename)),
    );
    final swaggerToDart = swaggerToDartYaml.swaggerToDart;

    final genDir = Directory(swaggerToDart.outputDirectory);
    if (genDir.existsSync()) genDir.deleteSync(recursive: true);
    genDir.createSync(recursive: true);

    print('Generating code...');

    final file = File(swaggerToDart.inputDirectory);
    final json = file.readAsStringSync();
    final map = jsonDecode(json);
    final openApi = OpenApi.fromJson(map);

    final config = SwaggerToDartConfig(
      pubspec: pubspec,
      swaggerToDart: swaggerToDart,
    );
    final generator = OpenApiDartGenerator(config: config, openApi: openApi);

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

  final map = convertYamlMapToMap(yaml);
  return map;
}

Map<String, dynamic> convertYamlMapToMap(YamlMap yamlMap) {
  final map = <String, dynamic>{};

  for (final entry in yamlMap.entries) {
    if (entry.value is YamlMap || entry.value is Map) {
      map[entry.key.toString()] = convertYamlMapToMap(entry.value);
    } else if (entry.value is YamlList) {
      map[entry.key.toString()] =
          (entry.value as YamlList)
              .map((e) => e is YamlMap ? convertYamlMapToMap(e) : e)
              .toList();
    } else if (entry.value is List) {
      map[entry.key.toString()] =
          (entry.value as List)
              .map((e) => e is YamlMap ? convertYamlMapToMap(e) : e)
              .toList();
    } else {
      map[entry.key.toString()] = entry.value.toString();
    }
  }
  return map;
}
