import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_reset_password_client.g.dart';

@RestApi()
abstract class StudentResetPasswordClient {
  factory StudentResetPasswordClient(Dio dio, {String baseUrl}) =
      _StudentResetPasswordClient;

  /// student_reset_password-init_otp_data
  @POST('/api/v1/student/auth/reset-password/init')
  Future<HttpResponse<dynamic>> initOtpData();

  /// student_reset_password-send_otp_by_phone
  @POST('/api/v1/student/auth/reset-password/send-phone-forgot-password')
  Future<HttpResponse<dynamic>> sendOtpByPhone(
    @Queries() SendOtpByPhoneQueries queries,
  );

  /// student_reset_password-verify_phone_otp
  @POST('/api/v1/student/auth/reset-password/verify-phone-otp-forgot-password')
  Future<HttpResponse<dynamic>> verifyPhoneOtp(
    @Queries() VerifyPhoneOtpQueries queries,
  );

  /// student_reset_password-set_password
  @POST('/api/v1/student/auth/reset-password/set-password')
  Future<HttpResponse<dynamic>> setPassword(
    @Queries() SetPasswordQueries queries,
  );

  /// student_reset_password-send_otp_email
  @POST('/api/v1/student/auth/reset-password/send-email-otp-forgot-password')
  Future<HttpResponse<dynamic>> sendOtpEmail(
    @Queries() SendOtpEmailQueries queries,
  );

  /// student_reset_password-verify_email_otp
  @POST('/api/v1/student/auth/reset-password/verify-email-otp-forgot-password')
  Future<HttpResponse<dynamic>> verifyEmailOtp(
    @Queries() VerifyEmailOtpQueries queries,
  );
}
