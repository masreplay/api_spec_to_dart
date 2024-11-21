import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_auth_client.g.dart';

@RestApi()
abstract class StudentAuthClient {
  factory StudentAuthClient(Dio dio, {String baseUrl}) = _StudentAuthClient;

  /// student_auth-login
  /// Login
  @FormUrlEncoded()
  @POST('/api/v1/student/auth/login')
  Future<HttpResponse<StudentAuthResponse>> login({
    @Body() required BodyStudentAuthLogin body,
  });

  /// student_auth-swagger_login
  /// Swagger Login
  @FormUrlEncoded()
  @POST('/api/v1/student/auth/swagger/login')
  Future<HttpResponse<StudentAuthResponse>> swaggerLogin({
    @Body() required BodyStudentAuthSwaggerLogin body,
  });

  /// student_auth-refresh_token
  /// Refresh Token
  @POST('/api/v1/student/auth/refresh_token')
  Future<HttpResponse<StudentAuthResponse?>> refreshToken();

  /// student_auth-logout
  /// Logout
  @POST('/api/v1/student/auth/logout')
  Future<HttpResponse<MessageResponse>> logout();

  /// student_auth-change_temporary_password
  /// Change Temporary Password
  @POST('/api/v1/student/auth/change-temporary-password')
  Future<HttpResponse<MessageResponse>> changeTemporaryPassword({
    @Body() required ChangePasswordRequestPublic body,
  });
}
