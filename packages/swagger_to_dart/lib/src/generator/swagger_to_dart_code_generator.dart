import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/generation_context.dart';
import 'package:swagger_to_dart/src/generator/base_api_client_generator.dart';
import 'package:swagger_to_dart/src/generator/model/json_serialization_convertor_generator.dart';

/// Every generated file keyed by its path relative to the output directory,
/// plus the files whose source could not be formatted (kept unformatted in
/// [files] so they can be inspected).
typedef RenderResult = ({
  Map<String, String> files,
  Map<String, String> errors,
});

class SwaggerToDartCodeGenerator {
  const SwaggerToDartCodeGenerator(this.context);

  final GenerationContext context;

  /// Builds every library in memory. Pure: no file system access.
  RenderResult render() {
    context.generate();

    final files = <String, String>{};
    final errors = <String, String>{};
    final formatter = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    );

    for (final MapEntry(key: filePath, value: library)
        in _libraries().entries) {
      final source = '${library.accept(DartEmitter.scoped())}';
      try {
        files[filePath] = formatter.format(source);
      } on FormatterException catch (e) {
        files[filePath] = source;
        errors[filePath] = e.message();
      }
    }

    return (files: files, errors: errors);
  }

  /// Writes [render] into [outputDirectory] (default: the configured output
  /// directory), replacing its previous content. Throws after writing when
  /// some files could not be formatted.
  Future<void> write([String? outputDirectory]) async {
    final result = render();
    final dir = Directory(
      outputDirectory ??
          path.join(context.rootDirectory, context.config.outputDirectory),
    );

    if (dir.existsSync()) await dir.delete(recursive: true);

    for (final MapEntry(key: filePath, value: source) in result.files.entries) {
      final file = File(path.join(dir.path, filePath));
      await file.parent.create(recursive: true);
      await file.writeAsString(source, flush: true);
    }

    print(
      'Generated ${context.models.length} models and '
      '${context.apiClients.length} api clients in ${dir.path}',
    );

    if (result.errors.isNotEmpty) {
      throw StateError(
        'Generated code could not be formatted (written unformatted for '
        'inspection):\n${result.errors.entries.map((e) => '  ${e.key}: ${e.value}').join('\n')}',
      );
    }
  }

  Future<void> generate() => write();

  Map<String, Library> _libraries() {
    final globalImports = [
      for (final import in context.config.imports?.globalImports ?? [])
        Directive.import(import),
    ];

    final libraries = <String, Library>{
      'gen.dart': Library(
        (b) => b
          ..name = 'gen'
          ..directives.addAll([
            ...globalImports,
            Directive.export('api_client/api_client.dart'),
            Directive.export('models/models.dart'),
          ]),
      ),
    };

    for (final model in context.models) {
      final filename = model.name;
      if (filename == null) throw StateError('Model has no name');
      libraries['models/$filename.dart'] = model;
    }

    libraries['models/models.dart'] = Library(
      (b) => b
        ..name = 'models'
        ..directives.addAll([
          ...globalImports,
          for (final model in context.models)
            Directive.export('${model.name}.dart'),
        ]),
    );

    final (library: jsonConverterLibrary, directives: jsonConverterDirectives) =
        JsonConvertorGenerator(context).build();
    libraries['models/${jsonConverterLibrary.name!}.dart'] =
        jsonConverterLibrary;

    libraries['models/exports.dart'] = Library(
      (b) => b
        ..name = 'exports'
        ..directives.addAll([
          ...globalImports,
          ...jsonConverterDirectives,
          Directive.export('dart:typed_data'),
          Directive.export('models.dart'),
          Directive.export('package:dio/dio.dart'),
          Directive.export(
            'package:freezed_annotation/freezed_annotation.dart',
          ),
          Directive.export('json_converter.dart'),
          Directive.export(
            'package:freezed_annotation/freezed_annotation.dart',
          ),
        ]),
    );

    for (final apiClient in context.apiClients) {
      final filename = apiClient.name;
      if (filename == null) throw StateError('Api client has no name');
      libraries['api_client/$filename.dart'] = apiClient;
    }

    libraries['api_client/exports.dart'] = Library(
      (b) => b
        ..name = 'exports.dart'
        ..directives.addAll([
          ...globalImports,
          Directive.export('dart:typed_data'),
          for (final apiClient in context.apiClients)
            Directive.export('${apiClient.name}.dart'),
        ]),
    );

    final baseApiClientLibrary = BaseApiClientGenerator(context).build();
    final baseApiClientFileName = '${baseApiClientLibrary.name}.dart';
    libraries['api_client/$baseApiClientFileName'] = baseApiClientLibrary;

    libraries['api_client/api_client.dart'] = Library(
      (b) => b
        ..name = 'api_client.dart'
        ..directives.addAll([
          ...globalImports,
          Directive.export('exports.dart'),
          Directive.export(baseApiClientFileName),
        ]),
    );

    return libraries;
  }
}
