import 'dart:convert';
import 'dart:io';

import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

void main() {
  test('parses the example FastAPI spec', () {
    final json =
        jsonDecode(File('example/schema/swagger.json').readAsStringSync())
            as Map<String, dynamic>;
    final openApi = OpenApi.fromJson(json);
    expect(openApi.paths, isNotEmpty);
    expect(openApi.components?.schemas, isNotEmpty);
  });
}
