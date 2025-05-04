import 'dart:io';

import 'package:swagger_to_dart/swagger_to_dart.dart';

Future<void> main(List<String> args) async {
  try {
    print('Starting code generation...');

    // Parse command-line arguments
    String? configPath;
    for (int i = 0; i < args.length; i++) {
      if (args[i] == '--config' && i + 1 < args.length) {
        configPath = args[i + 1];
        break;
      }
    }

    final fileHandler = FileHandler();
    final setupHandler = SetupHandler(
      configPath: configPath,
    );
    final config = await setupHandler.setup();

    print('Generating code...');
    final generator = SwaggerToDartDartCodeGenerator(
      context: config,
      fileHandler: fileHandler,
    );

    await generator.run();
    print('Code generation completed successfully');
  } catch (e, s) {
    print('Error during code generation:');
    print('$e');
    print('\nStack trace:');
    print('$s');
    exit(1);
  }
}
