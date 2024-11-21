import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_registration_client.g.dart';

@RestApi()
abstract class StudentRegistrationClient {
  factory StudentRegistrationClient(Dio dio, {String baseUrl}) =
      _StudentRegistrationClient;

  /// student_registration-update_student_personal_info
  @POST('/api/v1/student/registration/personal')
  Future<HttpResponse<dynamic>> updateStudentPersonalInfo(
    @Body() StudentRegistrationPersonalInfoUpdateRequest body,
  );

  /// student_registration-update_student_school_info
  @POST('/api/v1/student/registration/school')
  Future<HttpResponse<dynamic>> updateStudentSchoolInfo(
    @Body() StudentRegistrationSchoolInfoUpdateRequest body,
  );

  /// student_registration-update_student_ids_info_foreigner
  @POST('/api/v1/student/registration/ids/foreigner')
  Future<HttpResponse<dynamic>> updateStudentIdsInfoForeigner(
    @Body() RegistrationStudentIdsForeignerUpdateRequest body,
  );

  /// student_registration-update_student_ids_info_identity_card
  @POST('/api/v1/student/registration/ids/identity_card')
  Future<HttpResponse<dynamic>> updateStudentIdsInfoIdentityCard(
    @Body() RegistrationsStudentIdsUpdateRequest body,
  );

  /// student_registration-update_student_ids_info_nationality_card
  @POST('/api/v1/student/registration/ids/nationality_card')
  Future<HttpResponse<dynamic>> updateStudentIdsInfoNationalityCard(
    @Body() RegistrationsStudentIdsNationalityCreateRequest body,
  );
}
