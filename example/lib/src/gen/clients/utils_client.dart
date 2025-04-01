import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'utils_client.g.dart';

@RestApi()
abstract class UtilsClient {
  factory UtilsClient(Dio dio, {String baseUrl}) = _UtilsClient;

  /// OperationId: utils-health_check
  /// Summery: Health Check
  @GET('/utils/health-check/')
  Future<HttpResponse<bool>> utilsHealthCheck();
}
