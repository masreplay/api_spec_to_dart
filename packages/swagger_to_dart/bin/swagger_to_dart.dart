import 'dart:io';

import 'package:swagger_to_dart/src/config/config.dart';
import 'package:swagger_to_dart/src/generator/generator.dart';

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
