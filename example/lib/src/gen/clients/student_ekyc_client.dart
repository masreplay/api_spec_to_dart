import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_ekyc_client.g.dart';

@RestApi()
abstract class StudentEkycClient {
  factory StudentEkycClient(Dio dio, {String baseUrl}) = _StudentEkycClient;

  /// student_ekyc-download_license
  @GET('/api/v1/student/ekyc/download-license')
  Future<HttpResponse<dynamic>> downloadLicense();

  /// student_ekyc-init
  @POST('/api/v1/student/ekyc/init')
  Future<HttpResponse<dynamic>> init();

  /// student_ekyc-upload_national_id_back_data
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/national_id/back')
  Future<HttpResponse<dynamic>> uploadNationalIdBackData(
    @Body() BodyStudentEkycUploadNationalIdBackData body,
  );

  /// student_ekyc-upload_national_id_front_data
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/national_id/front')
  Future<HttpResponse<dynamic>> uploadNationalIdFrontData(
    @Body() BodyStudentEkycUploadNationalIdFrontData body,
  );

  /// student_ekyc-upload_passport_data
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/passport')
  Future<HttpResponse<dynamic>> uploadPassportData(
    @Body() BodyStudentEkycUploadPassportData body,
  );

  /// student_ekyc-upload_face_data
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/face')
  Future<HttpResponse<dynamic>> uploadFaceData(
    @Body() BodyStudentEkycUploadFaceData body,
  );

  /// student_ekyc-upload_nfc
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/nfc')
  Future<HttpResponse<dynamic>> uploadNfc(
    @Body() BodyStudentEkycUploadNfc body,
  );

  /// student_ekyc-upload_eye_data
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/face/eye')
  Future<HttpResponse<dynamic>> uploadEyeData(
    @Body() BodyStudentEkycUploadEyeData body,
  );

  /// student_ekyc-read_student_ekyc_form
  @GET('/api/v1/student/ekyc/form')
  Future<HttpResponse<dynamic>> readForm();

  /// student_ekyc-upload_student_ekyc_form
  @PATCH('/api/v1/student/ekyc/form')
  Future<HttpResponse<dynamic>> uploadForm(
    @Body() StudentEkycFormDataRequest body,
  );

  /// student_ekyc-submit_ekyc
  @POST('/api/v1/student/ekyc/submit')
  Future<HttpResponse<dynamic>> submitEkyc();
}
