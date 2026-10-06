import 'dart:convert';
import 'dart:io';

import 'package:postman_collection/convert.dart';
import 'package:postman_collection/io.dart';
import 'package:test/test.dart';

import '../support/official_schema.dart';

/// Fixtures whose input deliberately breaks the official schema.
const _invalidInputs = {'lenient_inputs'};

/// Every fixture under `test/fixtures/<name>/` (`collection.json`, or a v3
/// `collection/` directory) converts to `openapi.json.golden`, plus
/// `warnings.txt.golden` when it warns. Inputs validate against the official
/// Postman schema of their version, outputs against OAS 3.1 or 3.2.
/// Refresh after an intended change: `UPDATE_GOLDENS=1 dart test`.
void main() {
  final update = Platform.environment['UPDATE_GOLDENS'] == '1';
  final fixtures =
      Directory('test/fixtures').listSync().whereType<Directory>().toList()
        ..sort((a, b) => a.path.compareTo(b.path));

  for (final fixture in fixtures) {
    final name = fixture.uri.pathSegments.where((s) => s.isNotEmpty).last;
    test(name, () {
      final warnings = <String>[];
      final file = File('${fixture.path}/collection.json');
      final Object? input;
      if (file.existsSync()) {
        input = jsonDecode(file.readAsStringSync());
        if (!_invalidInputs.contains(name)) {
          expectValid(officialSchema(_postmanSchema(input)), input);
        }
      } else {
        input = readPostmanCollectionDirectory(
          '${fixture.path}/collection',
          onWarning: warnings.add,
        );
      }

      final output = postmanToOpenApi(input, onWarning: warnings.add);
      final version = (output['openapi']! as String).substring(0, 3);
      expectValid(officialSchema('openapi/$version/schema.json'), output);

      final goldens = {
        'openapi.json.golden':
            '${const JsonEncoder.withIndent('  ').convert(output)}\n',
        'warnings.txt.golden': warnings.isEmpty
            ? null
            : '${warnings.join('\n')}\n',
      };
      for (final MapEntry(key: path, value: expected) in goldens.entries) {
        final golden = File('${fixture.path}/$path');
        if (update) {
          if (expected != null) {
            golden.writeAsStringSync(expected);
          } else if (golden.existsSync()) {
            golden.deleteSync();
          }
        } else {
          expect(
            golden.existsSync() ? golden.readAsStringSync() : null,
            expected,
            reason: '$path (refresh: UPDATE_GOLDENS=1 dart test)',
          );
        }
      }
    });
  }
}

/// The official schema of a collection's version.
String _postmanSchema(Object? collection) => switch (collection) {
  {'info': {'schema': final String schema}} when schema.contains('v2.0.0') =>
    'postman/v2.0.0/collection.json',
  {'info': _} => 'postman/v2.1.0/collection.json',
  _ => 'postman/v1.0.0/collection.json',
};
