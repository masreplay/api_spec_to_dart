import 'package:postman_collection/convert.dart';
import 'package:test/test.dart';

void main() {
  test('object samples: union of keys, nothing required, nulls widen', () {
    expect(
      inferJsonSchema([
        {'id': 1, 'name': 'a', 'tags': []},
        {'id': 2.5, 'name': null, 'extra': true},
      ]),
      {
        'type': 'object',
        'properties': {
          'id': {'type': 'number'},
          'name': {
            'type': ['string', 'null'],
          },
          'tags': {'type': 'array', 'items': {}},
          'extra': {'type': 'boolean'},
        },
      },
    );
  });

  test('date-time only when every sample is an ISO timestamp', () {
    expect(inferJsonSchema(['2024-01-01T10:00:00Z']), {
      'type': 'string',
      'format': 'date-time',
    });
    expect(inferJsonSchema(['2024-01-01']), {'type': 'string'});
    expect(
      inferJsonSchema([
        '2024-01-01t10:00:00.123456+03:00',
        '2016-12-31T23:59:60z',
        '2024-02-29T00:00:00-12:30',
      ]),
      {'type': 'string', 'format': 'date-time'},
    );
    expect(inferJsonSchema(['2024-01-01T10:00:00Z', 'soon']), {
      'type': 'string',
    });
  });

  test('date-time follows RFC 3339: seconds, offset, T and valid ranges', () {
    for (final notDateTime in [
      '2024-01-01 10:00:00Z',
      '2024-01-01T10:00Z',
      '2024-01-01T10:00:00',
      '2024-02-30T10:00:00Z',
      '2023-02-29T10:00:00Z',
      '2024-13-01T10:00:00Z',
      '2024-01-01T24:00:00Z',
      '2024-01-01T10:60:00Z',
      '2024-01-01T10:00:61Z',
      '2024-01-01T10:00:00+24:00',
    ]) {
      expect(inferJsonSchema([notDateTime]), {
        'type': 'string',
      }, reason: notDateTime);
    }
  });

  test('different kinds become oneOf', () {
    expect(
      inferJsonSchema([
        'a',
        {'x': 1},
      ]),
      {
        'oneOf': [
          {'type': 'string'},
          {
            'type': 'object',
            'properties': {
              'x': {'type': 'integer'},
            },
          },
        ],
      },
    );
  });

  test('id-like keys become a map', () {
    expect(
      inferJsonSchema([
        {
          '1': {'a': 1},
          '2': {'a': 2},
        },
      ]),
      {
        'type': 'object',
        'additionalProperties': {
          'type': 'object',
          'properties': {
            'a': {'type': 'integer'},
          },
        },
      },
    );
    expect(
      inferJsonSchema([
        {'3fa85f64-5717-4562-b3fc-2c963f66afa6': 1, '2024-01-01': 2.5},
      ]),
      {
        'type': 'object',
        'additionalProperties': {'type': 'number'},
      },
    );
    expect(
      inferJsonSchema([
        {'1': true, 'name': false},
      ]),
      {
        'type': 'object',
        'properties': {
          '1': {'type': 'boolean'},
          'name': {'type': 'boolean'},
        },
      },
    );
  });

  test('null only is any; no samples is any', () {
    expect(inferJsonSchema([null, null]), <String, Object?>{});
    expect(inferJsonSchema([]), <String, Object?>{});
  });

  test('scalars map directly; integers mixed with numbers become number', () {
    expect(inferJsonSchema([true, false]), {'type': 'boolean'});
    expect(inferJsonSchema([1, 2]), {'type': 'integer'});
    expect(inferJsonSchema([1, 2.5]), {'type': 'number'});
  });

  test('null alongside different kinds adds a null variant', () {
    expect(inferJsonSchema([1, 'a', null]), {
      'oneOf': [
        {'type': 'integer'},
        {'type': 'string'},
        {'type': 'null'},
      ],
    });
  });

  test('array items merge every element of every sample', () {
    expect(
      inferJsonSchema([
        [
          {'a': 1},
        ],
        [
          {'b': 'x'},
          {'a': null},
        ],
        [],
      ]),
      {
        'type': 'array',
        'items': {
          'type': 'object',
          'properties': {
            'a': {
              'type': ['integer', 'null'],
            },
            'b': {'type': 'string'},
          },
        },
      },
    );
  });

  test('an empty object has no properties', () {
    expect(inferJsonSchema([{}]), {'type': 'object'});
  });
}
