import 'dart:io';
import 'package:path/path.dart' as path;

class FileHandler {
  const FileHandler();

  /// Writes content to a file
  Future<void> writeFile(String filepath, String content) async {
    final file = File(filepath);
    await file.writeAsString(content);
  }

  /// Creates a directory if it doesn't exist
  Future<void> createDirectory(Directory dir) async {
    if (!dir.existsSync()) {
      print('Creating directory: ${dir.path}');
      await dir.create(recursive: true);
    }
  }

  /// Checks if a directory exists
  bool directoryExists(Directory dir) {
    return dir.existsSync();
  }

  /// Lists all Dart files in a directory, excluding generated files
  List<File> listDartFiles(Directory dir) {
    return dir
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
    final filename = path.basename(filepath);
    return path.basenameWithoutExtension(filename);
  }
}
