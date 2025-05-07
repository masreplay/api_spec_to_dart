import 'dart:io';

import 'package:swagger_to_dart/swagger_to_dart.dart';

Future<void> main(List<String> args) async {
  try {
    // Parse command-line arguments
    String? configPath;
    for (int i = 0; i < args.length; i++) {
      if (args[i] == '--config' && i + 1 < args.length) {
        configPath = args[i + 1];
        break;
      }
    }

    final setupHandler = SetupHandler(configPath: configPath);
    final context = await setupHandler.setup();

    final generator = SwaggerToDartCodeGenerator(context);
    await generator.write();
  } catch (e) {
    exit(1);
  }
}
