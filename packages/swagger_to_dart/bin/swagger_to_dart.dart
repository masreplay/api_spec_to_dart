import 'dart:io';

import 'package:swagger_to_dart/src/config/code_generation_context.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

Future<void> main() async {
  try {
    final builder = CodeGenerationContextBuilder();
    final CodeGenerationContext context = await builder.build();

    final generator = SwaggerToDartCodeGenerator(context);
    await generator.write();
  } catch (e) {
    exit(1);
  }
}
