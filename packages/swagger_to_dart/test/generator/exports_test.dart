import 'dart:io';

import 'package:test/test.dart';

import '../support/fixtures.dart';

Map<String, String> _render(String fixture) {
  final result = Fixture(Directory('test/fixtures/$fixture')).render();
  expect(result.errors, isEmpty);
  return result.files;
}

void main() {
  test('a spec without operations has no api client (G4)', () {
    final files = _render('models_only');

    expect(files.keys.where((path) => path.startsWith('api_client/')), isEmpty);
    expect(files['gen.dart'], "export 'models/models.dart';\n");
  });

  test('models without MultipartFile export neither dio nor its converter '
      '(G4)', () {
    for (final fixture in ['models_only', 'petstore']) {
      final files = _render(fixture);

      expect(
        files['models/exports.dart'],
        isNot(contains('package:dio/dio.dart')),
        reason: fixture,
      );
      expect(
        files['models/json_converter.dart'],
        isNot(contains('MultipartFile')),
        reason: fixture,
      );
    }
  });

  test('models with MultipartFile keep dio and the converter', () {
    final files = _render('issue_54_binary');

    expect(files['models/exports.dart'], contains('package:dio/dio.dart'));
    expect(
      files['models/json_converter.dart'],
      contains('MultipartFileJsonConverter()'),
    );
  });
}
