import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_admissions_client.g.dart';

@RestApi()
abstract class StudentAdmissionsClient {
  factory StudentAdmissionsClient(Dio dio, {String baseUrl}) =
      _StudentAdmissionsClient;

  /// student_admissions-read_admissions
  /// Read Admissions
  @GET('/api/v1/student/admissions/me')
  Future<HttpResponse<BaseResponseListAdmissionMePublic>>
      studentAdmissionsReadAdmissions();

  /// student_admissions-get_joining_time
  /// Get Joining Time
  @GET('/api/v1/student/admissions/me/joining-time')
  Future<HttpResponse<JoiningTime>> studentAdmissionsGetJoiningTime();
}
