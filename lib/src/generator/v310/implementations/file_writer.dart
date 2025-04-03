import 'dart:io';

/// Implementation of FileWriterInterface
abstract final class FileWriter {
  Future<void> writeFile(String filepath, String content) async {
    final file = File(filepath);
    await file.writeAsString(content);
  }

  Future<void> createDirectory(String directory) async {
    final dir = Directory(directory);
    if (!dir.existsSync()) {
      await dir.create(recursive: true);
    }
  }

  bool directoryExists(String directory) {
    return Directory(directory).existsSync();
  }

  List<File> listFiles(String directory) {
    return Directory(directory)
        .listSync()
        .where((entity) => entity is File)
        .map((entity) => entity as File)
        .toList();
  }
}
