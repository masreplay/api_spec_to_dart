import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'ping_client.g.dart';

@RestApi()
abstract class PingClient {
  factory PingClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _PingClient;

  /// OperationId: ping-ping
  /// Summery: Ping
  /// Description: Ping the server.
  @GET('/ping')
  Future<HttpResponse> pingPing();
}
