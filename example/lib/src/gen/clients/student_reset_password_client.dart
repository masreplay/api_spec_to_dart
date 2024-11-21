import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_reset_password_client.g.dart';

@RestApi()
abstract class StudentResetPasswordClient {
  factory StudentResetPasswordClient(Dio dio, {String baseUrl}) =
      _StudentResetPasswordClient;

  /// null
  @POST('/api/v1/student/auth/reset-password/init')
  Future<HttpResponse<dynamic>> initOtpData();

  /// null
  @POST('/api/v1/student/auth/reset-password/send-phone-forgot-password')
  Future<HttpResponse<dynamic>> sendOtpByPhone(
    @Queries() SendOtpByPhoneQueries queries,
  );

  /// null
  @POST('/api/v1/student/auth/reset-password/verify-phone-otp-forgot-password')
  Future<HttpResponse<dynamic>> verifyPhoneOtp(
    @Queries() VerifyPhoneOtpQueries queries,
  );

  /// null
  @POST('/api/v1/student/auth/reset-password/set-password')
  Future<HttpResponse<dynamic>> setPassword(
    @Queries() SetPasswordQueries queries,
  );

  /// null
  @POST('/api/v1/student/auth/reset-password/send-email-otp-forgot-password')
  Future<HttpResponse<dynamic>> sendOtpEmail(
    @Queries() SendOtpEmailQueries queries,
  );

  /// null
  @POST('/api/v1/student/auth/reset-password/verify-email-otp-forgot-password')
  Future<HttpResponse<dynamic>> verifyEmailOtp(
    @Queries() VerifyEmailOtpQueries queries,
  );
}
