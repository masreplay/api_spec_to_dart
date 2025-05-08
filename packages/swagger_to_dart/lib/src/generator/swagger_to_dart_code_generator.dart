import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:swagger_to_dart/src/config/code_generation_context.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

class SwaggerToDartCodeGenerator {
  SwaggerToDartCodeGenerator(this.context);

  final CodeGenerationContext context;
  final FileHandler _fileHandler = const FileHandler();

  Future<void> write() async {
    final emitter = DartEmitter.scoped();
    final formatter = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    );

    OpenApiModelGenerator(context).generate();

    final dir = Directory(context.swaggerToDart.outputDirectory);
    _fileHandler.createDirectory(dir);

    for (final model in context.models) {
      final file = File(path.join(dir.path, model.name!));

      await _fileHandler.writeFile(
        file.path,
        formatter.format('${model.accept(emitter)}'),
      );
    }
  }
}
