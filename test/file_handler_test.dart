import 'dart:io';
import 'package:test/test.dart';
import 'package:swagger_to_dart/src/utils/file_handler.dart';

void main() {
  group('FileHandler', () {
    late FileHandler fileHandler;
    late Directory testDir;
    late File testFile;

    /// Sets up the test environment before each test
    setUp(() {
      fileHandler = const FileHandler();
      testDir = Directory('test/temp');
      testFile = File('${testDir.path}/test.txt');
    });

    /// Cleans up the test environment after each test
    tearDown(() {
      if (testFile.existsSync()) {
        testFile.deleteSync();
      }
      if (testDir.existsSync()) {
        testDir.deleteSync();
      }
    });

    /// Tests the directory creation functionality
    test('createDirectory creates directory if it does not exist', () async {
      // Verify directory doesn't exist initially
      expect(testDir.existsSync(), isFalse);

      // Create directory
      await fileHandler.createDirectory(testDir.path);

      // Verify directory was created
      expect(testDir.existsSync(), isTrue);
    });

    /// Tests that directory creation doesn't fail if directory already exists
    test('createDirectory handles existing directory gracefully', () async {
      // Create directory first
      await testDir.create(recursive: true);

      // Try to create it again
      await fileHandler.createDirectory(testDir.path);

      // Verify directory still exists
      expect(testDir.existsSync(), isTrue);
    });

    /// Tests the file writing functionality
    test('writeFile writes content to file', () async {
      const testContent = 'Hello, World!';

      // Create parent directory
      await testDir.create(recursive: true);

      // Write content to file
      await fileHandler.writeFile(testFile.path, testContent);

      // Verify file exists and contains correct content
      expect(testFile.existsSync(), isTrue);
      expect(testFile.readAsStringSync(), testContent);
    });

    /// Tests the directory existence check functionality
    test('directoryExists correctly checks directory existence', () async {
      // Verify non-existent directory returns false
      expect(fileHandler.directoryExists(testDir.path), isFalse);

      // Create directory
      await testDir.create(recursive: true);

      // Verify existing directory returns true
      expect(fileHandler.directoryExists(testDir.path), isTrue);
    });

    /// Tests the file listing functionality
    test(
      'listDartFiles returns only Dart files excluding generated files',
      () async {
        // Create test directory and files
        await testDir.create(recursive: true);
        await File('${testDir.path}/test1.dart').create();
        await File('${testDir.path}/test2.dart').create();
        await File('${testDir.path}/test3.g.dart').create();
        await File('${testDir.path}/test4.freezed.dart').create();
        await File('${testDir.path}/test5.txt').create();

        // Get list of Dart files
        final files = fileHandler.listDartFiles(testDir.path);

        // Verify only non-generated Dart files are returned
        expect(files.length, 2);
        expect(files.any((file) => file.path.endsWith('.g.dart')), isFalse);
        expect(
          files.any((file) => file.path.endsWith('.freezed.dart')),
          isFalse,
        );
        expect(files.any((file) => file.path.endsWith('.txt')), isFalse);
      },
    );

    /// Tests the filename extraction functionality
    test(
      'getFileNameWithoutExtension correctly extracts filename without extension',
      () {
        const testCases = [
          ('test.dart', 'test'),
          ('path/to/test.dart', 'test'),
          ('test.g.dart', 'test.g'),
          ('test.freezed.dart', 'test.freezed'),
        ];

        for (final testCase in testCases) {
          expect(
            fileHandler.getFileNameWithoutExtension(testCase.$1),
            testCase.$2,
          );
        }
      },
    );
  });
}
