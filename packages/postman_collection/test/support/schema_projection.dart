import 'package:json_schema/json_schema.dart';

/// [instance] projected onto [schema]: object keys the schema does not define
/// are dropped, walking `$ref`, `oneOf`/`anyOf`/`allOf`, `items` and
/// `properties` in parallel with the instance. Untyped (`{}`) and
/// property-less object schemas keep their value whole. A null property is
/// dropped: a nullable model field cannot tell it from an absent key, and
/// both mean "not set" in a collection (`body: null`, `header: null`).
Object? project(JsonSchema schema, Object? instance) {
  final variants = _matching(schema, instance);
  return switch (instance) {
    Map() when _defines(variants) => {
      for (final MapEntry(:key, :value) in instance.entries)
        if ((value, _property(variants, key as String)) case (
          _?,
          final property?,
        ))
          key: project(property, value),
    },
    List() => [
      for (final e in instance)
        switch (_items(variants)) {
          final items? => project(items, e),
          null => e,
        },
    ],
    _ => instance,
  };
}

/// [output] (a model's `toJson`) without what the model adds to [input]:
/// keys absent from [input] whose value is null or the schema default.
Object? dropAdded(JsonSchema schema, Object? output, Object? input) {
  final variants = _matching(schema, input);
  return switch ((output, input)) {
    (Map output, Map input) => {
      for (final MapEntry(:key, :value) in output.entries)
        if (input.containsKey(key))
          key: switch (_property(variants, key as String)) {
            final property? => dropAdded(property, value, input[key]),
            null => value,
          }
        else if (value != null &&
            value != _property(variants, key as String)?.defaultValue)
          key: value,
    },
    (List output, List input) when output.length == input.length => [
      for (var i = 0; i < output.length; i++)
        switch (_items(variants)) {
          final items? => dropAdded(items, output[i], input[i]),
          null => output[i],
        },
    ],
    _ => output,
  };
}

/// [schema] with `$ref`s resolved, flattened over `allOf` and the
/// `oneOf`/`anyOf` variants [instance] is valid against.
List<JsonSchema> _matching(JsonSchema schema, Object? instance) {
  final resolved = _resolve(schema);
  return [
    resolved,
    for (final s in resolved.allOf) ..._matching(s, instance),
    for (final s in [...resolved.oneOf, ...resolved.anyOf])
      if (s.validate(instance).isValid) ..._matching(s, instance),
  ];
}

JsonSchema _resolve(JsonSchema schema) => switch (schema.ref) {
  final ref? => _resolve(schema.resolvePath(Uri.parse('#${ref.fragment}'))),
  null => schema,
};

bool _defines(List<JsonSchema> variants) =>
    variants.any((s) => s.properties.isNotEmpty);

JsonSchema? _property(List<JsonSchema> variants, String key) =>
    variants.map((s) => s.properties[key]).nonNulls.firstOrNull;

JsonSchema? _items(List<JsonSchema> variants) =>
    variants.map((s) => s.items).nonNulls.firstOrNull;
