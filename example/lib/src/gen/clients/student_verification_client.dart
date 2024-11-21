import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_verification_client.g.dart';

@RestApi()
abstract class StudentVerificationClient {
  factory StudentVerificationClient(Dio dio, {String baseUrl}) =
      _StudentVerificationClient;

  /// student_verification-init_otp_data
  /// Init Otp Data
  @POST('/api/v1/student/auth/otp/init')
  Future<HttpResponse<dynamic>> initOtpData();

  /// student_verification-send_otp
  /// Send Otp
  @POST('/api/v1/student/auth/otp/send')
  Future<HttpResponse<dynamic>> sendOtp({
    @Body() required SendOtpByRequestPublic body,
  });

  /// student_verification-verify_otp
  /// Verify Otp
  @POST('/api/v1/student/auth/otp/verify')
  Future<HttpResponse<dynamic>> verifyOtp({
    @Body() required VerifyOtpRequestPublic body,
  });
}
