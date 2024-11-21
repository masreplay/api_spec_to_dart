import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_auth_client.g.dart';

@RestApi()
abstract class LecturerAuthClient {
  factory LecturerAuthClient(Dio dio, {String baseUrl}) = _LecturerAuthClient;

  /// lecturer_auth-login
  @FormUrlEncoded()
  @POST('/api/v1/lecturer/auth/login')
  Future<HttpResponse<dynamic>> login(
    @Body() BodyLecturerAuthLogin body,
  );

  /// lecturer_auth-swagger_login
  @FormUrlEncoded()
  @POST('/api/v1/lecturer/auth/swagger/login')
  Future<HttpResponse<dynamic>> swaggerLogin(
    @Body() BodyLecturerAuthSwaggerLogin body,
  );

  /// lecturer_auth-refresh_token
  @POST('/api/v1/lecturer/auth/refresh_token')
  Future<HttpResponse<dynamic>> refreshToken();

  /// lecturer_auth-logout
  @POST('/api/v1/lecturer/auth/logout')
  Future<HttpResponse<dynamic>> logout();
}
