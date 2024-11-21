import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_profile_client.g.dart';

@RestApi()
abstract class StudentProfileClient {
  factory StudentProfileClient(Dio dio, {String baseUrl}) =
      _StudentProfileClient;

  /// student_profile-has_study_programs
  @GET('/api/v1/student/profile/')
  Future<HttpResponse<dynamic>> hasStudyPrograms();

  /// student_profile-read_student_personal_info
  @GET('/api/v1/student/profile/personal')
  Future<HttpResponse<dynamic>> readStudentPersonalInfo();

  /// student_profile-read_student_school_info
  @GET('/api/v1/student/profile/school')
  Future<HttpResponse<dynamic>> readStudentSchoolInfo();

  /// student_profile-read_student_ids_info
  @GET('/api/v1/student/profile/ids')
  Future<HttpResponse<dynamic>> readStudentIdsInfo();

  /// student_profile-read_student_card
  @GET('/api/v1/student/profile/university-card')
  Future<HttpResponse<dynamic>> readStudentCard();
}
