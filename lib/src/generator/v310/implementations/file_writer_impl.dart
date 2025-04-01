import 'dart:io';
import '../interfaces/file_writer_interface.dart';

/// Implementation of FileWriterInterface
class FileWriterImpl implements FileWriterInterface {
  @override
  Future<void> writeFile(String filepath, String content) async {
    final file = File(filepath);
    await file.writeAsString(content);
  }

  @override
  Future<void> createDirectory(String directory) async {
    final dir = Directory(directory);
    if (!dir.existsSync()) {
      await dir.create(recursive: true);
    }
  }

  @override
  bool directoryExists(String directory) {
    return Directory(directory).existsSync();
  }

  @override
  List<File> listFiles(String directory) {
    return Directory(directory)
        .listSync()
        .where((entity) => entity is File)
        .map((entity) => entity as File)
        .toList();
  }
}
