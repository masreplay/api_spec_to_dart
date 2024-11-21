import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'lecturer_ids_client.g.dart';

@RestApi()
abstract class LecturerIdsClient {
  factory LecturerIdsClient(Dio dio, {String baseUrl}) = _LecturerIdsClient;

  /// null
  @GET('/api/v1/lecturer/ids/me')
  Future<HttpResponse<dynamic>> getEmployeeIdentificationCards();
}
