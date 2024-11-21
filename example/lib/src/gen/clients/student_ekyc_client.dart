import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

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
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/national_id/back')
  Future<HttpResponse<dynamic>> uploadNationalIdBackData(
    @Body() BodyStudentEkycUploadNationalIdBackData body,
  );

  /// null
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/national_id/front')
  Future<HttpResponse<dynamic>> uploadNationalIdFrontData(
    @Body() BodyStudentEkycUploadNationalIdFrontData body,
  );

  /// null
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/passport')
  Future<HttpResponse<dynamic>> uploadPassportData(
    @Body() BodyStudentEkycUploadPassportData body,
  );

  /// null
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/face')
  Future<HttpResponse<dynamic>> uploadFaceData(
    @Body() BodyStudentEkycUploadFaceData body,
  );

  /// null
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/nfc')
  Future<HttpResponse<dynamic>> uploadNfc(
    @Body() BodyStudentEkycUploadNfc body,
  );

  /// null
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/face/eye')
  Future<HttpResponse<dynamic>> uploadEyeData(
    @Body() BodyStudentEkycUploadEyeData body,
  );

  /// null
  @GET('/api/v1/student/ekyc/form')
  Future<HttpResponse<dynamic>> readForm();

  /// null
  @PATCH('/api/v1/student/ekyc/form')
  Future<HttpResponse<dynamic>> uploadForm(
    @Body() StudentEkycFormDataRequest body,
  );

  /// null
  @POST('/api/v1/student/ekyc/submit')
  Future<HttpResponse<dynamic>> submitEkyc();
}
