import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/code_generation_context.dart';

class SwaggerToDartCodeGenerator {
  SwaggerToDartCodeGenerator(this.context);

  final CodeGenerationContext context;

  Future<void> write() async {
    final emitter = DartEmitter.scoped();
    final formatter = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    );

    context.modelGenerator.generate();

    final dir = Directory(context.swaggerToDart.outputDirectory);
    if (!dir.existsSync()) {
      await dir.create(recursive: true);
    }

    for (final model in context.models) {
      final file = File(path.join(dir.path, model.name!));

      await file.writeAsString(
        formatter.format('${model.accept(emitter)}'),
      );
    }
  }
}
