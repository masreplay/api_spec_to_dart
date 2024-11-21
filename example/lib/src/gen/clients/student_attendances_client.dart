import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'student_attendances_client.g.dart';

///
@RestApi()
abstract class StudentAttendancesClient {
  factory StudentAttendancesClient(Dio dio, {String baseUrl}) =
      _StudentAttendancesClient;

  /// null
  @GET('/api/v1/student/attendances/')
  Future<HttpResponse<dynamic>> student_attendances_read_attendances();

  /// null
  @GET('/api/v1/student/attendances/me')
  Future<HttpResponse<dynamic>> student_attendances_get_my_attendance();

  /// null
  @GET('/api/v1/student/attendances/{course_id}/lectures')
  Future<HttpResponse<dynamic>>
      student_attendances_read_attendance_for_course();
}
