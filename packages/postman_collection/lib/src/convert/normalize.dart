import 'dart:convert';

import 'json_lenient.dart';

/// The `info.schema` of a v2.1 collection.
const v21SchemaUrl =
    'https://schema.getpostman.com/json/collection/v2.1.0/collection.json';

/// Whether [json] is a Postman collection (v1, v2.0, v2.1, or the Postman API
/// `{collection: {...}}` envelope).
bool isPostmanCollection(Object? json) {
  final collection = _unwrap(json);
  return _isV2(collection) || _isV1(collection);
}

/// [json] as a v2.1 collection map (envelope unwrapped, v1/v2.0 upgraded).
Map<String, Object?> normalizePostmanCollection(Object? json) {
  final collection = _unwrap(json);
  if (_isV1(collection)) {
    // String keys throughout, as `jsonDecode` gives: the v1 conversion keeps
    // some sub-maps as they came, and the typed models need string keys.
    return _stringKeyed(_fromV1(collection as Map<Object?, Object?>))
        as Map<String, Object?>;
  }
  if (!_isV2(collection)) {
    throw const FormatException('Not a Postman collection');
  }
  final v21 = _copy(collection) as Map<String, Object?>;
  return {
    ...v21,
    'info': {...v21['info'] as Map<String, Object?>, 'schema': v21SchemaUrl},
  };
}

Object? _unwrap(Object? json) =>
    json is Map && json['collection'] is Map && json['info'] == null
    ? json['collection']
    : json;

bool _isV2(Object? json) =>
    json is Map &&
    json['info'] is Map &&
    (json['item'] is List ||
        '${(json['info'] as Map)['schema']}'.contains('postman'));

bool _isV1(Object? json) =>
    json is Map &&
    json['requests'] is List &&
    (json['order'] is List || json['folders'] is List || json['id'] is String);

/// A deep copy with string keys, where v2.0 auth objects
/// (`{basic: {username, …}}`) become v2.1 attribute arrays.
Object? _copy(Object? node) => switch (node) {
  final Map<Object?, Object?> map => {
    for (final MapEntry(:key, :value) in map.entries)
      '$key': key == 'auth' ? _auth(value) : _copy(value),
  },
  final List<Object?> list => [for (final item in list) _copy(item)],
  _ => node,
};

Object? _stringKeyed(Object? node) => switch (node) {
  final Map<Object?, Object?> map => {
    for (final MapEntry(:key, :value) in map.entries)
      '$key': _stringKeyed(value),
  },
  final List<Object?> list => [for (final item in list) _stringKeyed(item)],
  _ => node,
};

Object? _auth(Object? auth) => switch (auth) {
  final Map<Object?, Object?> map => {
    for (final MapEntry(:key, :value) in map.entries)
      '$key': key != 'type' && value is Map ? _attributes(value) : _copy(value),
  },
  _ => _copy(auth),
};

List<Map<String, Object?>> _attributes(Map<Object?, Object?> attributes) => [
  for (final MapEntry(:key, :value) in attributes.entries)
    {
      'key': '$key',
      'value': _copy(value),
      'type': switch (value) {
        String() => 'string',
        bool() => 'boolean',
        num() => 'number',
        _ => 'any',
      },
    },
];

// v1 → v2.1, field by field from the official v1 schema. Dropped: the
// collection `timestamp`, folder `id`/`collection_id`/`collection`, request
// `time`/`collectionId`/`collection`/`descriptionFormat`, response
// `responseCode.detail`/`rawDataType`/cookie `storeId`.

/// v1 legacy auth helpers (`currentHelper`) by v2.1 auth type.
const _helperTypes = {
  'apikeyAuth': 'apikey',
  'basicAuth': 'basic',
  'bearerAuth': 'bearer',
  'digestAuth': 'digest',
  'hawkAuth': 'hawk',
  'oAuth1': 'oauth1',
  'oAuth2': 'oauth2',
  'ntlmAuth': 'ntlm',
  'awsSigV4': 'awsv4',
  'jwtAuth': 'jwt',
  'asapAuth': 'asap',
  'edgegridAuth': 'edgegrid',
};

/// v1 `dataMode` by v2.1 body mode.
const _bodyModes = {
  'raw': 'raw',
  'urlencoded': 'urlencoded',
  'params': 'formdata',
  'binary': 'file',
  'graphql': 'graphql',
};

Map<String, Object?> _fromV1(Map<Object?, Object?> collection) {
  final requests = _byId(collection['requests']);
  final folders = _byId(collection['folders']);
  final groups = <Object?, Map<String, Object?>>{};
  final placed = <Object?>{};

  List<Map<String, Object?>> children(Object? folderIds, Object? requestIds) {
    final items = <Map<String, Object?>>[];
    for (final id in folderIds is List ? folderIds : const []) {
      if (folders[id] case final folder? when placed.add(id)) {
        final group = groups[id] = _withoutNulls({
          'name': folder['name'] ?? '',
          'description': descriptionText(folder['description']),
          'variable': _variables(folder['variables']),
          'auth': _requestAuth(folder),
          'event': _events(folder),
          'protocolProfileBehavior': folder['protocolProfileBehavior'],
          'item': <Map<String, Object?>>[],
        });
        (group['item']! as List<Map<String, Object?>>).addAll(
          children(folder['folders_order'], folder['order']),
        );
        items.add(group);
      }
    }
    for (final id in requestIds is List ? requestIds : const []) {
      if (requests[id] case final request? when placed.add(id)) {
        items.add(_item(request, requests));
      }
    }
    return items;
  }

  final subfolders = {
    for (final folder in folders.values)
      if (folder['folders_order'] case final List<Object?> ids) ...ids,
  };
  final items = children(
    collection['folders_order'] ??
        folders.keys.where((id) => !subfolders.contains(id)).toList(),
    collection['order'],
  );
  // Folders and requests no order lists are kept (Postman would hide them):
  // folders at the root, requests in their `folder`.
  items.addAll(children(folders.keys.toList(), const []));
  for (final MapEntry(key: id, value: request) in requests.entries) {
    if (placed.add(id)) {
      (groups[request['folder']]?['item'] as List<Map<String, Object?>>? ??
              items)
          .add(_item(request, requests));
    }
  }

  return _withoutNulls({
    'info': _withoutNulls({
      '_postman_id': collection['id'],
      'name': collection['name'] ?? '',
      'description': descriptionText(collection['description']),
      'schema': v21SchemaUrl,
    }),
    'item': items,
    'event': _events(collection),
    'variable': _variables(collection['variables']),
    'auth': _requestAuth(collection),
    'protocolProfileBehavior': collection['protocolProfileBehavior'],
  });
}

Map<Object?, Map<Object?, Object?>> _byId(Object? list) => {
  for (final entry in list is List ? list : const [])
    if (entry is Map && entry['id'] != null) entry['id']: entry,
};

Map<String, Object?> _withoutNulls(Map<String, Object?> map) =>
    map..removeWhere((_, value) => value == null);

Map<String, Object?> _item(
  Map<Object?, Object?> request,
  Map<Object?, Map<Object?, Object?>> requests,
) {
  final responses = [
    for (final response
        in request['responses'] is List
            ? request['responses'] as List
            : const [])
      if (response is Map) response,
  ];
  final order = request['responses_order'] is List
      ? request['responses_order'] as List
      : const [];
  return _withoutNulls({
    'id': request['id'],
    'name': request['name'] ?? '',
    'event': _events(request),
    'variable': _variables(request['variables']),
    'request': _request(request),
    'response': [
      for (final id in order)
        for (final response in responses)
          if (response['id'] == id) _response(response, requests),
      for (final response in responses)
        if (!order.contains(response['id'])) _response(response, requests),
    ],
    'protocolProfileBehavior': request['protocolProfileBehavior'],
  });
}

Map<String, Object?> _request(Map<Object?, Object?> request) => _withoutNulls({
  'method': request['method'] ?? 'GET',
  'header': _headers(request),
  'body': _body(request),
  'url': _url(request),
  'auth': _requestAuth(request),
  'description': descriptionText(request['description']),
});

Object? _url(Map<Object?, Object?> request) {
  final raw = request['url'] is String ? request['url'] : '';
  final query = [
    for (final param
        in request['queryParams'] is List
            ? request['queryParams'] as List
            : const [])
      if (param is Map) _param(param),
  ];
  final variables = [
    for (final variable
        in request['pathVariableData'] is List
            ? request['pathVariableData'] as List
            : const [])
      if (variable is Map) _param(variable),
  ];
  final pathVariables = switch (request['pathVariables']) {
    final String text => _tryDecode(text),
    final value => value,
  };
  if (pathVariables is Map) {
    for (final MapEntry(:key, :value) in pathVariables.entries) {
      if (!variables.any((variable) => variable['key'] == key)) {
        variables.add({'key': key, 'value': value});
      }
    }
  }
  if (query.isEmpty && variables.isEmpty) return raw;
  return {
    'raw': raw,
    if (query.isNotEmpty) 'query': query,
    if (variables.isNotEmpty) 'variable': variables,
  };
}

/// A v1 key/value entry (`enabled`, empty descriptions) in v2.1 form.
Map<String, Object?> _param(Map<Object?, Object?> param) => {
  for (final MapEntry(:key, :value) in param.entries)
    if (key != 'enabled' &&
        key != 'name' &&
        !(key == 'description' && value == ''))
      '$key': value,
  if (param['enabled'] == false) 'disabled': true,
};

List<Map<Object?, Object?>> _headers(Map<Object?, Object?> request) {
  final headers = <Map<Object?, Object?>>[];
  for (final header
      in request['headerData'] is List
          ? request['headerData'] as List
          : const []) {
    if (header is! Map) continue;
    final key = '${header['key'] ?? ''}';
    headers.add({
      ..._param(header),
      if (key.startsWith('//')) ...{
        'key': key.substring(2).trim(),
        'disabled': true,
      },
    });
  }
  for (final header in headerEntries(request['headers'])) {
    if (!headers.any((seen) => seen['key'] == header['key'])) {
      headers.add(header);
    }
  }
  return headers;
}

Map<String, Object?>? _body(Map<Object?, Object?> request) {
  if (request.containsKey('dataMode') && request['dataMode'] == null) {
    return null;
  }
  final data = request['data'];
  final rawModeData = request['rawModeData'];
  final raw = switch (rawModeData) {
    final String raw => raw,
    [final String raw] => raw,
    _ => null,
  };
  final graphql = request['graphqlModeData'];
  var mode = _bodyModes[request['dataMode']];
  if (mode != null) {
    // Explicit dataMode.
  } else if (raw == null && (data is List || rawModeData is List)) {
    mode = 'formdata';
  } else if (raw == null && graphql is Map && graphql.isNotEmpty) {
    mode = 'graphql';
  } else if (raw != null || data is String) {
    mode = 'raw';
  } else {
    return null;
  }
  final params = data is List
      ? data
      : rawModeData is List
      ? rawModeData
      : const [];
  final options = request['dataOptions'];
  return _withoutNulls({
    'mode': mode,
    mode: switch (mode) {
      'raw' => raw ?? (data is String ? data : ''),
      'graphql' => _copy(graphql),
      'file' => {'src': raw},
      _ => [
        for (final param in params)
          if (param is Map && param['key'] != null) _formParam(param),
      ],
    },
    'options': options is Map
        ? {
            for (final MapEntry(:key, :value) in options.entries)
              _bodyModes[key] ?? '$key': _copy(value),
          }
        : null,
    'disabled': request['dataDisabled'] == true ? true : null,
  });
}

Map<String, Object?> _formParam(Map<Object?, Object?> param) {
  final file = param['type'] == 'file' && param['src'] == null;
  return {
    for (final MapEntry(:key, :value) in _param(param).entries)
      if (!(file && key == 'value')) key: value,
    if (file && param['value'] != null) 'src': param['value'],
  };
}

Object? _requestAuth(Map<Object?, Object?> entity) {
  if (entity['auth'] case {'type': String()} && final auth) return _auth(auth);
  final type = _helperTypes[entity['currentHelper']];
  if (type == null) return null;
  final attributes = switch (entity['helperAttributes']) {
    final String text => _tryDecode(text),
    final value => value,
  };
  return {
    'type': type,
    if (attributes is Map)
      type: _attributes({
        for (final MapEntry(:key, :value) in attributes.entries)
          if (key != 'id') key: value,
      }),
  };
}

List<Map<String, Object?>>? _events(Map<Object?, Object?> entity) {
  List<String> lines(Object? exec) => switch (exec) {
    final String text => text.split('\n'),
    final List<Object?> lines => [for (final line in lines) '$line'],
    _ => const [],
  };
  Map<String, Object?> event(String listen, Object? exec) => {
    'listen': listen,
    'script': {'type': 'text/javascript', 'exec': lines(exec)},
  };

  final events = entity['events'];
  if (events is List && events.isNotEmpty) {
    return [
      for (final e in events)
        if (e is Map)
          {
            ...(_copy(e)! as Map<String, Object?>),
            'listen': e['listen'] ?? 'test',
            if (e['script'] case final Map<Object?, Object?> script)
              'script': {
                ...(_copy(script)! as Map<String, Object?>),
                'type': script['type'] ?? 'text/javascript',
                'exec': lines(script['exec']),
              },
          },
    ];
  }
  final result = [
    if (entity['tests'] case final String tests when tests.isNotEmpty)
      event('test', tests),
    if (entity['preRequestScript'] case final String script
        when script.isNotEmpty)
      event('prerequest', script),
  ];
  return result.isEmpty ? null : result;
}

List<Map<String, Object?>>? _variables(Object? list) {
  if (list is! List || list.isEmpty) return null;
  return [
    for (final variable in list)
      if (variable is Map)
        _withoutNulls({
          'key': variable['key'] ?? variable['id'],
          'value': _copy(variable['value']),
          'type': variable['type'] == 'text' ? 'string' : variable['type'],
          'disabled': variable['disabled'] == true ? true : null,
          'description': descriptionText(variable['description']),
        }),
  ];
}

Map<String, Object?> _response(
  Map<Object?, Object?> response,
  Map<Object?, Map<Object?, Object?>> requests,
) {
  final code = response['responseCode'];
  final original = switch (response['request']) {
    final String id when requests[id] != null => requests[id],
    final String text => _tryDecode(text),
    final value => value,
  };
  final headers = [
    for (final header in headerEntries(response['headers'])) _param(header),
  ];
  final mime = response['mime'];
  if (mime is String &&
      mime.isNotEmpty &&
      !headers.any((h) => '${h['key']}'.toLowerCase() == 'content-type')) {
    headers.add({'key': 'Content-Type', 'value': mime});
  }
  return _withoutNulls({
    'id': response['id'],
    'name': response['name'] ?? 'response',
    'originalRequest': original is Map ? _request(original) : null,
    'status': (code is Map ? code['name'] : null) ?? response['status'],
    'code': code is Map && code['code'] is num
        ? (code['code'] as num).toInt()
        : null,
    '_postman_previewlanguage': response['language'],
    'header': headers,
    'cookie': [
      for (final cookie
          in response['cookies'] is List
              ? response['cookies'] as List
              : const [])
        if (cookie is Map)
          _withoutNulls({
            for (final key in const [
              'domain',
              'expires',
              'hostOnly',
              'httpOnly',
              'name',
              'path',
              'secure',
              'session',
              'value',
            ])
              key: cookie[key],
          }),
    ],
    'responseTime': response['time'],
    'timings': response['timings'],
    'body': response['text'],
  });
}

Object? _tryDecode(String text) {
  try {
    return jsonDecode(text);
  } on FormatException {
    return null;
  }
}
