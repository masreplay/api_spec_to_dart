import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_summary_client.g.dart';

@RestApi()
abstract class StudentSummaryClient {
  factory StudentSummaryClient(Dio dio, {String baseUrl}) =
      _StudentSummaryClient;

  /// student_summary-read_student_summary
  @GET('/api/v1/student/summary/')
  Future<HttpResponse<dynamic>> read();

  /// student_summary-read_student_seamsters
  @GET('/api/v1/student/summary/student-seamsters')
  Future<HttpResponse<dynamic>> readStudentSeamsters();

  /// student_summary-read_student_seamsters_courses
  @GET('/api/v1/student/summary/student-seamsters-courses')
  Future<HttpResponse<dynamic>> readStudentSeamstersCourses();
}
