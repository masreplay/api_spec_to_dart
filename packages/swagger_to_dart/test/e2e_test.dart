@Tags(['e2e'])
library;

import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:test/test.dart';

import 'support/fixtures.dart';

final _project = p.normalize(p.absolute('..', 'swagger_to_dart_e2e'));

Future<ProcessResult> _dart(List<String> arguments) => Process.run(
  Platform.resolvedExecutable,
  arguments,
  workingDirectory: _project,
);

/// Generates every non-Flutter fixture into `swagger_to_dart_e2e`, then
/// proves the output builds with build_runner, analyzes clean under the
/// README's consumer lints, and passes the fixtures' round-trip tests.
void main() {
  test(
    'generated code compiles, analyzes clean and round-trips',
    () async {
      final gen = Directory(p.join(_project, 'lib', 'gen'));
      final tests = Directory(p.join(_project, 'test'));
      for (final dir in [gen, tests]) {
        if (dir.existsSync()) dir.deleteSync(recursive: true);
      }

      for (final fixture in Fixture.all().where((f) => !f.isFlutter)) {
        await fixture.generator().write(p.join(gen.path, fixture.name));

        final template = File(
          p.join(fixture.dir.path, 'roundtrip_test.dart.tmpl'),
        );
        if (template.existsSync()) {
          tests.createSync(recursive: true);
          template.copySync(p.join(tests.path, '${fixture.name}_test.dart'));
        }
      }

      final build = await _dart(['run', 'build_runner', 'build']);
      expect(build.exitCode, 0, reason: '${build.stdout}\n${build.stderr}');

      final analyze = await _dart([
        'analyze',
        '--no-fatal-warnings',
        'lib',
        if (tests.existsSync()) 'test',
      ]);
      expect(analyze.exitCode, 0, reason: '${analyze.stdout}');

      if (tests.existsSync()) {
        final run = await _dart(['test']);
        expect(run.exitCode, 0, reason: '${run.stdout}\n${run.stderr}');
      }
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
