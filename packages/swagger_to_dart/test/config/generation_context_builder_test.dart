import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

Map<String, dynamic> _spec(String title) => {
  'openapi': '3.1.0',
  'info': {'title': title, 'version': '1'},
  'paths': <String, dynamic>{},
};

void main() {
  late Directory root;
  late HttpServer server;
  late int status;

  File file(String relative) => File(p.join(root.path, relative));

  void config(String yaml) =>
      file('swagger_to_dart.yaml').writeAsStringSync(yaml);

  setUp(() async {
    root = Directory.systemTemp.createTempSync('swagger_to_dart_');
    file('pubspec.yaml').writeAsStringSync('name: app\n');
    Directory(p.join(root.path, 'schema')).createSync();

    status = 200;
    server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
    server.listen((request) {
      request.response
        ..statusCode = status
        ..headers.contentType = ContentType.json
        ..write(jsonEncode(_spec('Live')))
        ..close();
    });

    config('''
swagger_to_dart:
  url: http://127.0.0.1:${server.port}/openapi.json
  input_directory: schema/openapi.json
''');
  });

  tearDown(() async {
    await server.close(force: true);
    root.deleteSync(recursive: true);
  });

  Future<GenerationContext> build() =>
      GenerationContextBuilder(rootDirectory: root.path).build();

  test('uses the live spec and refreshes an existing cached copy', () async {
    file('schema/openapi.json').writeAsStringSync(jsonEncode(_spec('Cached')));

    final context = await build();

    expect(context.openApi.info?.title, 'Live');
    expect(
      jsonDecode(file('schema/openapi.json').readAsStringSync()),
      _spec('Live'),
    );
  });

  test('falls back to the cached copy when the fetch fails', () async {
    status = 500;
    file('schema/openapi.json').writeAsStringSync(jsonEncode(_spec('Cached')));

    final context = await build();

    expect(context.openApi.info?.title, 'Cached');
  });

  test('fails when the fetch fails and nothing is cached', () async {
    status = 500;

    await expectLater(build(), throwsA(isA<Exception>()));
  });

  test('names a missing input file', () async {
    config('swagger_to_dart:\n  input_directory: missing.json\n');

    await expectLater(
      build(),
      throwsA(predicate((e) => '$e'.contains('missing.json'))),
    );
  });

  test('rejects an input that is no API description', () async {
    config('swagger_to_dart:\n  input_directory: schema/openapi.json\n');
    file('schema/openapi.json').writeAsStringSync('{"hello": "world"}');

    await expectLater(build(), throwsA(isA<FormatException>()));
  });

  test('writes the output directory relative to the project root', () async {
    config('swagger_to_dart:\n  input_directory: schema/openapi.json\n');
    file('schema/openapi.json').writeAsStringSync(jsonEncode(_spec('Local')));

    await SwaggerToDartCodeGenerator(await build()).write();

    expect(file('lib/src/gen/gen.dart').existsSync(), isTrue);
  });
}
