import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_auth_client.g.dart';

@RestApi()
abstract class LecturerAuthClient {
  factory LecturerAuthClient(Dio dio, {String baseUrl}) = _LecturerAuthClient;

  /// lecturer_auth-login
  /// Login
  @FormUrlEncoded()
  @POST('/api/v1/lecturer/auth/login')
  Future<HttpResponse<dynamic>> login({
    @Body() required BodyLecturerAuthLogin body,
  });

  /// lecturer_auth-swagger_login
  /// Swagger Login
  @FormUrlEncoded()
  @POST('/api/v1/lecturer/auth/swagger/login')
  Future<HttpResponse<dynamic>> swaggerLogin({
    @Body() required BodyLecturerAuthSwaggerLogin body,
  });

  /// lecturer_auth-refresh_token
  /// Refresh Token
  @POST('/api/v1/lecturer/auth/refresh_token')
  Future<HttpResponse<dynamic>> refreshToken();

  /// lecturer_auth-logout
  /// Logout
  @POST('/api/v1/lecturer/auth/logout')
  Future<HttpResponse<dynamic>> logout();
}
