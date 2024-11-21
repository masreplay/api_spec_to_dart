import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_admissions_client.g.dart';

@RestApi()
abstract class StudentAdmissionsClient {
  factory StudentAdmissionsClient(Dio dio, {String baseUrl}) =
      _StudentAdmissionsClient;

  /// null
  @GET('/api/v1/student/admissions/me')
  Future<HttpResponse<dynamic>> readAdmissions();

  /// null
  @GET('/api/v1/student/admissions/me/joining-time')
  Future<HttpResponse<dynamic>> getJoiningTime();
}
