import 'package:freezed_annotation/freezed_annotation.dart';

import 'open_api_components.dart';
import 'open_api_info.dart';
import 'open_api_paths.dart';

part 'open_api.freezed.dart';
part 'open_api.g.dart';

typedef OpenApiPaths =
    Map<String, Map<OpenApiPathMethodEnum, OpenApiPathMethod>>;

@freezed
abstract class OpenApi with _$OpenApi {
  const OpenApi._();

  const factory OpenApi({
    @JsonKey(name: 'openapi') String? openapi,
    @JsonKey(name: 'info') OpenApiInfo? info,
    @JsonKey(name: 'servers') List<OpenApiServer>? servers,
    @JsonKey(name: 'paths') OpenApiPaths? paths,

    /// OpenAPI 3.2 `additionalOperations` (methods such as `PURGE`) by path,
    /// then by method as sent. [OpenApiPaths] keys operations by
    /// [OpenApiPathMethodEnum], which cannot name them, so
    /// [resolveOperations] moves them to this reserved key.
    @JsonKey(name: 'x-additional-operations')
    Map<String, Map<String, OpenApiPathMethod>>? additionalOperations,
    @JsonKey(name: 'components') OpenApiComponents? components,
    @JsonKey(name: 'tags') List<OpenApiTag>? tags,
    Map<String, dynamic>? extraJson,
  }) = _OpenApi;

  factory OpenApi.fromJson(Map<String, dynamic> json) =>
      _$OpenApiFromJson(resolveOperations(json));
}

/// Rewrites `paths` into the shape [OpenApiPaths] parses, returning a new map
/// (operations are shared with the `@Extras` metadata, so [spec] must not
/// change):
/// - a path item keeps only its operations (`summary`, `description`, ...
///   go);
/// - its `additionalOperations` move to `x-additional-operations`, by path
///   ([OpenApi.additionalOperations]);
/// - its `parameters` apply to each operation, whose own parameter with the
///   same `name` and `in` wins, and its `servers` to each operation without
///   its own;
/// - `$ref`s in `parameters`, `requestBody` and `responses` (e.g.
///   `#/components/parameters/PageSize`) are replaced by their targets.
Map<String, dynamic> resolveOperations(Map<String, dynamic> spec) {
  final paths = spec['paths'] as Map<String, dynamic>?;
  if (paths == null) return spec;

  List<Map<String, dynamic>> parameters(Object? list) => [
    for (final p in list as List? ?? const []) _deref(spec, p),
  ];

  Map<String, dynamic> operation(
    Map<String, dynamic> op,
    Map<String, dynamic> item,
  ) {
    final own = parameters(op['parameters']);
    final overridden = {for (final p in own) (p['name'], p['in'])};
    final merged = [
      for (final p in parameters(item['parameters']))
        if (!overridden.contains((p['name'], p['in']))) p,
      ...own,
    ];
    return {
      ...op,
      if (merged.isNotEmpty) 'parameters': merged,
      if (op['servers'] == null && item['servers'] != null)
        'servers': item['servers'],
      if (op['requestBody'] case final body?) 'requestBody': _deref(spec, body),
      if (op['responses'] case final Map<String, dynamic> responses)
        'responses': {
          for (final MapEntry(:key, :value) in responses.entries)
            key: _deref(spec, value),
        },
    };
  }

  final additional = {
    for (final MapEntry(key: path, value: item as Map<String, dynamic>)
        in paths.entries)
      if (item['additionalOperations'] case final Map<String, dynamic> ops
          when ops.isNotEmpty)
        path: {
          for (final MapEntry(:key, :value) in ops.entries)
            key: operation(value as Map<String, dynamic>, item),
        },
  };

  return {
    ...spec,
    'paths': {
      for (final MapEntry(key: path, value: item as Map<String, dynamic>)
          in paths.entries)
        path: {
          for (final MapEntry(:key, :value) in item.entries)
            if (OpenApiPathMethodEnum.values.any((m) => m.name == key))
              key: operation(value as Map<String, dynamic>, item),
        },
    },
    // Only when found: resolving twice must keep the first result.
    if (additional.isNotEmpty) 'x-additional-operations': additional,
  };
}

/// [node], or the target of its local `$ref` (followed through further refs).
dynamic _deref(
  Map<String, dynamic> spec,
  Object? node, [
  Set<String> seen = const {},
]) {
  if (node case {r'$ref': final String ref}) {
    if (seen.contains(ref)) throw FormatException('Circular \$ref $ref');
    Object? target = ref.startsWith('#/') ? spec : null;
    for (final key in ref.split('/').skip(1)) {
      target = target is Map ? target[key] : null;
    }
    if (target == null) throw FormatException('Cannot resolve \$ref $ref');
    return _deref(spec, target, {...seen, ref});
  }
  return node;
}

@freezed
abstract class OpenApiTag with _$OpenApiTag {
  const OpenApiTag._();

  const factory OpenApiTag({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'description') required String? description,
  }) = _OpenApiTag;

  factory OpenApiTag.fromJson(Map<String, dynamic> json) =>
      _$OpenApiTagFromJson(json);
}

@freezed
abstract class OpenApiServer with _$OpenApiServer {
  const OpenApiServer._();

  const factory OpenApiServer({
    /// A URL template: `{name}` stands for one of [variables] (a [Uri]
    /// would percent-encode the braces).
    @JsonKey(name: 'url') required String url,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'variables') Map<String, Map<String, dynamic>>? variables,
  }) = _OpenApiServer;

  factory OpenApiServer.fromJson(Map<String, dynamic> json) =>
      _$OpenApiServerFromJson(json);

  /// [url] with each variable replaced by its `default`.
  String get defaultUrl => url.replaceAllMapped(
    RegExp(r'\{([^}]*)\}'),
    (m) => '${variables?[m[1]]?['default'] ?? m[0]}',
  );
}
