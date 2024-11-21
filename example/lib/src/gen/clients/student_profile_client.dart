import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'student_profile_client.g.dart';

///
@RestApi()
abstract class StudentProfileClient {
  factory StudentProfileClient(Dio dio, {String baseUrl}) =
      _StudentProfileClient;

  /// null
  @GET('/api/v1/student/profile/')
  Future<HttpResponse<dynamic>> student_profile_has_study_programs();

  /// null
  @GET('/api/v1/student/profile/personal')
  Future<HttpResponse<dynamic>> student_profile_read_student_personal_info();

  /// null
  @GET('/api/v1/student/profile/school')
  Future<HttpResponse<dynamic>> student_profile_read_student_school_info();

  /// null
  @GET('/api/v1/student/profile/ids')
  Future<HttpResponse<dynamic>> student_profile_read_student_ids_info();

  /// null
  @GET('/api/v1/student/profile/university-card')
  Future<HttpResponse<dynamic>> student_profile_read_student_card();
}
