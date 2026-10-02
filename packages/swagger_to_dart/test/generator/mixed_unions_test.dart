import 'package:swagger_to_dart/swagger_to_dart.dart';
import 'package:test/test.dart';

import '../support/fixtures.dart';

/// Generated files for components [schemas] (a `Holder` model wraps
/// [property] when given) and an operation taking [parameter].
Map<String, String> _render(
  Map<String, dynamic> schemas, {
  Map<String, dynamic>? property,
  Map<String, dynamic>? parameter,
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
}).files;

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
    expect(union, contains("{...value.toJson(), 'type': 'text'}"));
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
}
