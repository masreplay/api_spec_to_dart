import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:postman_collection/postman_collection.dart';

/// Records every request a [Dio] sends as a Postman item, so a collection can
/// be exported from an app's real API calls:
///
/// ```dart
/// final recorder = PostmanRecorder();
/// final dio = Dio()..interceptors.add(recorder);
/// // ... make requests ...
/// jsonEncode(recorder.collection('My API').toJson());
/// ```
class PostmanRecorder extends Interceptor {
  final List<PostmanItem> items = [];

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    items.add(postmanItemFromRequestOptions(options));
    handler.next(options);
  }

  /// The recorded requests as a v2.1 collection named [name].
  PostmanCollection collection(String name) => PostmanCollection(
    info: PostmanInfo(
      name: name,
      schema:
          'https://schema.getpostman.com/json/collection/v2.1.0/collection.json',
    ),
    item: [for (final item in items) PostmanItems.item(item)],
  );
}

/// [options] (method, URL, headers and body) as a Postman item.
///
/// Exported collections get shared, so credentials stay out: URL userinfo
/// (`user:password@`) is dropped, headers whose names look like credentials
/// ([isCredentialName]: `Authorization`, `Cookie`, `X-Api-Key`, ...) are left
/// out, and such query and form values become `<redacted>`. JSON bodies are
/// recorded as sent.
PostmanItem postmanItemFromRequestOptions(RequestOptions options) {
  final uri = _redacted(options.uri);
  return PostmanItem(
    name: '${options.method} ${uri.path}',
    request: PostmanRequest.object(
      PostmanRequestObjectValue(
        method: options.method,
        url: PostmanUrl.object(
          PostmanUrlObjectValue(
            raw: '$uri',
            protocol: uri.scheme,
            host: PostmanHost.list(uri.host.split('.')),
            port: uri.hasPort ? '${uri.port}' : null,
            path: PostmanUrlObjectValuePath.list([
              for (final segment in uri.pathSegments)
                PostmanUrlObjectValuePathListValueItem.string(segment),
            ]),
            query: [
              for (final MapEntry(:key, :value)
                  in uri.queryParametersAll.entries)
                for (final v in value) PostmanQueryParam(key: key, value: v),
            ],
          ),
        ),
        header: PostmanRequestObjectValueHeader.headerList([
          for (final MapEntry(:key, :value) in options.headers.entries)
            if (!isCredentialName(key))
              PostmanHeader(key: key, value: '$value'),
        ]),
        body: _body(options),
      ),
    ),
  );
}

/// Whether a header, query or form field named [name] likely holds a
/// credential.
bool isCredentialName(String name) => RegExp(
  'auth|token|secret|passw|pwd|api[-_]?key|cookie|session|signature|'
  'credential',
  caseSensitive: false,
).hasMatch(name);

const _redactedValue = '<redacted>';

String _value(String key, Object? value) =>
    isCredentialName(key) ? _redactedValue : '$value';

/// [uri] without userinfo and with credential query values redacted.
Uri _redacted(Uri uri) {
  if (uri.userInfo.isNotEmpty) uri = uri.replace(userInfo: '');
  return uri.hasQuery
      ? uri.replace(
          queryParameters: {
            for (final MapEntry(:key, :value) in uri.queryParametersAll.entries)
              key: [for (final v in value) _value(key, v)],
          },
        )
      : uri;
}

PostmanRequestObjectValueBody? _body(
  RequestOptions options,
) => switch (options.data) {
  null => null,
  final FormData data => PostmanRequestObjectValueBody(
    mode: PostmanRequestObjectValueBodyMode.formdata,
    formdata: [
      for (final MapEntry(:key, :value) in data.fields)
        PostmanFormParameter.text(
          PostmanFormParameterTextValue(
            key: key,
            value: _value(key, value),
            type: 'text',
          ),
        ),
      for (final MapEntry(:key, :value) in data.files)
        PostmanFormParameter.file(
          PostmanFormParameterFileValue(
            key: key,
            src: PostmanFormParameterFileValueSrc.string(value.filename ?? key),
            type: 'file',
          ),
        ),
    ],
  ),
  final Map<Object?, Object?> data
      when '${options.contentType}'.startsWith(
        Headers.formUrlEncodedContentType,
      ) =>
    PostmanRequestObjectValueBody(
      mode: PostmanRequestObjectValueBodyMode.urlencoded,
      urlencoded: [
        for (final MapEntry(:key, :value) in data.entries)
          PostmanUrlEncodedParameter(key: '$key', value: _value('$key', value)),
      ],
    ),
  final String data => PostmanRequestObjectValueBody(
    mode: PostmanRequestObjectValueBodyMode.raw,
    raw: data,
  ),
  final data => _json(data),
};

/// [data] as a raw JSON body, or as its `toString()` when it is no JSON:
/// recording never breaks the request.
PostmanRequestObjectValueBody _json(Object data) {
  try {
    return PostmanRequestObjectValueBody(
      mode: PostmanRequestObjectValueBodyMode.raw,
      raw: const JsonEncoder.withIndent('  ').convert(data),
      options: {
        'raw': {'language': 'json'},
      },
    );
  } on Object {
    return PostmanRequestObjectValueBody(
      mode: PostmanRequestObjectValueBodyMode.raw,
      raw: '$data',
    );
  }
}
