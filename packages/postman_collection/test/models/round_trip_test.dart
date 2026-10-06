import 'dart:convert';
import 'dart:io';

import 'package:postman_collection/postman_collection.dart';
import 'package:test/test.dart';

import '../support/official_schema.dart';
import '../support/schema_projection.dart';

/// Fixtures whose input deliberately breaks the official schema.
const _invalidInputs = {'lenient_inputs'};

/// The generated models round-trip every v2.1 fixture: `toJson(fromJson(x))`
/// equals `x` projected onto the official schema, ignoring the nulls and
/// schema defaults the models add for keys absent from `x`.
void main() {
  final schema = officialSchema('postman/v2.1.0/collection.json');
  final files = [
    for (final dir in Directory('test/fixtures').listSync()..sort(_byPath))
      if (!_invalidInputs.contains(dir.uri.pathSegments.lastWhere(_named)))
        File('${dir.path}/collection.json'),
    File('test/assets/test1.postman_collection.json'),
    File('test/assets/test2.postman_collection.json'),
  ];

  for (final file in files) {
    if (!file.existsSync()) continue;
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    final isV21 = switch (json) {
      {'info': {'schema': final String s}} => s.contains('v2.1.0'),
      _ => false,
    };
    if (!isV21) continue;
    test(file.path, () {
      expectValid(schema, json);
      final output = jsonDecode(
        jsonEncode(PostmanCollection.fromJson(json).toJson()),
      );
      expect(dropAdded(schema, output, json), project(schema, json));
    });
  }
}

bool _named(String segment) => segment.isNotEmpty;

int _byPath(FileSystemEntity a, FileSystemEntity b) => a.path.compareTo(b.path);
