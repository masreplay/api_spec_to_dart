import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_profile_client.g.dart';

@RestApi()
abstract class StudentProfileClient {
  factory StudentProfileClient(Dio dio, {String baseUrl}) =
      _StudentProfileClient;

  /// student_profile-has_study_programs
  /// Has Study Programs
  @GET('/api/v1/student/profile/')
  Future<HttpResponse<BaseResponseBool>> studentProfileHasStudyPrograms();

  /// student_profile-read_student_personal_info
  /// Read Student Personal Info
  @GET('/api/v1/student/profile/personal')
  Future<HttpResponse<BaseResponseStudentPersonalInfoResponse>>
      studentProfileReadStudentPersonalInfo();

  /// student_profile-read_student_school_info
  /// Read Student School Info
  @GET('/api/v1/student/profile/school')
  Future<HttpResponse<BaseResponseUnionStudentSchoolInfoResponse>>
      studentProfileReadStudentSchoolInfo();

  /// student_profile-read_student_ids_info
  /// Read Student Ids Info
  @GET('/api/v1/student/profile/ids')
  Future<HttpResponse<BaseResponseUnionStudentIdsInfoResponse>>
      studentProfileReadStudentIdsInfo();

  /// student_profile-read_student_card
  /// Read Student Card
  @GET('/api/v1/student/profile/university-card')
  Future<HttpResponse<BaseResponseUnionStudentUniversityCardPublic>>
      studentProfileReadStudentCard();
}
