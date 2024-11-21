import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_reset_password_client.g.dart';

@RestApi()
abstract class StudentResetPasswordClient {
  factory StudentResetPasswordClient(Dio dio, {String baseUrl}) =
      _StudentResetPasswordClient;

  /// student_reset_password-init_otp_data
  /// Init Otp Data
  @POST('/api/v1/student/auth/reset-password/init')
  Future<HttpResponse<BaseResponseListVerificationMethodPublic>> initOtpData();

  /// student_reset_password-send_otp_by_phone
  /// Send Otp By Phone
  @POST('/api/v1/student/auth/reset-password/send-phone-forgot-password')
  Future<HttpResponse<MessageResponse>> sendOtpByPhone({
    @Queries() required SendOtpByPhoneQueries queries,
  });

  /// student_reset_password-verify_phone_otp
  /// Verify Phone Otp
  @POST('/api/v1/student/auth/reset-password/verify-phone-otp-forgot-password')
  Future<HttpResponse<MessageResponse>> verifyPhoneOtp({
    @Queries() required VerifyPhoneOtpQueries queries,
  });

  /// student_reset_password-set_password
  /// Set Password
  @POST('/api/v1/student/auth/reset-password/set-password')
  Future<HttpResponse<BaseResponseStr>> setPassword({
    @Queries() required SetPasswordQueries queries,
  });

  /// student_reset_password-send_otp_email
  /// Send Otp Email
  @POST('/api/v1/student/auth/reset-password/send-email-otp-forgot-password')
  Future<HttpResponse<MessageResponse>> sendOtpEmail({
    @Queries() required SendOtpEmailQueries queries,
  });

  /// student_reset_password-verify_email_otp
  /// Verify Email Otp
  @POST('/api/v1/student/auth/reset-password/verify-email-otp-forgot-password')
  Future<HttpResponse<MessageResponse>> verifyEmailOtp({
    @Queries() required VerifyEmailOtpQueries queries,
  });
}
