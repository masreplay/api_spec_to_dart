import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:postman_collection/postman_collection.dart';

import 'src/dio_recipe.dart';

Future<void> main() async {
  // 1. Record dio requests as a collection (see src/dio_recipe.dart). The
  //    second interceptor answers locally so the example runs offline.
  final recorder = PostmanRecorder();
  final dio = Dio(BaseOptions(baseUrl: 'https://api.example.com/v1'))
    ..interceptors.addAll([
      recorder,
      InterceptorsWrapper(
        onRequest: (options, handler) => handler.resolve(
          Response(requestOptions: options, statusCode: 200, data: {}),
        ),
      ),
    ]);
  await dio.get<void>('/users', queryParameters: {'page': 1});
  await dio.post<void>('/users', data: {'name': 'Ada'});

  final json = jsonDecode(jsonEncode(recorder.collection('Example').toJson()));

  // 2. Parse a collection into the typed models and walk its items.
  final collection = PostmanCollection.fromJson(json as Map<String, dynamic>);
  for (final item in collection.item) {
    switch (item) {
      case PostmanItemsItem(value: PostmanItem(:final name, :final request)):
        final method = switch (request) {
          PostmanRequestObject(:final value) => value.method,
          PostmanRequestString() => 'GET',
        };
        print('$method: $name');
      case PostmanItemsItemGroup(value: PostmanItemGroup(:final name)):
        print('folder $name');
    }
  }

  // 3. Convert it to OpenAPI (feed this to swagger_to_dart for a client).
  final openApi = postmanToOpenApi(json, onWarning: print);
  print(const JsonEncoder.withIndent('  ').convert(openApi['paths']));
}
