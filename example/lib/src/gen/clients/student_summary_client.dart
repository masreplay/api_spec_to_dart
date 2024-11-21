import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_summary_client.g.dart';

@RestApi()
abstract class StudentSummaryClient {
  factory StudentSummaryClient(Dio dio, {String baseUrl}) =
      _StudentSummaryClient;

  /// student_summary-read_student_summary
  /// Read Student Summary
  @GET('/api/v1/student/summary/')
  Future<HttpResponse<BaseResponseUnionSummaryResponse>>
      studentSummaryReadStudentSummary();

  /// student_summary-read_student_seamsters
  /// Read Student Seamsters
  @GET('/api/v1/student/summary/student-seamsters')
  Future<HttpResponse<BaseResponseUnionStudentSeamstersSummaryWithoutCourses>>
      studentSummaryReadStudentSeamsters();

  /// student_summary-read_student_seamsters_courses
  /// Read Student Seamsters Courses
  @GET('/api/v1/student/summary/student-seamsters-courses')
  Future<HttpResponse<BaseResponseUnionListStudentSeamstersSummary>>
      studentSummaryReadStudentSeamstersCourses();
}
