import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'lecturer_weekly_schedules_client.g.dart';

@RestApi()
abstract class LecturerWeeklySchedulesClient {
  factory LecturerWeeklySchedulesClient(Dio dio, {String baseUrl}) =
      _LecturerWeeklySchedulesClient;

  /// null
  @GET('/api/v1/lecturer/weekly_schedules/me')
  Future<HttpResponse<dynamic>> getWeeklySchedule();
}
