@Tags(['golden'])
library;

import 'dart:io';

import 'package:test/test.dart';

import 'support/fixtures.dart';

/// Every fixture's generated files must match its `golden/` snapshots.
/// Refresh after an intended change: `UPDATE_GOLDENS=1 dart test -t golden`.
void main() {
  final update = Platform.environment['UPDATE_GOLDENS'] == '1';

  for (final fixture in Fixture.all()) {
    test(fixture.name, () {
      final result = fixture.render();
      expect(
        result.errors,
        isEmpty,
        reason: 'generated code must be parseable',
      );

      if (update) {
        fixture.writeGoldens(result.files);
        return;
      }

      final goldens = fixture.readGoldens();
      expect(
        goldens,
        isNotEmpty,
        reason: 'no goldens yet: run UPDATE_GOLDENS=1 dart test -t golden',
      );
      for (final entry in goldens.entries) {
        expect(result.files[entry.key], entry.value, reason: entry.key);
      }
    });
  }
}
