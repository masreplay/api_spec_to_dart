import 'dart:io';

/// Interface for file operations
abstract class FileWriterInterface {
  /// Writes content to a file
  Future<void> writeFile(String filepath, String content);

  /// Creates a directory if it doesn't exist
  Future<void> createDirectory(String directory);

  /// Checks if a directory exists
  bool directoryExists(String directory);

  /// Lists files in a directory
  List<File> listFiles(String directory);
}
