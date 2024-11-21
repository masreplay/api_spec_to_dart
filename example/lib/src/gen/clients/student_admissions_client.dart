import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_admissions_client.g.dart';

@RestApi()
abstract class StudentAdmissionsClient {
  factory StudentAdmissionsClient(Dio dio, {String baseUrl}) =
      _StudentAdmissionsClient;

  /// student_admissions-read_admissions
  @GET('/api/v1/student/admissions/me')
  Future<HttpResponse<dynamic>> readAdmissions();

  /// student_admissions-get_joining_time
  @GET('/api/v1/student/admissions/me/joining-time')
  Future<HttpResponse<dynamic>> getJoiningTime();
}
