import 'package:dio/dio.dart';

/// immediately invoked function expression
Dio getDocumentationDio() {
  final dio = Dio();

  dio.options
    ..baseUrl = 'https://baseurl.com'
    ..sendTimeout = Duration.zero
    ..receiveTimeout = Duration.zero
    ..connectTimeout = Duration.zero;

  return dio;
}
