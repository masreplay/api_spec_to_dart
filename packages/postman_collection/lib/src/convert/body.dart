import 'dart:convert';

import 'auth.dart';
import 'infer_schema.dart';
import 'json_lenient.dart';
import 'variables.dart';

const _modes = ['raw', 'urlencoded', 'formdata', 'file', 'graphql'];

/// The media type of a Postman body language (`options.raw.language`, a
/// saved response's `_postman_previewlanguage`).
String? languageMediaType(Object? language) =>
    switch ('$language'.toLowerCase()) {
      'json' => 'application/json',
      'xml' => 'application/xml',
      'html' => 'text/html',
      'javascript' => 'application/javascript',
      'text' => 'text/plain',
      _ => null,
    };

/// Whether [mediaType] is JSON (`application/json`, `…/json`, `…+json`).
bool isJsonMediaType(String mediaType) =>
    mediaType.endsWith('/json') || mediaType.endsWith('+json');

/// Adds the raw body [text] named [name] to [content] under [mediaType],
/// sniffed when null (JSON, else [textMediaType]): JSON is parsed leniently
/// (an object when invalid, with a warning) and inferred; other text is a
/// string.
void addRawContent(
  Map<String, MediaContent> content,
  String text, {
  String? mediaType,
  String textMediaType = 'text/plain',
  Map<String, String> variables = const {},
  required String name,
  void Function(String message)? onWarning,
  Secrets secrets = const Secrets.none(),
}) {
  if (text.trim().isEmpty) return;
  final json = mediaType == null || isJsonMediaType(mediaType)
      ? parseLenientJson(text, variables)
      : null;
  mediaType ??= json is Map || json is List
      ? 'application/json'
      : textMediaType;
  if (!isJsonMediaType(mediaType)) {
    _mediaContent(
      content,
      mediaType,
      'text',
      secrets,
    ).add(name, substituteVariables(text, variables));
    return;
  }
  final media = _mediaContent(content, mediaType, 'json', secrets);
  if (json != null) {
    media.add(name, json);
  } else {
    onWarning?.call(
      "body of '$name' is not valid JSON; described as an object",
    );
    media.samples.add(const <String, Object?>{});
  }
}

/// The [kind] content of [mediaType]; a JSON body replaces a file body of
/// the same media type.
MediaContent _mediaContent(
  Map<String, MediaContent> content,
  String mediaType,
  String kind,
  Secrets secrets,
) {
  final existing = content[mediaType];
  if (existing != null && !(kind == 'json' && existing.kind == 'binary')) {
    return existing;
  }
  return content[mediaType] = MediaContent(kind, secrets);
}

/// The media type of the first enabled `Content-Type` header, lower case and
/// without parameters.
String? contentType(Object? headers) {
  for (final header in headerEntries(headers)) {
    if (header case {
      'key': final String key,
      'value': final String value,
    } when header['disabled'] != true && key.toLowerCase() == 'content-type') {
      final type = value.split(';').first.trim().toLowerCase();
      if (type.isNotEmpty) return type;
    }
  }
  return null;
}

/// The request bodies of one operation, merged by media type.
class RequestBodies {
  RequestBodies({this.onWarning, this.secrets = const Secrets.none()});

  final void Function(String message)? onWarning;
  final Secrets secrets;

  final _content = <String, MediaContent>{};

  /// Adds a v2.1 request [body] sent with [headers]; its example is [name].
  void add(
    Object? body, {
    Object? headers,
    Map<String, String> variables = const {},
    required String name,
  }) {
    if (body is! Map || body['disabled'] == true) return;
    final mode =
        body['mode'] ??
        _modes.firstWhere((mode) => body[mode] != null, orElse: () => '');
    switch (mode) {
      case 'raw':
        _raw(body, headers, variables, name);
      case 'urlencoded' || 'formdata':
        _form(mode == 'formdata', body[mode], variables, name);
      case 'file':
        _media(contentType(headers) ?? 'application/octet-stream', 'binary');
      case 'graphql':
        _graphql(body['graphql'], variables, name);
      case final String mode when mode.isNotEmpty:
        onWarning?.call("body mode '$mode' of '$name' is skipped");
    }
  }

  /// The OpenAPI `requestBody`, or null when no request had a body.
  Map<String, Object?>? toJson() => _content.isEmpty
      ? null
      : {
          'content': {
            for (final MapEntry(:key, :value) in _content.entries)
              key: value.toJson(),
          },
        };

  MediaContent _media(String mediaType, String kind) =>
      _mediaContent(_content, mediaType, kind, secrets);

  void _raw(
    Map<Object?, Object?> body,
    Object? headers,
    Map<String, String> variables,
    String name,
  ) {
    if (body['raw'] case final String text) {
      addRawContent(
        _content,
        text,
        mediaType:
            contentType(headers) ??
            languageMediaType(switch (body['options']) {
              {'raw': {'language': final language}} => language,
              _ => null,
            }),
        variables: variables,
        name: name,
        onWarning: onWarning,
        secrets: secrets,
      );
    }
  }

  void _form(
    bool multipart,
    Object? params,
    Map<String, String> variables,
    String name,
  ) {
    final values = <String, List<Object?>>{};
    final files = <String, bool>{};
    final encoding = <String, String>{};
    final descriptions = <String, String>{};
    for (final param in params is List ? params : const []) {
      if (param case {'key': final String key} when key.isNotEmpty) {
        final fieldValues = values[key] ??= [];
        if (multipart && param['type'] == 'file') {
          files[key] = files.containsKey(key) || param['src'] is List;
        } else {
          fieldValues.add(
            _scalar(substituteVariables('${param['value'] ?? ''}', variables)),
          );
        }
        if (param['contentType'] case final String type
            when multipart && type.isNotEmpty) {
          encoding[key] = type;
        }
        if (descriptionText(param['description']) case final text?) {
          descriptions[key] = secrets.redact(text)!;
        }
      }
    }
    if (values.isEmpty) return;
    final media = _media(
      multipart ? 'multipart/form-data' : 'application/x-www-form-urlencoded',
      'form',
    );
    final example = <String, Object?>{};
    for (final MapEntry(:key, value: fieldValues) in values.entries) {
      final samples = media.fields[key] ??= [];
      if (files[key] case final array?) {
        media.files[key] = (media.files[key] ?? false) || array;
      } else {
        final sample = fieldValues.length == 1
            ? fieldValues.single
            : fieldValues;
        samples.add(sample);
        example[key] = sample;
      }
    }
    encoding.forEach(
      (key, type) => media.encoding.putIfAbsent(key, () => type),
    );
    descriptions.forEach(
      (key, text) => media.descriptions.putIfAbsent(key, () => text),
    );
    media.example(name, example);
  }

  void _graphql(Object? graphql, Map<String, String> variables, String name) {
    if (graphql is! Map) return;
    final graphqlVariables = switch (graphql['variables']) {
      final String text when text.trim().isNotEmpty => parseLenientJson(
        text,
        variables,
      ),
      final Map<Object?, Object?> map => map,
      _ => null,
    };
    _media('application/json', 'json').add(name, {
      'query': substituteVariables('${graphql['query'] ?? ''}', variables),
      'variables': ?graphqlVariables,
      if (graphql['operationName'] case final String operation
          when operation.isNotEmpty)
        'operationName': operation,
    });
  }
}

/// [text] decoded when it is a JSON object or array, else null.
Object? _json(String text) {
  try {
    final value = jsonDecode(text);
    return value is Map || value is List ? value : null;
  } on FormatException {
    return null;
  }
}

/// A form value as JSON would read it: numbers and booleans, else the text.
Object? _scalar(String text) {
  try {
    final value = jsonDecode(text);
    if (value is num || value is bool) return value;
  } on FormatException {
    // Not a JSON scalar: keep the text.
  }
  return text;
}

/// One media type of a request or response body: `json` (inferred from
/// samples), `form` (fields), `text` or `binary`.
class MediaContent {
  MediaContent(this.kind, [this.secrets = const Secrets.none()]);

  final String kind;
  final Secrets secrets;
  final samples = <Object?>[];
  final fields = <String, List<Object?>>{};
  final files = <String, bool>{};
  final encoding = <String, String>{};
  final descriptions = <String, String>{};
  final examples = <String, Object?>{};

  void add(String name, Object? sample) {
    samples.add(secrets.withoutSecretKeys(sample));
    example(name, sample);
  }

  /// Keeps one example per distinct value, without credentials, keyed by
  /// [name] (suffixed when taken). A text or number that leaks one is no
  /// example; a text that is JSON is scrubbed as JSON.
  void example(String name, Object? value) {
    final parsed = kind == 'text' && value is String ? _json(value) : null;
    if (parsed == null && (value is String || value is num)) {
      final text = '$value';
      if (kind == 'text' ? secrets.leaksText(text) : secrets.leaks(text)) {
        return;
      }
    }
    var example = secrets.scrub(parsed ?? value);
    if (parsed != null) {
      final text = jsonEncode(example);
      example = text == jsonEncode(parsed) ? value : text;
    }
    final json = jsonEncode(example);
    if (examples.values.any((other) => jsonEncode(other) == json)) return;
    var key = name;
    for (var i = 2; examples.containsKey(key); i++) {
      key = '$name $i';
    }
    examples[key] = example;
  }

  Map<String, Object?> toJson() => {
    'schema': switch (kind) {
      'json' => inferJsonSchema(samples),
      'form' => {
        'type': 'object',
        'properties': {
          for (final MapEntry(:key, :value) in fields.entries)
            key: {
              ...switch (files[key]) {
                final array? => _binary(array: array),
                null => inferJsonSchema(value),
              },
              'description': ?descriptions[key],
            },
        },
      },
      'binary' => _binary(),
      _ => {'type': 'string'},
    },
    if (encoding.isNotEmpty)
      'encoding': {
        for (final MapEntry(:key, :value) in encoding.entries)
          key: {'contentType': value},
      },
    if (kind != 'binary' && examples.isNotEmpty)
      'examples': {
        for (final MapEntry(:key, :value) in examples.entries)
          key: {'value': value},
      },
  };
}

Map<String, Object?> _binary({bool array = false}) {
  const binary = {'type': 'string', 'format': 'binary'};
  return array ? {'type': 'array', 'items': binary} : binary;
}
