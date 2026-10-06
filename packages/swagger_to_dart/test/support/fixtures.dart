import 'dart:async';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:pubspec_parse/pubspec_parse.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:yaml/yaml.dart';

/// One scenario under `test/fixtures/<name>/`:
///
/// - the input (required): the first of [inputs] that exists, read and
///   converted to OpenAPI 3 like users' input
/// - `swagger_to_dart.yaml` — generator config (optional)
/// - `pubspec.yaml` — the consuming project; a `flutter` dependency makes
///   it a Flutter project (optional)
/// - `golden/<path>.golden` — expected generated files
/// - `roundtrip_test.dart.tmpl` — test run against the compiled output by
///   the e2e test (optional)
class Fixture {
  Fixture(this.dir);

  final Directory dir;

  String get name => p.basename(dir.path);

  static const inputs = [
    'openapi.json',
    'openapi.yaml',
    'swagger.json',
    'schema.json',
    'collection.json',
    'collection', // a Postman v3 directory
  ];

  String get input => inputs
      .map((file) => p.join(dir.path, file))
      .firstWhere(
        (path) =>
            FileSystemEntity.typeSync(path) != FileSystemEntityType.notFound,
        orElse: () => throw StateError('$name has none of $inputs'),
      );

  /// Whether the input is a Postman collection (file or v3 directory).
  bool get isPostman => p.basename(input).startsWith('collection');

  /// The input as OpenAPI 3. Conversion warnings are captured, not printed
  /// (the input and converter tests assert them), so test output stays clean.
  Map<String, dynamic> get spec => runZoned(
    () => toOpenApiJson(
      readSpecSync(input),
      sourceName: p.basenameWithoutExtension(input),
    ),
    zoneSpecification: ZoneSpecification(print: (_, _, _, line) {}),
  );

  SwaggerToDart get config {
    final file = File(p.join(dir.path, 'swagger_to_dart.yaml'));
    if (!file.existsSync()) return const SwaggerToDart();
    final yaml = loadYaml(file.readAsStringSync()) as YamlMap;
    return SwaggerToDartYaml.fromYamlMap(yaml).swaggerToDart;
  }

  Pubspec get pubspec {
    final file = File(p.join(dir.path, 'pubspec.yaml'));
    return file.existsSync()
        ? Pubspec.parse(file.readAsStringSync())
        : Pubspec('fixture');
  }

  bool get isFlutter => pubspec.dependencies.containsKey('flutter');

  GenerationContext context() => GenerationContext(
    openApi: OpenApi.fromJson(spec),
    config: config,
    pubspec: pubspec,
  );

  SwaggerToDartCodeGenerator generator() =>
      SwaggerToDartCodeGenerator(context());

  RenderResult render() => generator().render();

  Directory get _goldenDir => Directory(p.join(dir.path, 'golden'));

  /// Expected files keyed by their path relative to the output directory.
  Map<String, String> readGoldens() {
    if (!_goldenDir.existsSync()) return {};
    return {
      for (final file in _goldenDir.listSync(recursive: true).whereType<File>())
        if (file.path.endsWith('.golden'))
          p.posix
              .joinAll(p.split(p.relative(file.path, from: _goldenDir.path)))
              .replaceAll(RegExp(r'\.golden$'), ''): file
              .readAsStringSync(),
    };
  }

  /// A fixture without goldens snapshots every generated file; afterwards
  /// only the files already snapshotted are refreshed, so a fixture can keep
  /// just the files its scenario is about.
  void writeGoldens(Map<String, String> files) {
    final existing = readGoldens().keys.toSet();
    for (final entry in files.entries) {
      if (existing.isNotEmpty && !existing.contains(entry.key)) continue;
      File(p.join(_goldenDir.path, '${entry.key}.golden'))
        ..createSync(recursive: true)
        ..writeAsStringSync(entry.value);
    }
  }

  static List<Fixture> all() =>
      Directory(
          p.join('test', 'fixtures'),
        ).listSync().whereType<Directory>().map(Fixture.new).toList()
        ..sort((a, b) => a.name.compareTo(b.name));
}

GenerationContext contextFor(
  Map<String, dynamic> spec, {
  SwaggerToDart config = const SwaggerToDart(),
  bool flutter = false,
}) => GenerationContext(
  openApi: OpenApi.fromJson(spec),
  config: config,
  pubspec: Pubspec(
    'fixture',
    dependencies: {if (flutter) 'flutter': SdkDependency('flutter')},
  ),
);

RenderResult renderSpec(
  Map<String, dynamic> spec, {
  SwaggerToDart config = const SwaggerToDart(),
  bool flutter = false,
}) => SwaggerToDartCodeGenerator(
  contextFor(spec, config: config, flutter: flutter),
).render();
