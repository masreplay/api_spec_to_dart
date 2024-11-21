import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_summary_client.g.dart';

@RestApi()
abstract class StudentSummaryClient {
  factory StudentSummaryClient(Dio dio, {String baseUrl}) =
      _StudentSummaryClient;

  /// null
  @GET('/api/v1/student/summary/')
  Future<HttpResponse<dynamic>> read();

  /// null
  @GET('/api/v1/student/summary/student-seamsters')
  Future<HttpResponse<dynamic>> readStudentSeamsters();

  /// null
  @GET('/api/v1/student/summary/student-seamsters-courses')
  Future<HttpResponse<dynamic>> readStudentSeamstersCourses();
}
