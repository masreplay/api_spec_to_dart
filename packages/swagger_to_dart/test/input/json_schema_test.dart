import 'dart:convert';
import 'dart:io';

import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

import '../support/fixtures.dart';

Map<String, dynamic> _schemas(
  Map<String, dynamic> document, {
  String? sourceName,
}) =>
    toOpenApiJson(document, sourceName: sourceName)['components']['schemas']
        as Map<String, dynamic>;

void main() {
  test('is an OpenAPI 3.1 document without paths', () {
    final spec = toOpenApiJson({
      r'$schema': 'http://json-schema.org/draft-07/schema#',
      'title': 'Pet',
      'type': 'object',
    });

    expect(spec['openapi'], '3.1.0');
    expect(spec['info'], {'title': 'Pet', 'version': '1.0.0'});
    expect(spec, isNot(contains('paths')));
  });

  test(r'definitions (draft-07) and $defs (2020-12) become schemas', () {
    expect(
      _schemas({
        'definitions': {
          'a': {'type': 'string'},
        },
        r'$defs': {
          'b': {'type': 'integer'},
        },
      }),
      {
        'a': {'type': 'string'},
        'b': {'type': 'integer'},
      },
    );
  });

  group('the root', () {
    const root = {
      r'$schema': 'http://json-schema.org/draft-07/schema#',
      'type': 'object',
      'properties': {
        'name': {'type': 'string'},
      },
    };

    test('is named by its title', () {
      final schemas = _schemas({...root, 'title': 'Pet Store'});

      expect(schemas.keys, ['PetStore']);
      expect(schemas['PetStore'], {
        'type': 'object',
        'properties': {
          'name': {'type': 'string'},
        },
      });
    });

    test('is named by the source name without a title', () {
      expect(_schemas(root, sourceName: 'collection').keys, ['Collection']);
    });

    test('does not replace a definition of the same name', () {
      expect(
        _schemas({
          ...root,
          'title': 'Pet',
          'definitions': {
            'Pet': {'type': 'string'},
          },
        }).keys,
        ['Pet', 'Pet2'],
      );
    });

    test('is no component when it only holds definitions', () {
      expect(
        _schemas({
          r'$schema': 'http://json-schema.org/draft-07/schema#',
          'title': 'Library',
          'description': 'Shared definitions.',
          'definitions': {
            'a': {'type': 'string'},
          },
        }).keys,
        ['a'],
      );
    });
  });

  test(r'#/definitions, #/$defs and # refs point at the schemas', () {
    final schemas = _schemas({
      'title': 'Tree',
      'type': 'object',
      'properties': {
        'a': {r'$ref': '#/definitions/a'},
        'b': {r'$ref': r'#/$defs/b'},
        'children': {
          'type': 'array',
          'items': {r'$ref': '#'},
        },
        'other': {r'$ref': 'other.json#/x'},
      },
      'definitions': {
        'a': {
          'anyOf': [
            {r'$ref': r'#/$defs/b'},
            {'type': 'null'},
          ],
        },
      },
      r'$defs': {
        'b': {'type': 'string'},
      },
    });

    expect(schemas['Tree']['properties'], {
      'a': {r'$ref': '#/components/schemas/a'},
      'b': {r'$ref': '#/components/schemas/b'},
      'children': {
        'type': 'array',
        'items': {r'$ref': '#/components/schemas/Tree'},
      },
      'other': {r'$ref': 'other.json#/x'},
    });
    expect(schemas['a'], {
      'anyOf': [
        {r'$ref': '#/components/schemas/b'},
        {'type': 'null'},
      ],
    });
  });

  test('definition titles go (definitions are named by key), nested stay', () {
    final schemas = _schemas({
      'definitions': {
        'auth-attribute': {
          'title': 'Auth',
          'type': 'object',
          'properties': {
            'key': {'title': 'Key', 'type': 'string'},
            'title': {'type': 'string'},
          },
        },
      },
    });

    expect(schemas['auth-attribute'], {
      'type': 'object',
      'properties': {
        'key': {'title': 'Key', 'type': 'string'},
        'title': {'type': 'string'},
      },
    });
  });

  test(r'$id, $schema and draft-04 id keywords go; id properties stay', () {
    final schemas = _schemas({
      'id': 'http://example.com/root.json',
      r'$schema': 'http://json-schema.org/draft-04/schema#',
      'definitions': {
        'event': {
          r'$schema': 'http://json-schema.org/draft-07/schema#',
          r'$id': '#/definitions/event',
          'id': 'event',
          'type': 'object',
          'required': ['id'],
          'properties': {
            'id': {'id': 'nested', 'type': 'string'},
            r'$id': {'type': 'string'},
          },
          'default': {'id': 'e1', r'$schema': 'kept: data, not a keyword'},
        },
      },
    });

    expect(schemas['event'], {
      'type': 'object',
      'required': ['id'],
      'properties': {
        'id': {'type': 'string'},
        r'$id': {'type': 'string'},
      },
      'default': {'id': 'e1', r'$schema': 'kept: data, not a keyword'},
    });
  });

  test('the official Postman v2.1.0 schema renders', () {
    final document = jsonDecode(
      File('../../schemas/postman/v2.1.0/collection.json').readAsStringSync(),
    );

    final result = renderSpec(
      toOpenApiJson(document, sourceName: 'collection'),
    );

    expect(result.errors, isEmpty);
    expect(result.files, contains('models/collection.dart'));
  });
}
