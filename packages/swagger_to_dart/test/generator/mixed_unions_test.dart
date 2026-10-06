import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

import '../support/fixtures.dart';

/// Generated files for components [schemas] (a `Holder` model wraps
/// [property] when given), an operation taking [parameter] and an operation
/// per [responses] entry (operation id → response schema).
Map<String, String> _render(
  Map<String, dynamic> schemas, {
  Map<String, dynamic>? property,
  Map<String, dynamic>? parameter,
  Map<String, Map<String, dynamic>> responses = const {},
  SwaggerToDart config = const SwaggerToDart(),
}) => renderSpec({
  'openapi': '3.1.0',
  'info': {'title': 't', 'version': '1'},
  'paths': {
    if (parameter != null)
      '/things': {
        'get': {
          'operationId': 'listThings',
          'parameters': [
            {'name': 'filter', 'in': 'query', 'schema': parameter},
          ],
          'responses': {
            '204': {'description': 'ok'},
          },
        },
      },
    for (final MapEntry(key: operationId, value: schema) in responses.entries)
      '/$operationId': {
        'get': {
          'operationId': operationId,
          'responses': {
            '200': {
              'description': 'ok',
              'content': {
                'application/json': {'schema': schema},
              },
            },
          },
        },
      },
  },
  'components': {
    'schemas': {
      ...schemas,
      if (property != null)
        'Holder': {
          'type': 'object',
          'properties': {'value': property},
        },
    },
  },
}, config: config).files;

/// A string | object union component.
const _url = {
  'oneOf': [
    {'type': 'string'},
    {
      'type': 'object',
      'properties': {
        'raw': {'type': 'string'},
      },
    },
  ],
};

const _pet = {
  'type': 'object',
  'required': ['name'],
  'properties': {
    'name': {'type': 'string'},
  },
};

void main() {
  test('oneOf of string and object is a sealed union with kind dispatch', () {
    final files = renderSpec({
      'openapi': '3.1.0',
      'info': {'title': 't', 'version': '1'},
      'paths': <String, dynamic>{},
      'components': {
        'schemas': {
          'Url': {
            'oneOf': [
              {'type': 'string'},
              {
                'type': 'object',
                'properties': {
                  'raw': {'type': 'string'},
                  'host': {
                    'oneOf': [
                      {'type': 'string'},
                      {
                        'type': 'array',
                        'items': {'type': 'string'},
                      },
                    ],
                  },
                },
              },
            ],
          },
        },
      },
    }).files;
    final url = files['models/url.dart']!;
    expect(url, contains('sealed class Url'));
    expect(url, contains('factory Url.fromJson(Object? json)'));
    expect(url, contains('String() => UrlString('));
    expect(
      url,
      contains(
        'Map<String, dynamic>() => UrlObject(UrlObjectValue.fromJson(json))',
      ),
    );
    expect(
      files['models/url_object_value_host.dart'],
      contains('sealed class UrlObjectValueHost'),
    );
  });

  test('a reference and a string: the ref name is the case', () {
    final holder = _render(
      {
        'Pet': {
          'type': 'object',
          'properties': {
            'name': {'type': 'string'},
          },
        },
      },
      property: {
        'oneOf': [
          {r'$ref': '#/components/schemas/Pet'},
          {'type': 'string'},
        ],
      },
    )['models/holder_value.dart']!;

    expect(holder, contains('const factory HolderValue.pet(Pet value)'));
    expect(
      holder,
      contains('Map<String, dynamic>() => HolderValuePet(Pet.fromJson(json))'),
    );
  });

  test('a free-form object component variant is a map arm beside a model', () {
    final holder = _render(
      {
        'Pet': {
          'type': 'object',
          'required': ['name'],
          'properties': {
            'name': {'type': 'string'},
          },
        },
        'Free': {'type': 'object'},
      },
      property: {
        'oneOf': [
          {r'$ref': '#/components/schemas/Pet'},
          {r'$ref': '#/components/schemas/Free'},
          {'type': 'string'},
        ],
      },
    )['models/holder_value.dart']!;

    expect(holder, contains('const factory HolderValue.free(Free value)'));
    // Pet needs `name`; any other map is Free.
    expect(holder, contains("(required: {'name'}, declared: {'name'})"));
    expect(
      holder,
      contains('1 => _\$HolderValueFreeFromJson({\'value\': json})'),
    );
  });

  test('a nullable typedef of an inline object is a model variant', () {
    final files = _render(
      {
        // typedef Wrap = WrapValue?
        'Wrap': {
          'anyOf': [
            {
              'type': 'object',
              'properties': {
                'a': {'type': 'string'},
              },
            },
            {'type': 'null'},
          ],
        },
      },
      property: {
        'oneOf': [
          {r'$ref': '#/components/schemas/Wrap'},
          {'type': 'string'},
        ],
      },
    );

    expect(files['models/wrap.dart'], contains('typedef Wrap = WrapValue?;'));
    // The variant holds the non-null type: it decodes from a map and its
    // `toJson()` needs no null check.
    expect(
      files['models/holder_value.dart'],
      allOf(
        contains('const factory HolderValue.wrap(WrapValue value)'),
        contains('HolderValueWrap(WrapValue.fromJson(json))'),
      ),
    );
  });

  test('object variants pinning one const property are discriminated', () {
    final files = _render(
      {},
      property: {
        'type': 'array',
        'items': {
          'title': 'FormParameter',
          'anyOf': [
            {
              'properties': {
                'key': {'type': 'string'},
                'type': {'type': 'string', 'const': 'text'},
              },
            },
            {
              'properties': {
                'key': {'type': 'string'},
                'type': {'type': 'string', 'const': 'file'},
              },
            },
          ],
        },
      },
    );
    final union = files['models/form_parameter.dart']!;

    expect(files['models/holder.dart'], contains('List<FormParameter>? value'));
    expect(
      union,
      contains('factory FormParameter.fromJson(Map<String, dynamic> json)'),
    );
    expect(union, contains("switch (json['type'])"));
    expect(
      union,
      contains("'file' => FormParameterFile(FormParameterFileValue.fromJson"),
    );
    // The `const` property is optional: without it (or with another value)
    // the keys decide, and each model writes its own value back.
    expect(union, contains('_ => _fromKeys(json)'));
    expect(
      union,
      contains('static FormParameter _fromKeys(Map<String, dynamic> json) {'),
    );
    expect(union, isNot(contains('...value.toJson()')));
  });

  test('integers merge into number; primitive-only mixes stay dynamic', () {
    final files = _render(
      {
        'Amount': {
          'oneOf': [
            {'type': 'integer'},
            {'type': 'number'},
            {
              'type': 'array',
              'items': {'type': 'number'},
            },
            {
              'type': 'array',
              'items': {'type': 'string'},
            },
          ],
        },
      },
      property: {
        'anyOf': [
          {'type': 'string'},
          {'type': 'integer'},
        ],
      },
    );
    final amount = files['models/amount.dart']!;

    expect(amount, contains('num() => AmountNumber(json.toDouble())'));
    expect(amount, isNot(contains('int()')));
    // JSON cannot tell two lists apart: the first is kept.
    expect(amount, contains('const factory Amount.list(List<double> value)'));
    expect(amount, isNot(contains('List<String>')));
    expect(files['models/holder.dart'], contains('dynamic value'));
  });

  test('type arrays with an array or object kind are nullable unions', () {
    final files = _render(
      {},
      property: {
        'type': ['array', 'string', 'null'],
        'items': {'type': 'string'},
      },
    );

    expect(files['models/holder.dart'], contains('HolderValue? value'));
    expect(
      files['models/holder_value.dart'],
      allOf(
        contains('String() => HolderValueString(json)'),
        contains('List()'),
      ),
    );
  });

  test('parameters keep dynamic for mixed unions', () {
    final files = _render(
      {},
      parameter: {
        'oneOf': [
          {'type': 'string'},
          {
            'type': 'array',
            'items': {'type': 'string'},
          },
        ],
      },
    );

    expect(
      files['api_client/default_client.dart'],
      contains("@Query('filter') dynamic filter"),
    );
  });

  test('a mixed union falls back to any JSON', () {
    final url = renderSpec(
      {
        'openapi': '3.1.0',
        'info': {'title': 't', 'version': '1'},
        'paths': <String, dynamic>{},
        'components': {
          'schemas': {
            'Url': {
              'oneOf': [
                {'type': 'string'},
                {
                  'type': 'array',
                  'items': {'type': 'string'},
                },
              ],
            },
          },
        },
      },
      config: const SwaggerToDart(
        model: ModelConfig(unionClassFallbackName: 'fallback'),
      ),
    ).files['models/url.dart']!;

    expect(url, contains('const factory Url.fallback(Object? value)'));
    expect(url, contains('_ => UrlFallback(json)'));
  });

  test('a mixed union request body is dynamic, sent as is', () {
    // retrofit adds a body's toJson() to a map, and a mixed union's JSON is
    // no map; dio encodes the union itself through its toJson().
    final files = renderSpec({
      'openapi': '3.1.0',
      'info': {'title': 't', 'version': '1'},
      'paths': {
        '/urls': {
          'put': {
            'operationId': 'putUrl',
            'requestBody': {
              'content': {
                'application/json': {
                  'schema': {r'$ref': '#/components/schemas/Url'},
                },
              },
            },
            'responses': {
              '204': {'description': 'ok'},
            },
          },
        },
      },
      'components': {
        'schemas': {
          'Url': {
            'oneOf': [
              {'type': 'string'},
              {
                'type': 'array',
                'items': {'type': 'string'},
              },
            ],
          },
        },
      },
    }).files;

    expect(
      files['api_client/default_client.dart'],
      contains('@Body() required dynamic requestBody'),
    );
  });

  test('a type array gives each variant only its own kind\'s keywords', () {
    final object = _render(
      {},
      property: {
        'type': ['object', 'string'],
        'properties': {
          'a': {'type': 'string'},
        },
      },
    )['models/holder_value.dart']!;
    final list = _render(
      {},
      property: {
        'type': ['object', 'array'],
        'items': {'type': 'string'},
        'properties': {
          'a': {'type': 'string'},
        },
      },
    )['models/holder_value.dart']!;

    expect(object, contains('String() => HolderValueString(json)'));
    expect(object, contains('HolderValueObjectValue.fromJson(json)'));
    expect(object, isNot(contains('String.fromJson')));
    expect(
      list,
      contains('const factory HolderValue.list(List<String> value)'),
    );
    expect(list, contains('HolderValueObjectValue.fromJson(json)'));
    expect(
      list,
      contains(
        'const factory HolderValue.object(HolderValueObjectValue value)',
      ),
    );
  });

  test('a list or map response of a mixed union is left untyped', () {
    // retrofit casts list items and map values to Map<String, dynamic>
    // before fromJson, which a string variant does not survive.
    final client = _render(
      {
        'Url': _url,
        'Urls': {
          'type': 'array',
          'items': {r'$ref': '#/components/schemas/Url'},
        },
      },
      responses: {
        'listUrls': {
          'type': 'array',
          'items': {r'$ref': '#/components/schemas/Url'},
        },
        'urlMap': {
          'type': 'object',
          'additionalProperties': {r'$ref': '#/components/schemas/Url'},
        },
        'urlTypedef': {r'$ref': '#/components/schemas/Urls'},
        'url': {r'$ref': '#/components/schemas/Url'},
      },
    )['api_client/default_client.dart']!;

    expect(client, contains('Future<HttpResponse<List<Object?>>> listUrls('));
    expect(
      client,
      contains('Future<HttpResponse<Map<String, Object?>>> urlMap('),
    );
    expect(client, contains('Future<HttpResponse<List<Object?>>> urlTypedef('));
    expect(client, contains('Future<HttpResponse<Url>> url('));
  });

  test('variants of one primitive kind are that type, components typedefs', () {
    final files = _render(
      {
        'Method': {
          'anyOf': [
            {
              'type': 'string',
              'enum': ['GET', 'POST'],
            },
            {'type': 'string'},
          ],
        },
        'Scalar': {
          'oneOf': [
            {'type': 'string'},
            {'type': 'integer'},
          ],
        },
        'Amount': {
          'oneOf': [
            {'type': 'integer'},
            {'type': 'number'},
          ],
        },
      },
      property: {
        'anyOf': [
          {
            'type': 'string',
            'enum': ['a'],
          },
          {'type': 'string'},
        ],
      },
    );

    expect(files['models/holder.dart'], contains('String? value'));
    expect(files['models/method.dart'], contains('typedef Method = String;'));
    expect(files['models/scalar.dart'], contains('typedef Scalar = dynamic;'));
    expect(files['models/amount.dart'], contains('typedef Amount = double;'));
  });

  test('a oneOf and an anyOf of the same variants are one class', () {
    final files = _render(
      {
        'Pet': _pet,
        'Holder': {
          'type': 'object',
          'properties': {
            'a': {
              'type': 'array',
              'items': {
                'title': 'Items',
                'oneOf': [
                  {r'$ref': '#/components/schemas/Pet'},
                  {'type': 'string'},
                ],
              },
            },
            'b': {
              'type': 'array',
              'items': {
                'title': 'Items',
                'anyOf': [
                  {r'$ref': '#/components/schemas/Pet'},
                  {'type': 'string'},
                ],
              },
            },
          },
        },
      },
    );

    expect(files['models/holder.dart'], contains('List<Items>? a'));
    expect(files['models/holder.dart'], contains('List<Items>? b'));
    expect(files.keys, isNot(contains('models/items2.dart')));
  });

  test('a union titled like a core type is named by its references', () {
    final files = _render(
      {'Url': _url, 'Pet': _pet},
      property: {
        'title': 'List',
        'oneOf': [
          {r'$ref': '#/components/schemas/Pet'},
          {r'$ref': '#/components/schemas/Url'},
        ],
      },
    );

    expect(files['models/holder.dart'], contains('PetOrUrlUnion? value'));
    expect(files.keys, isNot(contains('models/list.dart')));
  });

  group('a reference variant is classified by its target', () {
    test('a mixed union takes the arms of its kinds', () {
      final union = _render(
        {'Url': _url},
        property: {
          'oneOf': [
            {r'$ref': '#/components/schemas/Url'},
            {'type': 'boolean'},
          ],
        },
      )['models/holder_value.dart']!;

      expect(union, contains('String() => HolderValueUrl(Url.fromJson(json))'));
      expect(union, contains('bool() => HolderValueBoolean(json)'));
      expect(
        union,
        contains(
          'Map<String, dynamic>() => HolderValueUrl(Url.fromJson(json))',
        ),
      );
    });

    test('a typedef by its type, an alias by its target', () {
      final union = _render(
        {
          'Pet': _pet,
          'Pets': {
            'type': 'array',
            'items': {r'$ref': '#/components/schemas/Pet'},
          },
          'Animal': {r'$ref': '#/components/schemas/Pet'},
        },
        property: {
          'oneOf': [
            {r'$ref': '#/components/schemas/Pets'},
            {r'$ref': '#/components/schemas/Animal'},
            {'type': 'string'},
          ],
        },
      )['models/holder_value.dart']!;

      expect(union, contains('List() => _\$HolderValuePetsFromJson('));
      expect(union, isNot(contains('Pets.fromJson')));
      expect(
        union,
        contains('Map<String, dynamic>() => HolderValueAnimal(Animal.fromJson'),
      );
    });

    test('an enum without a type by its values', () {
      final union = _render(
        {
          'Level': {
            'enum': ['low', 'high'],
          },
        },
        property: {
          'oneOf': [
            {r'$ref': '#/components/schemas/Level'},
            {
              'type': 'array',
              'items': {'type': 'string'},
            },
          ],
        },
      )['models/holder_value.dart']!;

      expect(union, contains('String() => _\$HolderValueLevelFromJson('));
      expect(union, isNot(contains('Map<String, dynamic>()')));
    });

    test('a discriminated mixed union is not spread', () {
      final union = _render(
        {'Url': _url, 'Pet': _pet},
        property: {
          'oneOf': [
            {r'$ref': '#/components/schemas/Url'},
            {r'$ref': '#/components/schemas/Pet'},
          ],
          'discriminator': {'propertyName': 'kind'},
        },
      )['models/url_or_pet_union.dart']!;

      expect(
        union,
        contains("'Url' => UrlOrPetUnionUrl(Url.fromJson(json))"),
      );
      expect(union, contains("{...value.toJson(), 'kind': 'Pet'}"));
      // Url's JSON is not always a map: the tag goes into maps only.
      expect(union, isNot(contains("{...value.toJson(), 'kind': 'Url'}")));
      expect(union, contains("{...json, 'kind': 'Url'}"));
    });
  });
}
