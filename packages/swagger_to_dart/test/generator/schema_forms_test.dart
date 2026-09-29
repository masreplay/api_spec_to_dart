import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import '../support/fixtures.dart';

void main() {
  late Map<String, String> files;

  setUpAll(() {
    final spec =
        jsonDecode(
              File(
                'test/fixtures/allof_and_31/openapi.json',
              ).readAsStringSync(),
            )
            as Map<String, dynamic>;
    final result = renderSpec(spec);
    expect(result.errors, isEmpty);
    files = result.files;
  });

  test('allOf merges the properties and required lists of its parts', () {
    final pet = files['models/pet.dart']!;
    expect(pet, contains('required int id,'));
    expect(pet, contains('required String name,'));
  });

  test('a single-entry allOf is the referenced type', () {
    expect(files['models/pet.dart'], contains('Owner? owner,'));
  });

  test('OpenAPI 3.1 type arrays with "null" are nullable types', () {
    final owner = files['models/owner.dart']!;
    expect(owner, contains('String? nickname,'));
    expect(owner, contains('OwnerLevel? level,'));
    expect(
      files['models/owner_level.dart'],
      allOf(contains('low,'), isNot(contains("JsonValue('null')"))),
    );
  });

  test('additionalProperties types map values', () {
    expect(files['models/owner.dart'], contains('Map<String, int>? counts,'));
  });

  test('schemas without type and self-references generate', () {
    expect(files['models/no_type.dart'], contains('String? a,'));
    expect(files['models/node.dart'], contains('List<Node>? children,'));
  });

  test('allOf cycles terminate', () {
    expect(
      files['models/cycle_a.dart'],
      allOf(contains('String? a,'), contains('String? b,')),
    );
  });
}
