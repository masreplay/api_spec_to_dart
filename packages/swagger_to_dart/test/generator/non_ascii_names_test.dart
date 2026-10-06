import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:code_builder/code_builder.dart';
import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

import '../support/fixtures.dart';

/// [spec] rendered in an isolate that is killed after [limit]: a hang in
/// generation is synchronous, which a test timeout cannot interrupt.
Future<RenderResult> _renderWithin(
  Map<String, dynamic> spec, {
  SwaggerToDart config = const SwaggerToDart(),
  Duration limit = const Duration(seconds: 20),
}) async {
  final port = ReceivePort();
  final isolate = await Isolate.spawn((SendPort out) {
    final result = runZoned(
      () => renderSpec(spec, config: config),
      zoneSpecification: ZoneSpecification(print: (_, _, _, _) {}),
    );
    out.send([result.files, result.errors]);
  }, port.sendPort);
  try {
    final [files, errors] = await port.first.timeout(limit) as List;
    return (
      files: files as Map<String, String>,
      errors: errors as Map<String, String>,
    );
  } on TimeoutException {
    fail('generation did not finish within $limit');
  } finally {
    isolate.kill(priority: Isolate.immediate);
    port.close();
  }
}

Map<String, dynamic> _components(Map<String, dynamic> schemas) => {
  'openapi': '3.1.0',
  'info': {'title': 't', 'version': '1'},
  'paths': <String, dynamic>{},
  'components': {'schemas': schemas},
};

const _city = {
  'type': 'object',
  'properties': {
    'city': {'type': 'string'},
  },
};

void main() {
  group('keys without ASCII words', () {
    test('a nested object, enum and union are named by the field', () async {
      final result = await _renderWithin(
        _components({
          'User': {
            'type': 'object',
            'properties': {
              'name': {'type': 'string'},
              'العنوان': _city,
              '😀': {
                'type': 'string',
                'enum': ['a', 'b'],
              },
              '_': _city,
              r'$': {
                'oneOf': [
                  _city,
                  {
                    'type': 'object',
                    'properties': {
                      'zip': {'type': 'integer'},
                    },
                    'required': ['zip'],
                  },
                ],
              },
            },
          },
        }),
      );
      expect(result.errors, isEmpty);
      final user = result.files['models/user.dart']!;
      expect(user, contains('UserEmpty? empty,'));
      expect(user, contains('UserEmpty2? empty2,'));
      expect(user, contains('UserEmpty3? empty3,'));
      expect(user, contains('UserEmpty4? empty4,'));
      expect(result.files, contains('models/user_empty.dart'));
    });

    test('a Postman example with an Arabic object key', () async {
      final spec = toOpenApiJson({
        'info': {
          'name': 'x',
          'schema':
              'https://schema.getpostman.com/json/collection/v2.1.0/collection.json',
        },
        'item': [
          {
            'name': 'Get user',
            'request': {'method': 'GET', 'url': 'https://a.example.com/users'},
            'response': [
              {
                'name': 'ok',
                'code': 200,
                '_postman_previewlanguage': 'json',
                'body': '{"name": "Ali", "العنوان": {"city": "Baghdad"}}',
              },
            ],
          },
        ],
      }, sourceName: 'collection');
      final result = await _renderWithin(spec);
      expect(result.errors, isEmpty);
      expect(
        result.files['models/get_user_response.dart'],
        contains('GetUserResponseEmpty? empty,'),
      );
    });
  });

  test('a nested model taking its parent\'s name fails instead of looping', () {
    final context = contextFor(_components({}));
    var depth = 0;
    Library build(String name) {
      if (depth++ > 5) fail('looped');
      // The nested model always takes the name its parent is trying.
      context.registerInlineModel(
        name,
        (n) => Library((b) => b..name = n.toLowerCase()),
      );
      return Library(
        (b) => b
          ..name = name.toLowerCase()
          ..body.add(Code('// parent')),
      );
    }

    expect(
      () => context.registerInlineModel('Parent', build),
      throwsA(isA<StateError>()),
    );
  });

  group('names without ASCII words', () {
    final arabicComponents = _components({
      'عمر': {
        'type': 'object',
        'properties': {
          'name': {'type': 'string'},
        },
      },
      'مستخدم': {
        'type': 'object',
        'properties': {
          'id': {'type': 'integer'},
        },
      },
    });

    test('components are Schema, Schema2 with a warning', () {
      final lines = <String>[];
      final result = runZoned(
        () => renderSpec(arabicComponents),
        zoneSpecification: ZoneSpecification(
          print: (_, _, _, line) => lines.add(line),
        ),
      );
      expect(result.errors, isEmpty);
      expect(result.files['models/schema.dart'], contains('class Schema '));
      expect(result.files['models/schema2.dart'], contains('class Schema2 '));
      expect(result.files.keys, isNot(contains('models/.dart')));
      expect(
        lines,
        containsAll([
          contains('"عمر"'),
          allOf(contains('"مستخدم"'), contains('Schema2')),
        ]),
      );
    });

    test('components get the class prefix after the fallback', () {
      final result = runZoned(
        () => renderSpec(
          arabicComponents,
          config: const SwaggerToDart(
            model: ModelConfig(classPrefix: 'Postman'),
          ),
        ),
        zoneSpecification: ZoneSpecification(print: (_, _, _, _) {}),
      );
      expect(
        result.files['models/postman_schema.dart'],
        contains('class PostmanSchema '),
      );
      expect(
        result.files['models/postman_schema2.dart'],
        contains('class PostmanSchema2 '),
      );
    });

    test('inline object and enum titles are no names', () {
      for (final prefix in [null, 'Postman']) {
        final result = renderSpec(
          {
            'openapi': '3.1.0',
            'info': {'title': 't', 'version': '1'},
            'paths': {
              '/y': {
                'post': {
                  'operationId': 'send',
                  'requestBody': {
                    'content': {
                      'application/json': {
                        'schema': {
                          'type': 'object',
                          'title': 'طلب',
                          'properties': {
                            'kind': {
                              'type': 'string',
                              'title': 'نوع',
                              'enum': ['a', 'b'],
                            },
                          },
                        },
                      },
                    },
                  },
                  'responses': {
                    '200': {'description': 'ok'},
                  },
                },
              },
            },
          },
          config: SwaggerToDart(model: ModelConfig(classPrefix: prefix)),
        );
        final p = prefix ?? '';
        expect(result.errors, isEmpty);
        expect(
          result.files['api_client/default_client.dart'],
          contains('required ${p}SendBody requestBody'),
        );
        expect(
          Renaming.instance.renameFile('${p}SendBody'),
          isIn(result.files.keys.map((k) => k.split('/').last.split('.')[0])),
        );
        expect(
          result.files.values.join(),
          contains('${p}SendBodyKind? kind'),
        );
      }
    });

    test('a JSON Schema root titled in Arabic is named by its source', () {
      Iterable<String> keys(String? sourceName) =>
          (toOpenApiJson({
                    r'$schema': 'http://json-schema.org/draft-07/schema#',
                    'title': 'عمر',
                    'type': 'object',
                    'properties': {
                      'name': {'type': 'string'},
                    },
                  }, sourceName: sourceName)['components']['schemas']
                  as Map<String, dynamic>)
              .keys;
      expect(keys('person'), ['Person']);
      expect(keys('عمر'), ['Schema']);
      expect(keys(null), ['Schema']);
    });
  });

  test('enum values without ASCII words are value1, value2, …', () {
    final result = renderSpec(
      _components({
        'Color': {
          'type': 'string',
          'enum': ['أحمر', 'red', 'أزرق'],
        },
      }),
    );
    expect(result.errors, isEmpty);
    final color = result.files['models/color.dart']!;
    expect(color, contains("@JsonValue('أحمر')\n  value1,"));
    expect(color, contains("@JsonValue('red')\n  red,"));
    expect(color, contains("@JsonValue('أزرق')\n  value3;"));
  });

  test('operationIds without ASCII words name methods by method and path', () {
    final client = Fixture(
      Directory('test/fixtures/non_ascii_names'),
    ).render().files['api_client/people_client.dart']!;
    expect(
      client,
      contains('Future<HttpResponse<GetPeopleIdResponse>> getPeopleId('),
    );
    expect(client, contains('Future<HttpResponse> deletePeopleId('));
    expect(client, isNot(contains(' empty(')));
  });
}
