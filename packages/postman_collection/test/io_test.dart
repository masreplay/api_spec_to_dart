import 'dart:io';

import 'package:postman_collection/convert.dart';
import 'package:postman_collection/io.dart';
import 'package:test/test.dart';

void main() {
  late Directory root;
  setUp(() => root = Directory.systemTemp.createTempSync('bookstore api '));
  tearDown(() => root.deleteSync(recursive: true));

  void write(String path, String content) => (File(
    '${root.path}/$path',
  )..createSync(recursive: true)).writeAsStringSync(content);

  test('reads every YAML file relative to the directory', () {
    final files = {
      'books.request.yaml':
          "\$kind: http-request\nmethod: GET\nurl: 'https://x.io/books'",
      'admin/ban.request.yaml':
          "\$kind: http-request\nmethod: POST\nurl: 'https://x.io/ban'",
      'admin/.resources/definition.yaml': '\$kind: collection\nname: Admin',
      '.resources/books.resources/examples/OK.example.yaml':
          '\$kind: http-example\nresponse:\n  statusCode: 200',
    };
    files.forEach(write);
    write('notes.txt', 'ignored');

    final warnings = <String>[];
    final collection = readPostmanCollectionDirectory(
      root.path,
      onWarning: warnings.add,
    );
    final name = root.uri.pathSegments.where((s) => s.isNotEmpty).last;
    expect(collection, postmanCollectionFromV3Files(files, name: name));
    expect((collection['info'] as Map)['name'], startsWith('bookstore api '));
    expect(warnings, isEmpty);
    expect(readPostmanCollectionDirectory('${root.path}/'), collection);
  });
}
