import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_ekyc_client.g.dart';

@RestApi()
abstract class StudentEkycClient {
  factory StudentEkycClient(Dio dio, {String baseUrl}) = _StudentEkycClient;

  /// null
  @GET('/api/v1/student/ekyc/download-license')
  Future<HttpResponse<dynamic>> downloadLicense();

  /// null
  @POST('/api/v1/student/ekyc/init')
  Future<HttpResponse<dynamic>> init();

  /// null
  @PATCH('/api/v1/student/ekyc/national_id/back')
  Future<HttpResponse<dynamic>> uploadNationalIdBackData(
    @Body() dynamic body,
  );

  /// null
  @PATCH('/api/v1/student/ekyc/national_id/front')
  Future<HttpResponse<dynamic>> uploadNationalIdFrontData(
    @Body() dynamic body,
  );

  /// null
  @PATCH('/api/v1/student/ekyc/passport')
  Future<HttpResponse<dynamic>> uploadPassportData(
    @Body() dynamic body,
  );

  /// null
  @PATCH('/api/v1/student/ekyc/face')
  Future<HttpResponse<dynamic>> uploadFaceData(
    @Body() dynamic body,
  );

  /// null
  @PATCH('/api/v1/student/ekyc/nfc')
  Future<HttpResponse<dynamic>> uploadNfc(
    @Body() dynamic body,
  );

  /// null
  @PATCH('/api/v1/student/ekyc/face/eye')
  Future<HttpResponse<dynamic>> uploadEyeData(
    @Body() dynamic body,
  );

  /// null
  @GET('/api/v1/student/ekyc/form')
  Future<HttpResponse<dynamic>> readForm();

  /// null
  @PATCH('/api/v1/student/ekyc/form')
  Future<HttpResponse<dynamic>> readForm();

  /// null
  @POST('/api/v1/student/ekyc/submit')
  Future<HttpResponse<dynamic>> submitEkyc();
}
