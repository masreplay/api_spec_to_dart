import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_weekly_schedules_client.g.dart';

@RestApi()
abstract class LecturerWeeklySchedulesClient {
  factory LecturerWeeklySchedulesClient(Dio dio, {String baseUrl}) =
      _LecturerWeeklySchedulesClient;

  /// lecturer_weekly_schedules-get_weekly_schedule
  /// Get Weekly Schedule
  @GET('/api/v1/lecturer/weekly_schedules/me')
  Future<HttpResponse<BaseResponseListWeeklyScheduleTeacherResponse>>
      getWeeklySchedule();
}
