import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_registration_client.g.dart';

@RestApi()
abstract class StudentRegistrationClient {
  factory StudentRegistrationClient(Dio dio, {String baseUrl}) =
      _StudentRegistrationClient;

  /// null
  @POST('/api/v1/student/registration/personal')
  Future<HttpResponse<dynamic>> updateStudentPersonalInfo(
    @Body() StudentRegistrationPersonalInfoUpdateRequest body,
  );

  /// null
  @POST('/api/v1/student/registration/school')
  Future<HttpResponse<dynamic>> updateStudentSchoolInfo(
    @Body() StudentRegistrationSchoolInfoUpdateRequest body,
  );

  /// null
  @POST('/api/v1/student/registration/ids/foreigner')
  Future<HttpResponse<dynamic>> updateStudentIdsInfoForeigner(
    @Body() RegistrationStudentIdsForeignerUpdateRequest body,
  );

  /// null
  @POST('/api/v1/student/registration/ids/identity_card')
  Future<HttpResponse<dynamic>> updateStudentIdsInfoIdentityCard(
    @Body() RegistrationsStudentIdsUpdateRequest body,
  );

  /// null
  @POST('/api/v1/student/registration/ids/nationality_card')
  Future<HttpResponse<dynamic>> updateStudentIdsInfoNationalityCard(
    @Body() RegistrationsStudentIdsNationalityCreateRequest body,
  );
}
