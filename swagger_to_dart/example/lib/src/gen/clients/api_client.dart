import 'package:dio/dio.dart';
import 'package:example/src/gen/clients/clients.dart';
import 'package:retrofit/retrofit.dart';

/// My API
/// 0.1.0
/// 2025-04-09 10:36:53.364374
class ApiClient {
  const ApiClient(this.dio, {this.baseUrl, this.errorLogger});

  final String? baseUrl;

  final ParseErrorLogger? errorLogger;

  final Dio dio;

  PingClient get ping {
    return PingClient(dio);
  }
}
