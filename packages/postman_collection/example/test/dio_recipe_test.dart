import 'package:dio/dio.dart';
import 'package:example/src/dio_recipe.dart';
import 'package:postman_collection/postman_collection.dart';
import 'package:test/test.dart';

PostmanRequestObjectValue _request(RequestOptions options) =>
    switch (postmanItemFromRequestOptions(options).request) {
      PostmanRequestObject(:final value) => value,
      PostmanRequestString() => throw StateError('string request'),
    };

void main() {
  test('a body JSON cannot encode is recorded as its string', () {
    final object = Object();
    final body = _request(
      RequestOptions(path: 'https://api.example.com/x', data: [object]),
    ).body!;
    expect(body.mode, PostmanRequestObjectValueBodyMode.raw);
    expect(body.raw, '${[object]}');
  });

  test('a form-urlencoded map is recorded as urlencoded', () {
    final body = _request(
      RequestOptions(
        path: 'https://api.example.com/login',
        method: 'POST',
        contentType: Headers.formUrlEncodedContentType,
        data: {'user': 'ada', 'remember': true},
      ),
    ).body!;
    expect(body.mode, PostmanRequestObjectValueBodyMode.urlencoded);
    expect(body.urlencoded, const [
      PostmanUrlEncodedParameter(key: 'user', value: 'ada'),
      PostmanUrlEncodedParameter(key: 'remember', value: 'true'),
    ]);
  });

  test('credential headers are left out', () {
    final request = _request(
      RequestOptions(
        path: 'https://api.example.com/x',
        headers: {
          'Authorization': 'a',
          'Proxy-Authorization': 'b',
          'Cookie': 'c',
          'X-Api-Key': 'd',
          'api-key': 'e',
          'X-Auth-Token': 'f',
          'Accept-Language': 'en',
        },
      ),
    );
    final header = request.header! as PostmanRequestObjectValueHeaderHeaderList;
    expect(header.value.map((h) => h.key), ['Accept-Language']);
  });

  test('credential query values are redacted, in the raw URL too', () {
    final url =
        _request(
              RequestOptions(
                path: 'https://api.example.com/x',
                queryParameters: {'page': '2', 'access_token': 's3cr3t'},
              ),
            ).url!
            as PostmanUrlObject;
    expect(url.value.query, const [
      PostmanQueryParam(key: 'page', value: '2'),
      PostmanQueryParam(key: 'access_token', value: '<redacted>'),
    ]);
    expect(url.value.raw, isNot(contains('s3cr3t')));
  });

  test('URL userinfo is not recorded', () {
    final url =
        _request(
              RequestOptions(
                path: 'https://user:SECRET-pass@api.example.com/x',
              ),
            ).url!
            as PostmanUrlObject;
    expect(url.value.raw, 'https://api.example.com/x');
  });
}
