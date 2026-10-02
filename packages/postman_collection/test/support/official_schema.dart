import 'dart:convert';
import 'dart:io';

import 'package:json_schema/json_schema.dart';

/// An official schema from the repo's `schemas/` directory. `json_schema`
/// 5.2.2 cannot compile `dependentSchemas` (only checks parameter
/// style/explode combinations), so it is stripped.
JsonSchema officialSchema(String relativePath) {
  Object? strip(Object? node) => switch (node) {
    Map() => {
      for (final MapEntry(:key, :value) in node.entries)
        if (key != 'dependentSchemas') key as String: strip(value),
    },
    List() => [for (final e in node) strip(e)],
    _ => node,
  };
  final file = File('../../schemas/$relativePath');
  return JsonSchema.create(strip(jsonDecode(file.readAsStringSync()))!);
}

void expectValid(JsonSchema schema, Object? json) {
  final result = schema.validate(json);
  if (!result.isValid) {
    throw StateError(
      result.errors
          .take(10)
          .map((e) => '${e.instancePath}: ${e.message}')
          .join('\n'),
    );
  }
}
