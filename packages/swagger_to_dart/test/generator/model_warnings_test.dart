import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

import '../support/fixtures.dart';

/// Runs [body], collecting every line it `print`s instead of letting it
/// reach stdout.
List<String> _capturePrints(void Function() body) {
  final lines = <String>[];
  runZoned(
    body,
    zoneSpecification: ZoneSpecification(
      print: (self, parent, zone, line) => lines.add(line),
    ),
  );
  return lines;
}

void main() {
  test('generic instantiations sharing a class do not warn', () {
    final spec =
        jsonDecode(
              File(
                'test/fixtures/generics_fastapi/openapi.json',
              ).readAsStringSync(),
            )
            as Map<String, dynamic>;

    final lines = _capturePrints(() {
      renderSpec(
        spec,
        config: const SwaggerToDart(
          generationSource: GenerationSource.fastAPI,
          model: ModelConfig(supportGenericArguments: true),
        ),
      );
    });

    expect(lines.where((line) => line.contains('warning')), isEmpty);
  });

  test('two different schemas sharing a title still warn once', () {
    final spec = {
      'openapi': '3.1.0',
      'info': {'title': 'Dup', 'version': '1.0.0'},
      'paths': <String, dynamic>{},
      'components': {
        'schemas': {
          'FooA': {
            'title': 'Shared',
            'type': 'object',
            'properties': {
              'a': {'type': 'string'},
            },
          },
          'FooB': {
            'title': 'Shared',
            'type': 'object',
            'properties': {
              'b': {'type': 'integer'},
            },
          },
        },
      },
    };

    final lines = _capturePrints(() => renderSpec(spec));

    expect(lines.where((line) => line.contains('warning')), hasLength(1));
  });
}
