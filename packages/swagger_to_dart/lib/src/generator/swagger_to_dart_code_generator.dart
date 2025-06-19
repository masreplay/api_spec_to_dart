import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/src/generator/base_api_client_generator.dart';
import 'package:swagger_to_dart/src/generator/model/json_serialization_convertor_generator.dart';

class SwaggerToDartCodeGenerator {
  const SwaggerToDartCodeGenerator(this.context);

  final GenerationContext context;

  Future<void> generate() async {
    context.generate();

    print(JsonEncoder.withIndent('  ').convert(context.config.toJson()));

    final dir = Directory(context.config.outputDirectory);
    print('Output directory: ${dir.path}');

    if (dir.existsSync()) {
      await dir.delete(recursive: true);
    }
    await dir.create(recursive: true);

    final genExportLibrary = Library((b) => b
      ..name = 'gen'
      ..directives.addAll([
        Directive.export('api_client/api_client.dart'),
        Directive.export('models/models.dart'),
      ]));

    await writeDartLibraryFile(
      path.join(dir.path, '${genExportLibrary.name!}.dart'),
      genExportLibrary,
    );

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
        await writeDartLibraryFile(
          path.join(modelsDir.path, '$filename.dart'),
          model,
        );
      } catch (e, stackTrace) {
        print('Error generating model $filename: $e');
        print('Stack trace: $stackTrace');
      }
    }

    final mainLibrary = Library(
      (b) => b
        ..name = 'models'
        ..directives.addAll([
          for (final model in context.models)
            if (model.name != null) Directive.export('${model.name}.dart'),
        ]),
    );

    await writeDartLibraryFile(
      path.join(modelsDir.path, '${mainLibrary.name}.dart'),
      mainLibrary,
    );

    final (library: jsonConverterLibrary, directives: jsonConverterDirectives) =
        JsonConvertorGenerator(context).build();

    await writeDartLibraryFile(
      path.join(modelsDir.path, '${jsonConverterLibrary.name!}.dart'),
      jsonConverterLibrary,
    );

    final exportLibrary = Library(
      (b) => b
        ..name = 'exports'
        ..directives.addAll([
          ...jsonConverterDirectives,
          Directive.export('dart:typed_data'),
          Directive.export('models.dart'),
          Directive.export('package:dio/dio.dart'),
          Directive.export(
              'package:freezed_annotation/freezed_annotation.dart'),
          Directive.export('json_converter.dart'),
          Directive.export(
              'package:freezed_annotation/freezed_annotation.dart'),
        ]),
    );
    await writeDartLibraryFile(
      path.join(modelsDir.path, '${exportLibrary.name}.dart'),
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
        await writeDartLibraryFile(
          path.join(apiClientsDir.path, '$filename.dart'),
          apiClient,
        );
      } catch (e, stackTrace) {
        print('Error generating api client $filename: $e');
        print('Stack trace: $stackTrace');
      }
    }

    // exports
    final exportsLibrary = Library(
      (b) => b
        ..name = 'exports.dart'
        ..directives.addAll([
          Directive.export('dart:typed_data'),
          for (final apiClient in context.apiClients)
            Directive.export('${apiClient.name}.dart'),
        ]),
    );

    await writeDartLibraryFile(
      path.join(apiClientsDir.path, exportsLibrary.name),
      exportsLibrary,
    );

    final baseApiCLientLibrary = BaseApiClientGenerator(context).build();
    final baseApiCLientLibraryFileName = '${baseApiCLientLibrary.name}.dart';

    await writeDartLibraryFile(
      path.join(apiClientsDir.path, baseApiCLientLibraryFileName),
      baseApiCLientLibrary,
    );

    final baseLibrary = Library(
      (b) => b
        ..name = 'api_client.dart'
        ..directives.addAll([
          Directive.export('exports.dart'),
          Directive.export(baseApiCLientLibraryFileName),
        ]),
    );

    await writeDartLibraryFile(
      path.join(apiClientsDir.path, baseLibrary.name),
      baseLibrary,
    );
  }
}

Future<void> writeDartLibraryFile(String filePath, Library library) async {
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
