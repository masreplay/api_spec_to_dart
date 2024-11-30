import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_attendances_client.g.dart';

@RestApi()
abstract class StudentAttendancesClient {
  factory StudentAttendancesClient(Dio dio, {String baseUrl}) =
      _StudentAttendancesClient;

  /// student_attendances-read_attendances
  /// Read Attendances
  @GET('/api/v1/student/attendances/')
  Future<HttpResponse<BaseResponseListStudentAttendancePublic>>
      studentAttendancesReadAttendances();

  /// student_attendances-get_my_attendance
  /// Get My Attendance
  @GET('/api/v1/student/attendances/me')
  Future<HttpResponse<BaseResponseAny>> studentAttendancesGetMyAttendance();

  /// student_attendances-check_in_my_attendance
  /// Check In My Attendance
  @POST('/api/v1/student/attendances/me/check-in/')
  Future<HttpResponse<BaseResponseStudentAttendancePublic>>
      studentAttendancesCheckInMyAttendance({
    @Body() required StudentAttendanceCreate body,
  });

  /// student_attendances-read_attendance_for_course
  /// Read Attendance For Course
  @GET('/api/v1/student/attendances/{course_id}/lectures')
  Future<HttpResponse<BaseResponseListLecture>>
      studentAttendancesReadAttendanceForCourse({
    @Path('course_id') required int courseId,
  });
}
