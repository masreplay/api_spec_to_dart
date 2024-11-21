import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_auth_client.g.dart';

@RestApi()
abstract class LecturerAuthClient {
  factory LecturerAuthClient(Dio dio, {String baseUrl}) = _LecturerAuthClient;

  /// null
  @POST('/api/v1/lecturer/auth/login')
  Future<HttpResponse<dynamic>> login(
    @Body() BodyLecturerAuthLogin body,
  );

  /// null
  @POST('/api/v1/lecturer/auth/swagger/login')
  Future<HttpResponse<dynamic>> swaggerLogin(
    @Body() BodyLecturerAuthSwaggerLogin body,
  );

  /// null
  @POST('/api/v1/lecturer/auth/refresh_token')
  Future<HttpResponse<dynamic>> refreshToken();

  /// null
  @POST('/api/v1/lecturer/auth/logout')
  Future<HttpResponse<dynamic>> logout();
}
