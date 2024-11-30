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
  Future<HttpResponse<BaseResponseListVerificationMethodPublic>>
      studentVerificationInitOtpData();

  /// student_verification-send_otp
  /// Send Otp
  @POST('/api/v1/student/auth/otp/send')
  Future<HttpResponse<MessageResponse>> studentVerificationSendOtp({
    @Body() required SendOtpByRequestPublic body,
  });

  /// student_verification-verify_otp
  /// Verify Otp
  @POST('/api/v1/student/auth/otp/verify')
  Future<HttpResponse<MessageResponse>> studentVerificationVerifyOtp({
    @Body() required VerifyOtpRequestPublic body,
  });
}
