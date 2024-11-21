import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_attendances_client.g.dart';

@RestApi()
abstract class LecturerAttendancesClient {
  factory LecturerAttendancesClient(Dio dio, {String baseUrl}) =
      _LecturerAttendancesClient;

  /// lecturer_attendances-lecturer_create_attendance
  /// Lecturer Create Attendance
  @POST('/api/v1/lecturer/attendances/create')
  Future<HttpResponse<BaseResponseLecturerAttendanceResponse>>
      lecturerAttendancesLecturerCreateAttendance({
    @Body() required LecturerAttendanceCreateRequest body,
  });
}
