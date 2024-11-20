import 'package:logger/logger.dart';
import 'package:swagger_to_dart/src/config/open_api_generator_config.dart';
import 'package:swagger_to_dart/src/generator/openapi/open_api_generator.dart';

final logger = Logger();

Future<void> main(List<String> args) async {
  final config = OpenApiGeneratorConfig(
    packageName: 'example',
    input: 'example/input/swagger.json',
    output: 'example/src/client',
  );

  final generator = OpenApiDartGenerator(config: config);

  generator.generate();
}
