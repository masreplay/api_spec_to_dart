import 'dart:io';
import 'package:args/args.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

Future<void> main(List<String> arguments) async {
  try {
    final parser = ArgParser()
      ..addOption('config', abbr: 'c', help: 'Path to config file');
    final argResults = parser.parse(arguments);
    final configPath = argResults['config'] as String?;

    final builder = GenerationContextBuilder(configPath: configPath);
    final GenerationContext context = await builder.build();

    final generator = SwaggerToDartCodeGenerator(context);
    await generator.generate();
  } catch (e, stackTrace) {
    print(e);
    print(stackTrace);

    exit(1);
  }
}
