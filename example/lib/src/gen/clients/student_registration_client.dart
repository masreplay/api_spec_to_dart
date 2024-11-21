import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_registration_client.g.dart';

@RestApi()
abstract class StudentRegistrationClient {
  factory StudentRegistrationClient(Dio dio, {String baseUrl}) =
      _StudentRegistrationClient;

  /// student_registration-update_student_personal_info
  /// Update Student Personal Info
  @POST('/api/v1/student/registration/personal')
  Future<HttpResponse<dynamic>> updateStudentPersonalInfo({
    @Body() required StudentRegistrationPersonalInfoUpdateRequest body,
  });

  /// student_registration-update_student_school_info
  /// Update Student School Info
  @POST('/api/v1/student/registration/school')
  Future<HttpResponse<dynamic>> updateStudentSchoolInfo({
    @Body() required StudentRegistrationSchoolInfoUpdateRequest body,
  });

  /// student_registration-update_student_ids_info_foreigner
  /// Update Student Ids Info Foreigner
  @POST('/api/v1/student/registration/ids/foreigner')
  Future<HttpResponse<dynamic>> updateStudentIdsInfoForeigner({
    @Body() required RegistrationStudentIdsForeignerUpdateRequest body,
  });

  /// student_registration-update_student_ids_info_identity_card
  /// Update Student Ids Info Identity Card
  @POST('/api/v1/student/registration/ids/identity_card')
  Future<HttpResponse<dynamic>> updateStudentIdsInfoIdentityCard({
    @Body() required RegistrationsStudentIdsUpdateRequest body,
  });

  /// student_registration-update_student_ids_info_nationality_card
  /// Update Student Ids Info Nationality Card
  @POST('/api/v1/student/registration/ids/nationality_card')
  Future<HttpResponse<dynamic>> updateStudentIdsInfoNationalityCard({
    @Body() required RegistrationsStudentIdsNationalityCreateRequest body,
  });
}
