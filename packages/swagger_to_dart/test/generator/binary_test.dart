import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import '../support/fixtures.dart';

void main() {
  late Map<String, String> files;

  setUpAll(() {
    final fixture = Fixture(Directory('test/fixtures/issue_54_binary'));
    final result = fixture.render();
    expect(result.errors, isEmpty);
    files = result.files;
    expect(jsonEncode(fixture.spec), isNotEmpty);
  });

  String method(String name) {
    final client = files['api_client/files_client.dart']!;
    final start = client.indexOf(
      RegExp(
        '@(GET|POST)\\([^)]*\\)\\s*(@\\w+\\([^)]*\\)\\s*)*Future<[^>]*>*\\s+$name\\(',
      ),
    );
    expect(start, isNot(-1), reason: name);
    return client.substring(start, client.indexOf('$name(', start));
  }

  test('binary responses are bytes for any media type (#54)', () {
    for (final name in ['getImage', 'getReport']) {
      expect(method(name), contains('@DioResponseType(ResponseType.bytes)'));
      expect(method(name), contains('Future<HttpResponse<Uint8List>>'));
    }
  });

  test('text responses are strings', () {
    expect(method('getText'), contains('Future<HttpResponse<String>>'));
  });

  test('the success response is the lowest 2xx, and JSON wins over text', () {
    expect(method('createPet'), contains('Future<HttpResponse<Pet>>'));
  });

  test('binary multipart fields are MultipartFile for every source', () {
    expect(
      files['models/upload_body.dart'],
      contains('required MultipartFile file,'),
    );
    expect(
      files['models/json_converter.dart'],
      contains('MultipartFileJsonConverter()'),
    );
  });
}
