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
}
