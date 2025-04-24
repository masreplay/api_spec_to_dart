import 'dart:io';
import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Generates exports.dart files using code_builder
class DartCodeExportsGenerator {
  const DartCodeExportsGenerator({
    required this.config,
    required this.fileHandler,
  });

  final ConfigComponents config;
  final FileHandler fileHandler;

  /// Generates the models exports file
  Future<void> generateModelsExports() async {
    final dirPath = config.pathConfig.modelsOutputDirectory;
    final dir = Directory(dirPath);
    if (!dir.existsSync()) return;

    final files = dir
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.dart'))
        .where((f) =>
            !f.path.endsWith('.g.dart') && !f.path.endsWith('.freezed.dart'))
        .map((f) => path.basename(f.path))
        .toList();

    final lib = Library((b) {
      b.body.add(Code('// GENERATED CODE - DO NOT MODIFY BY HAND'));
      for (var file in files) {
        b.directives.add(Directive.export(file));
      }
    });

    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    final formatter =
        DartFormatter(languageVersion: DartFormatter.latestLanguageVersion);
    final code = formatter.format('${lib.accept(emitter)}');

    final outPath = path.join(dirPath, 'models.dart');
    await fileHandler.writeFile(outPath, code);
  }

  /// Generates the clients exports file
  Future<void> generateClientsExports() async {
    final dirPath = config.pathConfig.clientsOutputDirectory;
    final dir = Directory(dirPath);
    if (!dir.existsSync()) return;

    final files = dir
        .listSync()
        .whereType<File>()
        .where((f) => f.path.endsWith('.dart'))
        .where((f) => !f.path.endsWith('.g.dart'))
        .map((f) => path.basename(f.path))
        .toList();

    final lib = Library((b) {
      b.body.add(Code('// GENERATED CODE - DO NOT MODIFY BY HAND'));
      for (var file in files) {
        b.directives.add(Directive.export(file));
      }
    });

    final emitter = DartEmitter.scoped(useNullSafetySyntax: true);
    final formatter =
        DartFormatter(languageVersion: DartFormatter.latestLanguageVersion);
    final code = formatter.format('${lib.accept(emitter)}');

    final outPath = path.join(dirPath, 'clients.dart');
    await fileHandler.writeFile(outPath, code);
  }
}
