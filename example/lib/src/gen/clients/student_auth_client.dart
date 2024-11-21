import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_auth_client.g.dart';

@RestApi()
abstract class StudentAuthClient {
  factory StudentAuthClient(Dio dio, {String baseUrl}) = _StudentAuthClient;

  /// null
  @FormUrlEncoded()
  @POST('/api/v1/student/auth/login')
  Future<HttpResponse<dynamic>> login(
    @Body() BodyStudentAuthLogin body,
  );

  /// null
  @FormUrlEncoded()
  @POST('/api/v1/student/auth/swagger/login')
  Future<HttpResponse<dynamic>> swaggerLogin(
    @Body() BodyStudentAuthSwaggerLogin body,
  );

  /// null
  @POST('/api/v1/student/auth/refresh_token')
  Future<HttpResponse<dynamic>> refreshToken();

  /// null
  @POST('/api/v1/student/auth/logout')
  Future<HttpResponse<dynamic>> logout();

  /// null
  @POST('/api/v1/student/auth/change-temporary-password')
  Future<HttpResponse<dynamic>> changeTemporaryPassword(
    @Body() ChangePasswordRequestPublic body,
  );
}
