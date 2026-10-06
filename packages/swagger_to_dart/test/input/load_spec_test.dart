import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:postman_collection/io.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';
import 'package:yaml/yaml.dart';

const _yaml = '''
openapi: 3.0.3
info: {title: Anchored, version: '1'}
paths:
  /pets:
    get:
      responses:
        200: &ok
          description: OK
        default: *ok
components:
  schemas:
    Base: &base
      type: object
      properties:
        id: {type: integer}
    Pet:
      <<: *base
      required: [id]
''';

const _decoded = {
  'openapi': '3.0.3',
  'info': {'title': 'Anchored', 'version': '1'},
  'paths': {
    '/pets': {
      'get': {
        'responses': {
          '200': {'description': 'OK'},
          'default': {'description': 'OK'},
        },
      },
    },
  },
  'components': {
    'schemas': {
      'Base': {
        'type': 'object',
        'properties': {
          'id': {'type': 'integer'},
        },
      },
      'Pet': {
        'type': 'object',
        'properties': {
          'id': {'type': 'integer'},
        },
        'required': ['id'],
      },
    },
  },
};

/// Fails on any YamlMap/YamlList left in [node].
void _expectPlain(Object? node) {
  expect(node, isNot(isA<YamlMap>()));
  expect(node, isNot(isA<YamlList>()));
  switch (node) {
    case Map():
      expect(node, isA<Map<String, dynamic>>());
      node.values.forEach(_expectPlain);
    case List():
      node.forEach(_expectPlain);
  }
}

void main() {
  late Directory root;

  String file(String name, String content) {
    final path = p.join(root.path, name);
    File(path).writeAsStringSync(content);
    return path;
  }

  setUp(() => root = Directory.systemTemp.createTempSync('load_spec_'));
  tearDown(() => root.deleteSync(recursive: true));

  test('reads a JSON file', () async {
    final path = file('openapi.json', jsonEncode(_decoded));

    expect(await loadSpec(path: path), _decoded);
    expect(readSpecSync(path), _decoded);
  });

  test('reads a YAML file into plain maps, resolving anchors', () async {
    final path = file('openapi.yaml', _yaml);

    final spec = await loadSpec(path: path);

    expect(spec, _decoded);
    _expectPlain(spec);
    expect(readSpecSync(file('openapi.yml', _yaml)), _decoded);
  });

  test('a directory is a Postman v3 collection', () async {
    final dir = p.join(root.path, 'Books');
    File(p.join(dir, 'books.request.yaml'))
      ..createSync(recursive: true)
      ..writeAsStringSync(
        "\$kind: http-request\nmethod: GET\nurl: 'https://x.io/books'",
      );

    final spec = await loadSpec(path: dir);

    expect(spec, readPostmanCollectionDirectory(dir));
    expect(spec, containsPair('info', containsPair('name', 'Books')));
    expect(readSpecSync(dir), spec);
  });

  test('prints v3 directory warnings', () {
    final dir = p.join(root.path, 'Socket');
    File(p.join(dir, 'chat.request.yaml'))
      ..createSync(recursive: true)
      ..writeAsStringSync("\$kind: websocket-request\nurl: 'wss://x.io'");
    final printed = <String>[];

    runZoned(
      () => readSpecSync(dir),
      zoneSpecification: ZoneSpecification(
        print: (_, _, _, line) => printed.add(line),
      ),
    );

    expect(printed, hasLength(1));
    expect(printed.single, startsWith('swagger_to_dart: warning: '));
  });

  test('a missing input names its path', () {
    final path = p.join(root.path, 'missing.json');

    expect(
      () => readSpecSync(path),
      throwsA(
        isA<FileSystemException>().having((e) => e.path, 'path', path),
      ),
    );
  });

  group('url', () {
    late HttpServer server;
    late int status;

    setUp(() async {
      status = 200;
      server = await HttpServer.bind(InternetAddress.loopbackIPv4, 0);
      server.listen((request) {
        request.response
          ..statusCode = status
          ..headers.contentType = ContentType('application', 'yaml')
          ..write(_yaml)
          ..close();
      });
    });

    tearDown(() => server.close(force: true));

    String url() => 'http://127.0.0.1:${server.port}/openapi.yaml';

    /// [loadSpec] with what it prints collected into [printed], not shown.
    Future<Object?> load(String cache, [List<String>? printed]) => runZoned(
      () => loadSpec(url: url(), path: cache),
      zoneSpecification: ZoneSpecification(
        print: (_, _, _, line) => printed?.add(line),
      ),
    );

    test('fetches YAML and refreshes the local copy', () async {
      final cache = file('openapi.json', '{"stale": true}');
      final printed = <String>[];

      final spec = await load(cache, printed);

      expect(spec, _decoded);
      _expectPlain(spec);
      expect(readSpecSync(cache), _decoded);
      expect(printed, ['Fetching the API specification from ${url()}']);
    });

    test('falls back loudly to the local copy when the fetch fails', () async {
      status = 500;
      final cache = file('openapi.json', jsonEncode({'cached': true}));
      final printed = <String>[];

      final spec = await load(cache, printed);

      expect(spec, {'cached': true});
      expect(
        printed.join('\n'),
        allOf(contains('WARNING'), contains(url()), contains(cache)),
      );
    });

    test('rethrows when the fetch fails and nothing is cached', () async {
      status = 500;

      await expectLater(
        load(p.join(root.path, 'none.json')),
        throwsA(isA<HttpException>()),
      );
    });
  });
}
