import 'package:collection/collection.dart';

import '../utils/warning.dart';

const _methods = {'get', 'put', 'post', 'delete', 'options', 'head', 'patch'};

/// Keys of a 2.0 non-body parameter, header or items object that make up
/// its schema in OpenAPI 3.
const _schemaKeys = {
  'type',
  'format',
  'items',
  'default',
  'maximum',
  'exclusiveMaximum',
  'minimum',
  'exclusiveMinimum',
  'maxLength',
  'minLength',
  'pattern',
  'maxItems',
  'minItems',
  'uniqueItems',
  'enum',
  'multipleOf',
  'x-nullable',
};

/// 2.0 OAuth2 flows by their OpenAPI 3 names.
const _flows = {
  'implicit': 'implicit',
  'password': 'password',
  'application': 'clientCredentials',
  'accessCode': 'authorizationCode',
};

/// The OpenAPI 3.0.3 equivalent of the Swagger 2.0 [spec], following
/// swagger2openapi:
/// - `definitions`, `parameters` and `responses` become components, with
///   refs rewritten; definition names that are no valid component key
///   (springfox's `Page«Pet»`) are sanitized and kept as the `title`; body
///   and formData parameters, which OpenAPI 3 has no parameter for, are
///   inlined where they are used;
/// - `in: body` and `in: formData` become the `requestBody` (`type: file`
///   is binary), with media types from `consumes`;
/// - responses get media types from `produces`;
/// - `host`, `basePath` and `schemes` become `servers`;
/// - `securityDefinitions` become `securitySchemes`;
/// - `x-nullable` becomes `nullable`, `collectionFormat` becomes
///   `style`/`explode`, a `discriminator` name a discriminator object.
Map<String, dynamic> swagger2ToOpenApi(Map<String, dynamic> spec) {
  final consumes = _strings(spec['consumes']) ?? const ['application/json'];
  final produces = _strings(spec['produces']) ?? const ['application/json'];
  final globalParameters = _map(spec['parameters']);
  final definitions = _map(spec['definitions']);
  final schemaKeys = _componentKeys(definitions.keys);

  Map? resolve(Object? parameter) => switch (parameter) {
    {r'$ref': final String ref} when ref.startsWith('#/parameters/') =>
      globalParameters[ref.substring('#/parameters/'.length)] as Map?,
    final Map parameter => parameter,
    _ => null,
  };

  Object? parameterOrRef(Object? parameter) => switch (parameter) {
    {r'$ref': final String ref} => {r'$ref': _ref(ref, schemaKeys)},
    final Map parameter => _parameter(parameter, schemaKeys),
    _ => parameter,
  };

  Map<String, dynamic> operation(Map operation, List shared) {
    final own = operation['parameters'] as List? ?? const [];
    final ownResolved = own.map(resolve).nonNulls.toList();
    final overridden = {for (final p in ownResolved) (p['name'], p['in'])};
    // Body and formData parameters, path-level ones unless overridden.
    final payload = [
      for (final p in shared.map(resolve).nonNulls)
        if (_isPayload(p) && !overridden.contains((p['name'], p['in']))) p,
      for (final p in ownResolved)
        if (_isPayload(p)) p,
    ];
    final parameters = [
      for (final p in own)
        if (!_isPayload(resolve(p))) parameterOrRef(p),
    ];
    final body = _requestBody(
      payload,
      _strings(operation['consumes']) ?? consumes,
      schemaKeys,
    );
    final opProduces = _strings(operation['produces']) ?? produces;

    return {
      for (final MapEntry(:key, :value) in operation.entries)
        if (!const {
          'consumes',
          'produces',
          'schemes',
          'parameters',
          'responses',
        }.contains(key))
          '$key': value,
      if (parameters.isNotEmpty) 'parameters': parameters,
      'requestBody': ?body,
      if (operation['responses'] case final Map responses)
        'responses': {
          for (final MapEntry(:key, :value) in responses.entries)
            '$key': '$key'.startsWith('x-')
                ? value
                : _response(value, opProduces, schemaKeys),
        },
    };
  }

  Map<String, dynamic> pathItem(Map item) {
    final shared = item['parameters'] as List? ?? const [];
    final parameters = [
      for (final p in shared)
        if (!_isPayload(resolve(p))) parameterOrRef(p),
    ];
    return {
      for (final MapEntry(:key, :value) in item.entries)
        if (_methods.contains(key) && value is Map)
          '$key': operation(value, shared)
        else if (key != 'parameters')
          '$key': value,
      if (parameters.isNotEmpty) 'parameters': parameters,
    };
  }

  final components = <String, dynamic>{
    'schemas': {
      for (final MapEntry(:key, :value) in definitions.entries)
        schemaKeys[key]!: switch (_schema(value, schemaKeys)) {
          // The original name, for generic-name parsers (`Page«Pet»`).
          final Map schema
              when schemaKeys[key] != key && schema['title'] == null =>
            <String, dynamic>{'title': key, ...schema},
          final schema => schema,
        },
    },
    'parameters': {
      for (final MapEntry(:key, :value) in globalParameters.entries)
        if (value is Map && !_isPayload(value))
          key: _parameter(value, schemaKeys),
    },
    'responses': {
      for (final MapEntry(:key, :value) in _map(spec['responses']).entries)
        key: _response(value, produces, schemaKeys),
    },
    'securitySchemes': {
      for (final MapEntry(:key, :value) in _map(
        spec['securityDefinitions'],
      ).entries)
        if (value is Map) key: _securityScheme(value),
    },
  }..removeWhere((_, value) => (value as Map).isEmpty);

  return {
    'openapi': '3.0.3',
    'info': spec['info'],
    'servers': ?_servers(spec),
    'paths': {
      for (final MapEntry(:key, :value) in _map(spec['paths']).entries)
        key: value is Map ? pathItem(value) : value,
    },
    if (components.isNotEmpty) 'components': components,
    for (final MapEntry(:key, :value) in spec.entries)
      if (const {'security', 'tags', 'externalDocs'}.contains(key) ||
          key.startsWith('x-'))
        key: value,
  };
}

Map<String, dynamic> _map(Object? value) =>
    value is Map<String, dynamic> ? value : const {};

/// The strings of a `consumes`, `produces` or `schemes` list, or null when
/// there are none.
List<String>? _strings(Object? value) =>
    value is List && value.isNotEmpty ? [for (final e in value) '$e'] : null;

bool _isPayload(Map? parameter) =>
    parameter?['in'] == 'body' || parameter?['in'] == 'formData';

/// OpenAPI 3 component keys (`^[A-Za-z0-9._-]+$`) for definition [names]:
/// valid names stay; others get `_` for each other character, and a number
/// when that key is taken (springfox's `Page«Pet»` becomes `Page_Pet_`).
Map<String, String> _componentKeys(Iterable<String> names) {
  final valid = RegExp(r'^[A-Za-z0-9._-]+$');
  final taken = {...names.where(valid.hasMatch)};
  String unique(String base) {
    var key = base;
    for (var i = 2; !taken.add(key); i++) {
      key = '$base$i';
    }
    return key;
  }

  return {
    for (final name in names)
      name: valid.hasMatch(name)
          ? name
          : unique(name.replaceAll(RegExp(r'[^A-Za-z0-9._-]'), '_')),
  };
}

/// [ref] into OpenAPI 3 components; definitions by their [schemaKeys] (the
/// name as written, else percent- and JSON-pointer-decoded). A pointer into
/// a definition (`#/definitions/Page«Pet»/properties/items`) maps its first
/// segment.
String _ref(String ref, Map<String, String> schemaKeys) {
  const definitions = '#/definitions/';
  if (ref.startsWith(definitions)) {
    final pointer = ref.substring(definitions.length);
    String? key(String name) => schemaKeys[name] ?? schemaKeys[_decoded(name)];
    final slash = pointer.indexOf('/');
    final mapped =
        key(pointer) ??
        switch (slash > 0 ? key(pointer.substring(0, slash)) : null) {
          final name? => '$name${pointer.substring(slash)}',
          null => pointer,
        };
    return '#/components/schemas/$mapped';
  }
  for (final (from, to) in const [
    ('#/parameters/', '#/components/parameters/'),
    ('#/responses/', '#/components/responses/'),
  ]) {
    if (ref.startsWith(from)) return '$to${ref.substring(from.length)}';
  }
  return ref;
}

/// A JSON pointer segment of a URI fragment, decoded (`%C2%AB` → `«`,
/// `~1` → `/`).
String _decoded(String segment) {
  try {
    segment = Uri.decodeComponent(segment);
  } on ArgumentError {
    // Not percent-encoded after all.
  } on FormatException {
    // Percent-encoded, but not UTF-8 (`Foo%C2`).
  }
  return segment.replaceAll('~1', '/').replaceAll('~0', '~');
}

/// A 2.0 schema as an OpenAPI 3.0 schema.
Object? _schema(
  Object? node,
  Map<String, String> schemaKeys,
) => switch (node) {
  List() => [for (final e in node) _schema(e, schemaKeys)],
  Map() => {
    for (final MapEntry(:key, :value) in node.entries)
      ...switch (key) {
        r'$ref' when value is String => {r'$ref': _ref(value, schemaKeys)},
        'x-nullable' => {'nullable': value},
        'discriminator' when value is String => {
          'discriminator': {'propertyName': value},
        },
        'type' when value == 'file' => {'type': 'string', 'format': 'binary'},
        // Items of a parameter: nested arrays have no OpenAPI 3 style.
        'collectionFormat' => const <String, dynamic>{},
        'properties' when value is Map => {
          'properties': {
            for (final MapEntry(:key, :value) in value.entries)
              '$key': _schema(value, schemaKeys),
          },
        },
        'example' || 'default' || 'enum' => {'$key': value},
        _ when '$key'.startsWith('x-') => {'$key': value},
        _ => {'$key': _schema(value, schemaKeys)},
      },
  },
  _ => node,
};

/// The schema of a 2.0 non-body parameter, header or items object.
Object? _schemaOf(Map parameter, Map<String, String> schemaKeys) => _schema({
  for (final MapEntry(:key, :value) in parameter.entries)
    if (_schemaKeys.contains(key)) key: value,
}, schemaKeys);

/// A query, header or path parameter.
Map<String, dynamic> _parameter(
  Map parameter,
  Map<String, String> schemaKeys,
) => {
  for (final MapEntry(:key, :value) in parameter.entries)
    if (const {
          'name',
          'in',
          'description',
          'required',
          'allowEmptyValue',
        }.contains(key) ||
        ('$key'.startsWith('x-') && key != 'x-nullable'))
      '$key': value,
  ..._style(parameter),
  'schema': _schemaOf(parameter, schemaKeys),
};

/// `style`/`explode` for an array parameter's `collectionFormat` (default
/// `csv`).
Map<String, dynamic> _style(Map parameter) {
  if (parameter['type'] != 'array') return const {};
  return switch ((parameter['collectionFormat'] ?? 'csv', parameter['in'])) {
    ('csv', 'path' || 'header') => {'style': 'simple', 'explode': false},
    ('csv', _) => {'style': 'form', 'explode': false},
    ('multi', _) => {'style': 'form', 'explode': true},
    ('ssv', 'query') => {'style': 'spaceDelimited', 'explode': false},
    ('pipes', 'query') => {'style': 'pipeDelimited', 'explode': false},
    // tsv, or ssv/pipes outside queries: no OpenAPI 3 style.
    (final format, _) => {'x-collectionFormat': format},
  };
}

/// The `requestBody` for an operation's body or formData [parameters].
Map<String, dynamic>? _requestBody(
  List<Map> parameters,
  List<String> consumes,
  Map<String, String> schemaKeys,
) {
  if (parameters.lastWhereOrNull((p) => p['in'] == 'body') case final body?) {
    return {
      'description': ?body['description'],
      'content': {
        for (final type in consumes)
          type: {'schema': _schema(body['schema'], schemaKeys)},
      },
      if (body['required'] == true) 'required': true,
      for (final MapEntry(:key, :value) in body.entries)
        if ('$key'.startsWith('x-')) '$key': value,
    };
  }

  final form = parameters.where((p) => p['in'] == 'formData').toList();
  if (form.isEmpty) return null;
  // One media type: with both, clients would pick urlencoded and send files
  // as text.
  final type =
      form.any((p) => p['type'] == 'file') ||
          consumes.any((type) => type.startsWith('multipart/form-data'))
      ? 'multipart/form-data'
      : 'application/x-www-form-urlencoded';
  final required = [
    for (final p in form)
      if (p['required'] == true) p['name'],
  ];
  final schema = {
    'type': 'object',
    'properties': {
      for (final p in form)
        '${p['name']}': {
          ...?_schemaOf(p, schemaKeys) as Map<String, dynamic>?,
          'description': ?p['description'],
        },
    },
    if (required.isNotEmpty) 'required': required,
  };
  final encoding = {
    for (final p in form)
      if (p['type'] == 'array') '${p['name']}': _formEncoding(p),
  };
  return {
    'content': {
      type: {'schema': schema, if (encoding.isNotEmpty) 'encoding': encoding},
    },
    if (required.isNotEmpty) 'required': true,
  };
}

/// The encoding of a formData array: its `collectionFormat` (default csv)
/// as a style. tsv has none, so it is sent like csv, with a warning.
Map<String, dynamic> _formEncoding(Map parameter) {
  final style = _style({...parameter, 'in': 'query'});
  if (style['x-collectionFormat'] case final format?) {
    printWarning(
      'formData parameter ${parameter['name']} '
      'uses collectionFormat $format, which OpenAPI 3 cannot express; it is '
      'encoded like csv.',
    );
    return {'style': 'form', 'explode': false};
  }
  return style;
}

/// A response (or a ref to one) with a media type per [produces].
Object? _response(
  Object? response,
  List<String> produces,
  Map<String, String> schemaKeys,
) {
  if (response is! Map) return response;
  if (response[r'$ref'] case final String ref) {
    return {r'$ref': _ref(ref, schemaKeys)};
  }
  final examples = response['examples'] as Map? ?? const {};
  return {
    'description': response['description'] ?? '',
    if (response['headers'] case final Map headers)
      'headers': {
        for (final MapEntry(:key, :value) in headers.entries)
          '$key': {
            'description': ?value['description'],
            'schema': _schemaOf(value as Map, schemaKeys),
          },
      },
    if (response.containsKey('schema'))
      'content': {
        for (final type in produces)
          type: {
            'schema': _schema(response['schema'], schemaKeys),
            if (examples.containsKey(type)) 'example': examples[type],
          },
      },
    for (final MapEntry(:key, :value) in response.entries)
      if ('$key'.startsWith('x-')) '$key': value,
  };
}

List<Map<String, String>>? _servers(Map spec) {
  final basePath = '${spec['basePath'] ?? ''}'.replaceFirst(RegExp(r'/$'), '');
  final host = spec['host'];
  if (host == null) {
    return basePath.isEmpty
        ? null
        : [
            {'url': basePath},
          ];
  }
  final schemes = _strings(spec['schemes']) ?? const [''];
  return [
    for (final scheme in schemes)
      {'url': '${scheme.isEmpty ? '' : '$scheme:'}//$host$basePath'},
  ];
}

Map<String, dynamic> _securityScheme(Map scheme) {
  final extras = {
    for (final MapEntry(:key, :value) in scheme.entries)
      if (key == 'description' || '$key'.startsWith('x-')) '$key': value,
  };
  return switch (scheme['type']) {
    'basic' => {'type': 'http', 'scheme': 'basic', ...extras},
    'apiKey' => {
      'type': 'apiKey',
      'name': scheme['name'],
      'in': scheme['in'],
      ...extras,
    },
    'oauth2' => {
      'type': 'oauth2',
      'flows': {
        _flows[scheme['flow']] ?? '${scheme['flow']}': {
          for (final key in const ['authorizationUrl', 'tokenUrl'])
            key: ?scheme[key],
          'scopes': scheme['scopes'] ?? const <String, dynamic>{},
        },
      },
      ...extras,
    },
    _ => {for (final MapEntry(:key, :value) in scheme.entries) '$key': value},
  };
}
