import 'dart:io';

import 'package:swagger_to_dart/swagger_to_dart.dart';

Future<void> main() async {
  try {
    final builder = GenerationContextBuilder();
    final GenerationContext context = await builder.build();

    final generator = SwaggerToDartCodeGenerator(context);
    await generator.generate();
  } catch (e, stackTrace) {
    print(e);
    print(stackTrace);

    exit(1);
  }
}
