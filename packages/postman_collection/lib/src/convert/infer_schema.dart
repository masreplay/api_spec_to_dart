/// An RFC 3339 date-time (`2024-01-01T10:00:00.5Z`, `…+03:00`).
final _dateTime = RegExp(
  r'^(\d{4})-(\d{2})-(\d{2})[Tt](\d{2}):(\d{2}):(\d{2})(\.\d+)?'
  r'([Zz]|[+-](\d{2}):(\d{2}))$',
);

/// Whether [text] is an RFC 3339 date-time with every field in range.
bool _isDateTime(String text) {
  final match = _dateTime.firstMatch(text);
  if (match == null) return false;
  int field(int group) => int.parse(match[group] ?? '0');
  final (year, month, day) = (field(1), field(2), field(3));
  return month >= 1 &&
      month <= 12 &&
      day >= 1 &&
      day <= DateTime.utc(year, month + 1, 0).day &&
      field(4) <= 23 &&
      field(5) <= 59 &&
      field(6) <= 60 &&
      field(9) <= 23 &&
      field(10) <= 59;
}

/// Object keys that are data, not field names: numbers, UUIDs and dates.
final _idLike = RegExp(
  r'^(\d+|[0-9a-fA-F]{8}(-[0-9a-fA-F]{4}){3}-[0-9a-fA-F]{12}|\d{4}-\d{2}-\d{2}([Tt ].*)?)$',
);

/// JSON Schema (2020-12) describing every sample.
///
/// - Only nulls (or no samples) give `{}`; nulls next to other values add
///   `"null"` to the type.
/// - Integers mixed with numbers become `number`.
/// - Strings get `format: date-time` only when every sample is a timestamp.
/// - Array items and object properties merge every sample; nothing is
///   required. Objects whose keys are all ids or dates become maps.
/// - Different JSON kinds become `oneOf`, one variant per kind.
Map<String, Object?> inferJsonSchema(Iterable<Object?> samples) {
  var nullable = false;
  final byKind = <String, List<Object?>>{};
  for (final sample in samples) {
    final kind = switch (sample) {
      null => null,
      bool() => 'boolean',
      num() => 'number',
      List() => 'array',
      Map() => 'object',
      _ => 'string',
    };
    if (kind == null) {
      nullable = true;
    } else {
      (byKind[kind] ??= []).add(sample);
    }
  }
  final variants = [
    for (final MapEntry(:key, :value) in byKind.entries) _schemaOf(key, value),
  ];
  if (variants.isEmpty) return {};
  if (variants.length == 1) {
    final schema = variants.single;
    if (nullable) schema['type'] = [schema['type'], 'null'];
    return schema;
  }
  return {
    'oneOf': [
      ...variants,
      if (nullable) {'type': 'null'},
    ],
  };
}

Map<String, Object?> _schemaOf(String kind, List<Object?> values) =>
    switch (kind) {
      'number' => {
        'type': values.every((v) => v is int) ? 'integer' : 'number',
      },
      'string' => {
        'type': 'string',
        if (values.every((v) => _isDateTime('$v'))) 'format': 'date-time',
      },
      'array' => {
        'type': 'array',
        'items': inferJsonSchema([for (final v in values) ...v as List]),
      },
      'object' => _objectSchema(values.cast<Map<Object?, Object?>>()),
      _ => {'type': kind},
    };

Map<String, Object?> _objectSchema(List<Map<Object?, Object?>> objects) {
  final values = <String, List<Object?>>{};
  for (final object in objects) {
    for (final MapEntry(:key, :value) in object.entries) {
      (values['$key'] ??= []).add(value);
    }
  }
  if (values.isEmpty) return {'type': 'object'};
  if (values.keys.every(_idLike.hasMatch)) {
    return {
      'type': 'object',
      'additionalProperties': inferJsonSchema(values.values.expand((v) => v)),
    };
  }
  return {
    'type': 'object',
    'properties': {
      for (final MapEntry(:key, :value) in values.entries)
        key: inferJsonSchema(value),
    },
  };
}
