import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/generation_context.dart';

class CodeGenerator {
  const CodeGenerator(this.context);

  final GenerationContext context;

  Future<void> write() async {
    context.generate();

    final dir = Directory(context.swaggerToDart.outputDirectory);
    print('Output directory: ${dir.path}');

    if (dir.existsSync()) {
      await dir.delete(recursive: true);
    }
    await dir.create(recursive: true);

    print('Generating ${context.models.length} models...');

    for (final model in context.models) {
      final name = model.name;
      if (name == null) throw Exception('Model has no name');

      try {
        await writeDartFile(path.join(dir.path, '${name}.dart'), model);
      } catch (e, stackTrace) {
        print('Error generating model $name: $e');
        print('Stack trace: $stackTrace');
      }
    }

    for (final apiClient in context.apiClients) {
      final name = apiClient.name;
      if (name == null) {
        print('Warning: Skipping api client with null name');
        continue;
      }

      try {
        await writeDartFile(path.join(dir.path, '${name}.dart'), apiClient);
      } catch (e, stackTrace) {
        print('Error generating api client $name: $e');
        print('Stack trace: $stackTrace');
      }
    }

    final library = Library(
      (b) => b
        ..directives.addAll([
          for (final model in context.models)
            if (model.name != null) Directive.export('${model.name}.dart'),
        ]),
    );

    await writeDartFile(path.join(dir.path, 'models.dart'), library);

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
          CodeExpression(
            Code(
              '''
class MultipartFileJsonConverter implements JsonConverter<MultipartFile, MultipartFile> {
  const MultipartFileJsonConverter();

  @override
  MultipartFile fromJson(MultipartFile json) => json;

  @override
  MultipartFile toJson(MultipartFile object) => object;
}
''',
            ),
          ),
          CodeExpression(Code('''
const jsonSerializable = JsonSerializable(
  converters: [
  MultipartFileJsonConverter(),
  ],
);
''')),
        ]),
    );

    await writeDartFile(path.join(dir.path, 'exports.dart'), exportLibrary);

    print('Code generation completed successfully');
  }
}

Future<void> writeDartFile(String path, Library library) async {
  final emitter = DartEmitter.scoped();
  final formatter = DartFormatter(
    languageVersion: DartFormatter.latestLanguageVersion,
  );

  final file = File(path);
  await file.writeAsString(
    formatter.format('${library.accept(emitter)}'),
    flush: true,
  );
}
