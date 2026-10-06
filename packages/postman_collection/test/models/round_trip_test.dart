import 'dart:convert';
import 'dart:io';

import 'package:json_schema/json_schema.dart';
import 'package:postman_collection/io.dart';
import 'package:postman_collection/postman_collection.dart';
import 'package:test/test.dart';

import '../support/official_schema.dart';
import '../support/schema_projection.dart';

/// Fixtures whose input deliberately breaks the official schema.
const _invalidInputs = {'lenient_inputs'};

const _assets = [
  'test/assets/test1.postman_collection.json',
  'test/assets/test2.postman_collection.json',
];

/// The generated models round-trip every fixture: `toJson(fromJson(x))`
/// equals `x` projected onto the official schema, ignoring the nulls and
/// schema defaults the models add for keys absent from `x`. Inputs that are
/// not v2.1 (v1, v2.0, the Postman API envelope) go through
/// `normalizePostmanCollection` first, v3 directories through
/// `readPostmanCollectionDirectory`; their output must decode as is.
void main() {
  final schema = officialSchema('postman/v2.1.0/collection.json');
  final v21 = <String, Map<String, dynamic>>{};
  final normalized = <String, Map<String, Object?>>{};

  for (final dir in Directory('test/fixtures').listSync()..sort(_byPath)) {
    final name = dir.uri.pathSegments.lastWhere((s) => s.isNotEmpty);
    if (_invalidInputs.contains(name)) continue;
    final file = File('${dir.path}/collection.json');
    if (!file.existsSync()) {
      normalized[name] = readPostmanCollectionDirectory(
        '${dir.path}/collection',
      );
      continue;
    }
    final json = jsonDecode(file.readAsStringSync()) as Map<String, dynamic>;
    if (_isV21(json)) {
      v21[name] = json;
    } else {
      normalized[name] = normalizePostmanCollection(json);
    }
  }
  for (final path in _assets) {
    // Throws (failing the suite) when an asset is missing.
    v21[path] = jsonDecode(File(path).readAsStringSync());
  }
  normalized['envelope(basics)'] = normalizePostmanCollection({
    'collection': v21['basics'],
  });

  test('covers every input', () {
    expect(v21, hasLength(14));
    expect(normalized.keys, [
      'v1_legacy',
      'v2_0_auth',
      'v3_directory',
      'envelope(basics)',
    ]);
  });

  for (final MapEntry(key: name, value: json) in v21.entries) {
    test(name, () => _expectRoundTrip(schema, json));
  }
  for (final MapEntry(key: name, value: json) in normalized.entries) {
    test('$name (normalized)', () => _expectRoundTrip(schema, json));
  }
}

void _expectRoundTrip(JsonSchema schema, Map<String, dynamic> json) {
  expectValid(schema, json);
  // Decoded as is: normalized maps must already be `Map<String, dynamic>`.
  final output = jsonDecode(
    jsonEncode(PostmanCollection.fromJson(json).toJson()),
  );
  final input = jsonDecode(jsonEncode(json));
  expect(dropAdded(schema, output, input), project(schema, input));
}

bool _isV21(Map<String, dynamic> json) => switch (json) {
  {'info': {'schema': final String s}} => s.contains('v2.1.0'),
  _ => false,
};

int _byPath(FileSystemEntity a, FileSystemEntity b) => a.path.compareTo(b.path);
