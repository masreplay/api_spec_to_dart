import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/generation_context.dart';

class CodeGenerator {
  const CodeGenerator(this.context);

  final GenerationContext context;

  Future<void> write() async {
    final emitter = DartEmitter.scoped();
    final formatter = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    );

    context.modelGenerator.generateAll();

    final dir = Directory(context.swaggerToDart.outputDirectory);
    print('Output directory: ${dir.path}');

    // Create directory if it doesn't exist, or clean it if it does
    if (dir.existsSync()) {
      await dir.delete(recursive: true);
    }
    await dir.create(recursive: true);

    print('Generating ${context.models.length} models...');

    // Process models in parallel for better performance
    await Future.wait(
      context.models.map((model) async {
        final name = model.name;
        if (name == null) {
          print('Warning: Skipping model with null name');
          return;
        }

        try {
          print('Generating model $name...');
          final file = File(path.join(dir.path, '${name}.dart'));

          await file.writeAsString(
            formatter.format('${model.accept(emitter)}'),
            flush: true,
          );
        } catch (e, stackTrace) {
          print('Error generating model $name: $e');
          print('Stack trace: $stackTrace');
        }
      }),
    );

    final library = Library(
      (b) => b
        ..directives.addAll([
          for (final model in context.models)
            if (model.name != null) Directive.export('${model.name}.dart'),
        ]),
    );

    final file = File(path.join(dir.path, 'models.dart'));
    await file.writeAsString(
      formatter.format('${library.accept(emitter)}'),
      flush: true,
    );

    final exportLibrary = Library(
      (b) => b
        ..directives.addAll([
          Directive.import('package:dio/dio.dart'),
          Directive.import(
              'package:freezed_annotation/freezed_annotation.dart'),
          Directive.export('models.dart'),
          Directive.export('package:dio/dio.dart'),
          Directive.export(
              'package:freezed_annotation/freezed_annotation.dart'),
        ])
        ..body.addAll([
          CodeExpression(Code('''
class MultipartFileJsonConverter implements JsonConverter<MultipartFile, MultipartFile> {
  const MultipartFileJsonConverter();

  @override
  MultipartFile fromJson(MultipartFile json) => json;

  @override
  MultipartFile toJson(MultipartFile object) => object;
}
''')),
          CodeExpression(Code('''
const jsonSerializable = JsonSerializable(
  converters: [MultipartFileJsonConverter()],
);
''')),
        ]),
    );

    // export.dart file
    final exportFile = File(path.join(dir.path, 'exports.dart'));
    await exportFile.writeAsString(
      formatter.format('${exportLibrary.accept(emitter)}'),
      flush: true,
    );

    print('Code generation completed successfully');
  }
}
