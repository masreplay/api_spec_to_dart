import 'dart:io';

import 'package:swagger_to_dart/swagger_to_dart.dart';

Future<void> main() async {
  try {
    final setupHandler = SetupHandler();
    final context = await setupHandler.setup();

    final generator = SwaggerToDartCodeGenerator(context);
    await generator.write();
  } catch (e) {
    exit(1);
  }
}
