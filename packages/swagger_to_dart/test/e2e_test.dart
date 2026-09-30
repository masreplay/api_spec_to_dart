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

      final fixtures = Fixture.all().where((f) => !f.isFlutter).toList();
      for (final fixture in fixtures) {
        await fixture.generator().write(p.join(gen.path, fixture.name));

        final template = File(
          p.join(fixture.dir.path, 'roundtrip_test.dart.tmpl'),
        );
        if (template.existsSync()) {
          tests.createSync(recursive: true);
          template.copySync(p.join(tests.path, '${fixture.name}_test.dart'));
        }
      }

      // `dart analyze` skips the excluded *.g.dart / *.freezed.dart parts, so
      // compile every fixture for real: a test importing them all.
      tests.createSync(recursive: true);
      File(p.join(tests.path, 'compile_test.dart')).writeAsStringSync(
        [
          '// ignore_for_file: unused_import',
          for (final f in fixtures)
            "import 'package:swagger_to_dart_e2e/gen/${f.name}/gen.dart' "
                'as ${f.name};',
          "import 'package:test/test.dart';",
          "void main() => test('generated code compiles', () {});",
        ].join('\n'),
      );

      final build = await _dart(['run', 'build_runner', 'build']);
      expect(build.exitCode, 0, reason: '${build.stdout}\n${build.stderr}');

      final analyze = await _dart([
        'analyze',
        '--fatal-infos',
        'lib',
        'test',
      ]);
      expect(analyze.exitCode, 0, reason: '${analyze.stdout}');

      final run = await _dart(['test']);
      expect(run.exitCode, 0, reason: '${run.stdout}\n${run.stderr}');
    },
    timeout: const Timeout(Duration(minutes: 10)),
  );
}
