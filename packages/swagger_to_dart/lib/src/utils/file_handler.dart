import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';

class FileHandler {
  const FileHandler();

  Future<File> writeLibrary(Library library) async {
    final file = File(library.name!);
    final emitter = DartEmitter.scoped();
    final formatter = DartFormatter(
      languageVersion: DartFormatter.latestLanguageVersion,
    );

    return file.writeAsString(formatter.format('${library.accept(emitter)}'));
  }

  /// Writes content to a file
  Future<void> writeFile(String filepath, String content) async {
    final file = File(filepath);
    await file.writeAsString(content);
  }

  /// Creates a directory if it doesn't exist
  Future<void> createDirectory(String directory) async {
    final dir = Directory(directory);
    if (!dir.existsSync()) {
      await dir.create(recursive: true);
    }
  }

  /// Checks if a directory exists
  bool directoryExists(String directory) {
    return Directory(directory).existsSync();
  }

  /// Lists all Dart files in a directory, excluding generated files
  List<File> listDartFiles(String directory) {
    return Directory(directory)
        .listSync()
        .where(
          (entity) =>
              entity is File &&
              entity.path.endsWith('.dart') &&
              !entity.path.endsWith('.g.dart') &&
              !entity.path.endsWith('.freezed.dart'),
        )
        .map((entity) => entity as File)
        .toList();
  }

  /// Gets the filename without extension
  String getFileNameWithoutExtension(String filepath) {
    return filepath.split('/').last.replaceAll('.dart', '');
  }
}
