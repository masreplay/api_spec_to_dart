import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_profile_client.g.dart';

@RestApi()
abstract class StudentProfileClient {
  factory StudentProfileClient(Dio dio, {String baseUrl}) =
      _StudentProfileClient;

  /// null
  @GET('/api/v1/student/profile/')
  Future<HttpResponse<dynamic>> hasStudyPrograms();

  /// null
  @GET('/api/v1/student/profile/personal')
  Future<HttpResponse<dynamic>> readStudentPersonalInfo();

  /// null
  @GET('/api/v1/student/profile/school')
  Future<HttpResponse<dynamic>> readStudentSchoolInfo();

  /// null
  @GET('/api/v1/student/profile/ids')
  Future<HttpResponse<dynamic>> readStudentIdsInfo();

  /// null
  @GET('/api/v1/student/profile/university-card')
  Future<HttpResponse<dynamic>> readStudentCard();
}
