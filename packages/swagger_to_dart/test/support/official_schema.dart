// test/support/official_schema.dart
import 'dart:convert';
import 'dart:io';
import 'package:json_schema/json_schema.dart';

/// An official schema from the repo's `schemas/` directory, compiled by
/// `json_schema` 5.2.2 after two load-time rewrites that validate the same
/// (the files stay unmodified):
/// - [rewriteDependentSchemas]: 5.2.2 cannot compile `dependentSchemas`
///   (OpenAPI 3.1/3.2 state parameter `style`/`explode`/`example` rules with
///   it), so each `dependentSchemas: {k: S}` becomes
///   `allOf: [{if: {required: [k]}, then: S}]`.
/// - [_wrapRemoteRefs]: 5.2.2 fails on a local ref to a definition that is
///   itself a remote ref (OpenAPI 2.0's `#/definitions/title` is draft-04's
///   `#/properties/title`), so such a remote `$ref` becomes
///   `allOf: [{$ref}]`.
JsonSchema officialSchema(String relativePath) {
  final file = File('../../schemas/$relativePath');
  return JsonSchema.create(
    rewriteDependentSchemas(
      _wrapRemoteRefs(jsonDecode(file.readAsStringSync())),
    )!,
  );
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

/// [node] with every remote `$ref` that is alone in its object wrapped in an
/// `allOf`.
Object? _wrapRemoteRefs(Object? node) => switch (node) {
  {r'$ref': final String ref} when node.length == 1 && ref.startsWith('http') =>
    {
      'allOf': [node],
    },
  Map() => {
    for (final MapEntry(:key, :value) in node.entries)
      key as String: _wrapRemoteRefs(value),
  },
  List() => [for (final e in node) _wrapRemoteRefs(e)],
  _ => node,
};

/// `dependentSchemas` (unsupported by json_schema 5.2.2) rewritten to the
/// equivalent `if: {required: [k]}, then: S`, with S moved under `$defs` so
/// JSON pointers into it keep resolving.
Object? rewriteDependentSchemas(Object? root) {
  final moved = <String, String>{}; // old pointer prefix -> new prefix
  Object? walk(Object? node, String path) {
    if (node is List) {
      return [for (var i = 0; i < node.length; i++) walk(node[i], '$path/$i')];
    }
    if (node is! Map) return node;
    final out = <String, Object?>{};
    for (final MapEntry(:key, :value) in node.entries) {
      if (key == 'dependentSchemas') continue;
      out[key as String] = walk(value, '$path/${_escape(key)}');
    }
    if (node['dependentSchemas'] case final Map deps) {
      final defs = Map<String, Object?>.from((out[r'$defs'] as Map?) ?? {});
      final conditions = <Object?>[];
      for (final MapEntry(:key, :value) in deps.entries) {
        final name = '__dependent_$key';
        moved['$path/dependentSchemas/${_escape(key as String)}'] =
            '$path/\$defs/$name';
        defs[name] = walk(value, '$path/\$defs/$name');
        conditions.add({
          'if': {
            'required': [key],
          },
          'then': {r'$ref': '#$path/\$defs/$name'},
        });
      }
      out[r'$defs'] = defs;
      out['allOf'] = [...?(out['allOf'] as List?), ...conditions];
    }
    return out;
  }

  Object? fixRefs(Object? node) => switch (node) {
    Map() => {
      for (final MapEntry(:key, :value) in node.entries)
        key as String: key == r'$ref' && value is String
            ? _move(value, moved)
            : fixRefs(value),
    },
    List() => [for (final e in node) fixRefs(e)],
    _ => node,
  };

  return fixRefs(walk(root, ''));
}

String _escape(String key) => key.replaceAll('~', '~0').replaceAll('/', '~1');

String _move(String ref, Map<String, String> moved) {
  for (final MapEntry(:key, :value) in moved.entries) {
    if (ref == '#$key' || ref.startsWith('#$key/')) {
      return '#$value${ref.substring(key.length + 1)}';
    }
  }
  return ref;
}
