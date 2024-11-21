import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'lecturer_profile_client.g.dart';

@RestApi()
abstract class LecturerProfileClient {
  factory LecturerProfileClient(Dio dio, {String baseUrl}) =
      _LecturerProfileClient;

  /// null
  @GET('/api/v1/lecturer/profile/me')
  Future<HttpResponse<dynamic>> get();
}
