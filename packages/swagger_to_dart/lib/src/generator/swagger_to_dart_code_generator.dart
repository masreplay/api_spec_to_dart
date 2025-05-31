import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/src/generator/base_api_client_generator.dart';

class SwaggerToDartCodeGenerator {
  const SwaggerToDartCodeGenerator(this.context);

  final GenerationContext context;

  Future<void> generate() async {
    context.generate();

    final dir = Directory(context.config.outputDirectory);
    print('Output directory: ${dir.path}');

    if (dir.existsSync()) {
      await dir.delete(recursive: true);
    }
    await dir.create(recursive: true);

    final genExportLibrary = Library((b) => b
      ..name = 'gen'
      ..directives.addAll([
        Directive.export('api_client/base_api_client.dart'),
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

    final jsonConverterLibrary = Library(
      (b) => b
        ..name = 'json_converter'
        ..directives.addAll([
          Directive.import('package:dio/dio.dart'),
          // TODO: check if isFlutter project
          Directive.import('package:flutter/material.dart'),
          Directive.import('models.dart'),
          Directive.import('package:json_annotation/json_annotation.dart'),
        ])
        ..body.addAll([
          ...context.jsonConvertor,
          // TODO(masreplay): use builder
          CodeExpression(
            Code(
              r'''
class MultipartFileJsonConverter implements JsonConverter<MultipartFile, MultipartFile> {
  const MultipartFileJsonConverter();

  @override
  MultipartFile fromJson(MultipartFile json) => json;

  @override
  MultipartFile toJson(MultipartFile object) => object;
}
// TODO: check if isFlutter project
class TimeOfDayStringJsonConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayStringJsonConverter();

  @override
  TimeOfDay fromJson(String json) {
    if (json.contains(':')) {
      final time = json.split(':');
      return TimeOfDay(hour: int.parse(time[0]), minute: int.parse(time[1]));
    } else {
      final regex = RegExp(r'PT(?:(\d+)H)?(?:(\d+)M)?');
      final match = regex.firstMatch(json);

      int hours = match?.group(1) != null ? int.parse(match!.group(1)!) : 0;
      int minutes = match?.group(2) != null ? int.parse(match!.group(2)!) : 0;

      return TimeOfDay(hour: hours, minute: minutes);
    }
  }

  @override
  String toJson(TimeOfDay object) {
    return '${object.hour.toString().padLeft(2, '0')}:${object.minute.toString().padLeft(2, '0')}:00';
  }
}
''',
            ),
          ),
          Code('''
const jsonSerializableConverters = <JsonConverter>[
  MultipartFileJsonConverter(),
  // TODO: check if isFlutter project
  TimeOfDayStringJsonConverter(),
  ${context.jsonConvertor.map((e) => '${e.name}()').join(',\n')}
];

const jsonSerializable = JsonSerializable(
  converters: jsonSerializableConverters,
);
''')
        ]),
    );

    await writeDartLibraryFile(
      path.join(modelsDir.path, '${jsonConverterLibrary.name!}.dart'),
      jsonConverterLibrary,
    );

    final exportLibrary = Library(
      (b) => b
        ..name = 'exports'
        ..directives.addAll([
          Directive.export('models.dart'),
          Directive.import('package:dio/dio.dart'),
          Directive.import(
              'package:freezed_annotation/freezed_annotation.dart'),
          Directive.export('package:dio/dio.dart'),
          // TODO: check if isFlutter project
          Directive.export('package:flutter/material.dart'),
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
          path.join(apiClientsDir.path, '${filename}.dart'),
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
          for (final apiClient in context.apiClients)
            Directive.export('${apiClient.name}.dart'),
        ]),
    );

    await writeDartLibraryFile(
      path.join(apiClientsDir.path, exportsLibrary.name),
      exportsLibrary,
    );

    final baseApiCLientLibrary = BaseApiClientGenerator(context).build();

    await writeDartLibraryFile(
      path.join(apiClientsDir.path, '${baseApiCLientLibrary.name}.dart'),
      baseApiCLientLibrary,
    );

    final baseLibrary = Library(
      (b) => b
        ..name = 'api_client.dart'
        ..directives.addAll([
          Directive.import('exports.dart'),
          Directive.export('base_api_client.dart'),
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
