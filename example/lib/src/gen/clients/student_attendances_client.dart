import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_attendances_client.g.dart';

@RestApi()
abstract class StudentAttendancesClient {
  factory StudentAttendancesClient(Dio dio, {String baseUrl}) =
      _StudentAttendancesClient;

  /// null
  @GET('/api/v1/student/attendances/')
  Future<HttpResponse<dynamic>> readAttendances();

  /// null
  @GET('/api/v1/student/attendances/me')
  Future<HttpResponse<dynamic>> getMyAttendance();

  /// null
  @GET('/api/v1/student/attendances/{course_id}/lectures')
  Future<HttpResponse<dynamic>> readAttendanceForCourse(
    @Path('course_id') int courseId,
  );
}
