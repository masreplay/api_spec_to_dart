import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'dev_client.g.dart';

@RestApi()
abstract class DevClient {
  factory DevClient(Dio dio, {String baseUrl}) = _DevClient;

  /// null
  @GET('/dev/sentry-debug')
  Future<HttpResponse<dynamic>> triggerError();

  /// null
  @GET('/dev/s3/{file_path}')
  Future<HttpResponse<dynamic>> proxyToMinio();
}
