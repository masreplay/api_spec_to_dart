import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_verification_client.g.dart';

@RestApi()
abstract class StudentVerificationClient {
  factory StudentVerificationClient(Dio dio, {String baseUrl}) =
      _StudentVerificationClient;

  /// null
  @POST('/api/v1/student/auth/otp/init')
  Future<HttpResponse<dynamic>> initOtpData();

  /// null
  @POST('/api/v1/student/auth/otp/send')
  Future<HttpResponse<dynamic>> sendOtp(
    @Body() SendOtpByRequestPublic body,
  );

  /// null
  @POST('/api/v1/student/auth/otp/verify')
  Future<HttpResponse<dynamic>> verifyOtp(
    @Body() VerifyOtpRequestPublic body,
  );
}
