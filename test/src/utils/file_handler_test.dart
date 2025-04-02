import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:test/test.dart';
import 'package:swagger_to_dart/src/utils/file_handler.dart';

void main() {
  late FileHandler fileHandler;
  late Directory testDir;
  late String testFilePath;

  setUp(() {
    fileHandler = const FileHandler();
    testDir = Directory(path.join(Directory.current.path, 'test', 'tmp'));
    testFilePath = path.join(testDir.path, 'test.txt');
  });

  tearDown(() {
    if (testDir.existsSync()) {
      testDir.deleteSync(recursive: true);
    }
  });

  group('FileHandler', () {
    test('writeFile should create and write content to a file', () async {
      const content = 'Test content';
      await fileHandler.writeFile(testFilePath, content);

      expect(File(testFilePath).existsSync(), isTrue);
      expect(File(testFilePath).readAsStringSync(), equals(content));
    });

    test(
      'createDirectory should create a directory if it does not exist',
      () async {
        final dirPath = path.join(testDir.path, 'new_dir');
        await fileHandler.createDirectory(dirPath);

        expect(Directory(dirPath).existsSync(), isTrue);
      },
    );

    test(
      'createDirectory should not throw if directory already exists',
      () async {
        final dirPath = path.join(testDir.path, 'existing_dir');
        Directory(dirPath).createSync();

        await expectLater(fileHandler.createDirectory(dirPath), completes);
      },
    );

    test('directoryExists should return true for existing directory', () {
      testDir.createSync();
      expect(fileHandler.directoryExists(testDir.path), isTrue);
    });

    test('directoryExists should return false for non-existing directory', () {
      expect(
        fileHandler.directoryExists(path.join(testDir.path, 'non_existing')),
        isFalse,
      );
    });

    test(
      'listDartFiles should return only Dart files excluding generated files',
      () async {
        // Create test files
        final dartFile = File(path.join(testDir.path, 'test.dart'));
        final generatedFile = File(path.join(testDir.path, 'test.g.dart'));
        final freezedFile = File(path.join(testDir.path, 'test.freezed.dart'));
        final nonDartFile = File(path.join(testDir.path, 'test.txt'));

        await dartFile.writeAsString('');
        await generatedFile.writeAsString('');
        await freezedFile.writeAsString('');
        await nonDartFile.writeAsString('');

        final files = fileHandler.listDartFiles(testDir.path);

        expect(files.length, equals(1));
        expect(files.first.path, equals(dartFile.path));
      },
    );

    test(
      'getFileNameWithoutExtension should return filename without extension',
      () {
        expect(
          fileHandler.getFileNameWithoutExtension('test.dart'),
          equals('test'),
        );
        expect(
          fileHandler.getFileNameWithoutExtension('path/to/test.dart'),
          equals('test'),
        );
        expect(fileHandler.getFileNameWithoutExtension('test'), equals('test'));
      },
    );
  });
}
