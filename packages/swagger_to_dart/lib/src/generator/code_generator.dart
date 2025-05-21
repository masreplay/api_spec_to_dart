import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/generation_context.dart';

class CodeGenerator {
  const CodeGenerator(this.context);

  final GenerationContext context;

  Future<void> generate() async {
    context.generate();

    final dir = Directory(context.swaggerToDart.outputDirectory);
    print('Output directory: ${dir.path}');

    if (dir.existsSync()) {
      await dir.delete(recursive: true);
    }
    await dir.create(recursive: true);

    await generateModels(dir);
    await generateApiClients(dir);

    print('Code generation completed successfully');
  }

  Future<void> generateModels(Directory dir) async {
    print('Generating ${context.models.length} models...');

    final modelsDir = Directory(path.join(dir.path, 'models/'));

    for (final model in context.models) {
      final filename = model.name;
      if (filename == null) throw Exception('Model has no name');

      try {
        await writeDartFile(
          path.join(modelsDir.path, '${filename}.dart'),
          model,
        );
      } catch (e, stackTrace) {
        print('Error generating model $filename: $e');
        print('Stack trace: $stackTrace');
      }
    }

    final mainLibrary = Library(
      (b) => b
        ..directives.addAll([
          for (final model in context.models)
            if (model.name != null) Directive.export('${model.name}.dart'),
        ]),
    );

    await writeDartFile(
      path.join(modelsDir.path, 'models.dart'),
      mainLibrary,
    );

    final jsonConverterLibrary = Library(
      (b) => b
        ..name = 'json_converter'
        ..directives.addAll([
          Directive.import('package:dio/dio.dart'),
          Directive.import('models.dart'),
          Directive.import('package:json_annotation/json_annotation.dart'),
        ])
        ..body.addAll([
          ...context.jsonConvertor,
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
          Code('''
const jsonSerializable = JsonSerializable(
  converters: [
    MultipartFileJsonConverter(),
    ${context.jsonConvertor.map((e) => '${e.name}()').join(',\n')}
  ],
);
''')
        ]),
    );

    await writeDartFile(
      path.join(modelsDir.path, '${jsonConverterLibrary.name!}.dart'),
      jsonConverterLibrary,
    );

    final exportLibrary = Library(
      (b) => b
        ..directives.addAll([
          Directive.export('models.dart'),
          Directive.import('package:dio/dio.dart'),
          Directive.import(
              'package:freezed_annotation/freezed_annotation.dart'),
          Directive.export('package:dio/dio.dart'),
          Directive.export('json_converter.dart'),
          Directive.export(
              'package:freezed_annotation/freezed_annotation.dart'),
        ]),
    );
    await writeDartFile(
      path.join(modelsDir.path, 'exports.dart'),
      exportLibrary,
    );
  }

  Future<void> generateApiClients(Directory dir) async {
    print('Generating ${context.apiClients.length} api clients...');
    final apiClientsDir = Directory(path.join(dir.path, 'api_client/'));
    for (final apiClient in context.apiClients) {
      final filename = apiClient.name;
      if (filename == null) throw Exception('Api client has no name');

      try {
        await writeDartFile(
          path.join(apiClientsDir.path, '${filename}.dart'),
          apiClient,
        );
      } catch (e, stackTrace) {
        print('Error generating api client $filename: $e');
        print('Stack trace: $stackTrace');
      }
    }
  }
}

Future<void> writeDartFile(String filePath, Library library) async {
  final emitter = DartEmitter.scoped();
  final formatter = DartFormatter(
    languageVersion: DartFormatter.latestLanguageVersion,
  );

  // if dir not found created it
  final dir = Directory(path.dirname(filePath));
  if (!dir.existsSync()) {
    await dir.create(recursive: true);
  }

  final file = File(filePath);
  await file.writeAsString(
    formatter.format('${library.accept(emitter)}'),
    flush: true,
  );
}
