import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_attendances_client.g.dart';

@RestApi()
abstract class StudentAttendancesClient {
  factory StudentAttendancesClient(Dio dio, {String baseUrl}) =
      _StudentAttendancesClient;

  /// student_attendances-read_attendances
  @GET('/api/v1/student/attendances/')
  Future<HttpResponse<dynamic>> readAttendances();

  /// student_attendances-get_my_attendance
  @GET('/api/v1/student/attendances/me')
  Future<HttpResponse<dynamic>> getMyAttendance();

  /// student_attendances-check_in_my_attendance
  @POST('/api/v1/student/attendances/me/check-in/')
  Future<HttpResponse<dynamic>> checkInMyAttendance(
    @Body() StudentAttendanceCreate body,
  );

  /// student_attendances-read_attendance_for_course
  @GET('/api/v1/student/attendances/{course_id}/lectures')
  Future<HttpResponse<dynamic>> readAttendanceForCourse(
    @Path('course_id') int courseId,
  );
}
