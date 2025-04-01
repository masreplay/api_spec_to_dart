import 'dart:io';

import 'package:swagger_to_dart/swagger_to_dart.dart';

import '../lib/src/generator/v310/open_api_generator.dart';
import '../lib/src/utils/file_handler.dart';
import '../lib/src/utils/setup_handler.dart';

Future<void> main(List<String> args) async {
  try {
    print('Starting code generation...');

    final fileHandler = FileHandler();
    final setupHandler = SetupHandler(fileHandler: fileHandler);
    final (config: config, openApi: openApi) = await setupHandler.setup();

    print('Generating code...');
    final generator = OpenApiDartGenerator(
      config: config,
      openApi: openApi,
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
