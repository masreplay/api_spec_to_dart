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

/// [options] (method, URL, headers and body) as a Postman item. The
/// `Authorization` header is left out: exported collections get shared.
PostmanItem postmanItemFromRequestOptions(RequestOptions options) {
  final uri = options.uri;
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
            if (key.toLowerCase() != 'authorization')
              PostmanHeader(key: key, value: '$value'),
        ]),
        body: _body(options.data),
      ),
    ),
  );
}

PostmanRequestObjectValueBody? _body(Object? data) => switch (data) {
  null => null,
  FormData() => PostmanRequestObjectValueBody(
    mode: PostmanRequestObjectValueBodyMode.formdata,
    formdata: [
      for (final MapEntry(:key, :value) in data.fields)
        PostmanFormParameter.text(
          PostmanFormParameterTextValue(key: key, value: value, type: 'text'),
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
  String() => PostmanRequestObjectValueBody(
    mode: PostmanRequestObjectValueBodyMode.raw,
    raw: data,
  ),
  _ => PostmanRequestObjectValueBody(
    mode: PostmanRequestObjectValueBodyMode.raw,
    raw: const JsonEncoder.withIndent('  ').convert(data),
    options: {
      'raw': {'language': 'json'},
    },
  ),
};
