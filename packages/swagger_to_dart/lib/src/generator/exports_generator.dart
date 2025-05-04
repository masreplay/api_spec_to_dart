import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:swagger_to_dart/src/config/code_generation_context.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';

/// Class responsible for generating export files for models and clients
class DartCodeExportsGenerator {
  const DartCodeExportsGenerator({
    required this.context,
    required this.fileHandler,
  });

  final CodeGenerationContext context;
  final FileHandler fileHandler;

  /// Generates the exports.dart file for models
  Future<void> generateModelsExports() async {
    final modelsDir = Directory(context.pathConfig.modelsOutputDirectory);
    if (!modelsDir.existsSync()) {
      return;
    }

    final buffer = StringBuffer();

    buffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');

    final modelFiles = modelsDir
        .listSync()
        .where((entity) => entity is File && entity.path.endsWith('.dart'))
        .map((entity) => entity as File)
        .where(
          (file) =>
              !file.path.endsWith('.g.dart') &&
              !file.path.endsWith('.freezed.dart'),
        )
        .toList();

    for (final file in modelFiles) {
      buffer.writeln("export '${path.basename(file.path)}';");
    }

    final exportsFilePath = path.join(
      context.pathConfig.modelsOutputDirectory,
      'models.dart',
    );
    await fileHandler.writeFile(exportsFilePath, buffer.toString());
  }

  Future<void> generateClientsExports() async {
    final clientsDir = Directory(context.pathConfig.clientsOutputDirectory);
    if (!clientsDir.existsSync()) {
      return;
    }

    final buffer = StringBuffer();
    buffer.writeln('// GENERATED CODE - DO NOT MODIFY BY HAND');

    final clientFiles = clientsDir
        .listSync()
        .where((entity) => entity is File && entity.path.endsWith('.dart'))
        .map((entity) => entity as File)
        .where((file) => !file.path.endsWith('.g.dart'))
        .toList();

    // Write exports for each client
    for (final file in clientFiles) {
      buffer.writeln("export '${path.basename(file.path)}';");
    }

    final exportsFilePath = path.join(
      context.pathConfig.clientsOutputDirectory,
      'clients.dart',
    );
    await fileHandler.writeFile(exportsFilePath, buffer.toString());
  }
}
