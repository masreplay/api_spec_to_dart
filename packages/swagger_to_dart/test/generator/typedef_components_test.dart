import 'dart:async';
import 'dart:io';

import 'package:test/test.dart';

import '../support/fixtures.dart';

void main() {
  test('array, primitive, map and alias components become typedefs', () {
    final files = renderSpec({
      'openapi': '3.1.0',
      'info': {'title': 't', 'version': '1'},
      'paths': <String, dynamic>{},
      'components': {
        'schemas': {
          'Pet': {
            'type': 'object',
            'properties': {
              'name': {'type': 'string'},
            },
          },
          'Pets': {
            'type': 'array',
            'items': {r'$ref': '#/components/schemas/Pet'},
          },
          'Tags': {
            'type': 'object',
            'additionalProperties': {'type': 'string'},
          },
          'PetId': {'type': 'string', 'format': 'uuid'},
          'Animal': {r'$ref': '#/components/schemas/Pet'},
          'Owner': {
            'type': 'object',
            'properties': {
              'pets': {r'$ref': '#/components/schemas/Pets'},
            },
          },
        },
      },
    }).files;
    expect(files['models/pets.dart'], contains('typedef Pets = List<Pet>;'));
    expect(
      files['models/tags.dart'],
      contains('typedef Tags = Map<String, String>;'),
    );
    expect(files['models/pet_id.dart'], contains('typedef PetId = String;'));
    expect(files['models/animal.dart'], contains('typedef Animal = Pet;'));
    expect(files['models/owner.dart'], contains('Pets? pets'));
  });

  test('a free-form object component is a map typedef, not an empty class', () {
    final files = renderSpec({
      'openapi': '3.1.0',
      'info': {'title': 't', 'version': '1'},
      'paths': <String, dynamic>{},
      'components': {
        'schemas': {
          // Postman's protocol-profile-behavior.
          'Behavior': {'type': 'object', 'title': 'Behavior'},
          'Closed': {'type': 'object', 'additionalProperties': false},
          'Item': {
            'type': 'object',
            'properties': {
              'behavior': {r'$ref': '#/components/schemas/Behavior'},
            },
          },
        },
      },
    }).files;

    expect(
      files['models/behavior.dart'],
      contains('typedef Behavior = Map<String, dynamic>;'),
    );
    // No key can hold data: the empty class loses nothing.
    expect(files['models/closed.dart'], contains('class Closed'));
    expect(files['models/item.dart'], contains('Behavior? behavior'));
  });

  test('inline enums of array and map typedefs are named by context', () {
    final files = renderSpec({
      'openapi': '3.1.0',
      'info': {'title': 't', 'version': '1'},
      'paths': <String, dynamic>{},
      'components': {
        'schemas': {
          'Levels': {
            'type': 'array',
            'items': {
              'type': 'string',
              'enum': ['low', 'high'],
            },
          },
          'Codes': {
            'type': 'object',
            'additionalProperties': {
              'type': 'integer',
              'enum': [1, 2],
            },
          },
        },
      },
    }).files;

    expect(
      files['models/levels.dart'],
      contains('typedef Levels = List<LevelsItem>;'),
    );
    expect(files['models/levels_item.dart'], contains('enum LevelsItem'));
    expect(
      files['models/codes.dart'],
      contains('typedef Codes = Map<String, CodesValue>;'),
    );
    expect(files.keys, isNot(contains('models/levels2.dart')));
  });

  test('a typedef reaching itself is cut with Object? and a warning', () {
    final lines = <String>[];
    final files = runZoned(
      () => Fixture(Directory('test/fixtures/recursive_typedefs')).render(),
      zoneSpecification: ZoneSpecification(
        print: (_, _, _, line) => lines.add(line),
      ),
    ).files;

    expect(
      files['models/tree.dart'],
      contains('typedef Tree = List<Object?>;'),
    );
    expect(
      files['models/node.dart'],
      contains('typedef Node = Map<String, Object?>;'),
    );
    // Of A = B, B = List<A>, the reference back to the earlier one is cut.
    expect(files['models/a.dart'], contains('typedef A = B;'));
    expect(files['models/b.dart'], contains('typedef B = List<Object?>;'));
    // A model in between breaks the cycle: nothing to cut.
    expect(
      files['models/forest.dart'],
      contains('typedef Forest = List<Branch>;'),
    );
    expect(lines, hasLength(3));
    expect(lines, everyElement(contains('refers to itself')));
  });
}
