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

    final swaggerToDartYamlFile = File(SwaggerToDartYaml.filename);
    if (!swaggerToDartYamlFile.existsSync()) {
      exit(1);
    }
    final swaggerToDartYamlFileContent =
        await swaggerToDartYamlFile.readAsString();
    final swaggerToDartYamlMap = loadYaml(swaggerToDartYamlFileContent);

    final swaggerToDartYaml = SwaggerToDartYaml.fromYamlMap(
      swaggerToDartYamlMap,
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
