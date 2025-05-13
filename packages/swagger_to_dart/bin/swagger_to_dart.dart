import 'dart:io';

import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/src/generator/code_generator.dart';
import 'package:swagger_to_dart/src/generator/generation_context_builder.dart';

Future<void> main() async {
  try {
    final builder = GenerationContextBuilder();
    final GenerationContext context = await builder.build();

    final generator = CodeGenerator(context);
    await generator.write();
  } catch (e) {
    exit(1);
  }
}
