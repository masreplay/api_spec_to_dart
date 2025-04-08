import 'package:dio/dio.dart';
import 'package:example/src/gen/clients/clients.dart';

/// My API
/// 0.1.0
/// 2025-04-09 00:44:09.639186
class ApiClient {

ApiClient(this.dio);

final Dio dio;

PingClient get ping{
          return PingClient(dio);
        }
}
