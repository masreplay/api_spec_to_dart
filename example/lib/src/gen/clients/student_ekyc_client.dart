import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_ekyc_client.g.dart';

@RestApi()
abstract class StudentEkycClient {
  factory StudentEkycClient(Dio dio, {String baseUrl}) = _StudentEkycClient;

  /// student_ekyc-download_license
  /// Download License
  @GET('/api/v1/student/ekyc/download-license')
  Future<HttpResponse<dynamic>> downloadLicense();

  /// student_ekyc-init
  /// Init
  @POST('/api/v1/student/ekyc/init')
  Future<HttpResponse<dynamic>> init();

  /// student_ekyc-upload_national_id_back_data
  /// Upload National Id Back Data
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/national_id/back')
  Future<HttpResponse<dynamic>> uploadNationalIdBackData({
    @Body() required BodyStudentEkycUploadNationalIdBackData body,
  });

  /// student_ekyc-upload_national_id_front_data
  /// Upload National Id Front Data
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/national_id/front')
  Future<HttpResponse<dynamic>> uploadNationalIdFrontData({
    @Body() required BodyStudentEkycUploadNationalIdFrontData body,
  });

  /// student_ekyc-upload_passport_data
  /// Upload Passport Data
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/passport')
  Future<HttpResponse<dynamic>> uploadPassportData({
    @Body() required BodyStudentEkycUploadPassportData body,
  });

  /// student_ekyc-upload_face_data
  /// Upload Face Data
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/face')
  Future<HttpResponse<dynamic>> uploadFaceData({
    @Body() required BodyStudentEkycUploadFaceData body,
  });

  /// student_ekyc-upload_nfc
  /// Upload Nfc
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/nfc')
  Future<HttpResponse<dynamic>> uploadNfc({
    @Body() required BodyStudentEkycUploadNfc body,
  });

  /// student_ekyc-upload_eye_data
  /// Upload Eye Data
  @MultiPart()
  @PATCH('/api/v1/student/ekyc/face/eye')
  Future<HttpResponse<dynamic>> uploadEyeData({
    @Body() required BodyStudentEkycUploadEyeData body,
  });

  /// student_ekyc-read_student_ekyc_form
  /// Read Student Ekyc Form
  @GET('/api/v1/student/ekyc/form')
  Future<HttpResponse<dynamic>> readForm();

  /// student_ekyc-upload_student_ekyc_form
  /// Upload Student Ekyc Form
  @PATCH('/api/v1/student/ekyc/form')
  Future<HttpResponse<dynamic>> uploadForm({
    @Body() required StudentEkycFormDataRequest body,
  });

  /// student_ekyc-submit_ekyc
  /// Submit Ekyc
  @POST('/api/v1/student/ekyc/submit')
  Future<HttpResponse<dynamic>> submitEkyc();
}
