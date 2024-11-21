import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_weekly_schedules_client.g.dart';

@RestApi()
abstract class StudentWeeklySchedulesClient {
  factory StudentWeeklySchedulesClient(Dio dio, {String baseUrl}) =
      _StudentWeeklySchedulesClient;

  /// null
  @GET('/api/v1/student/weekly_schedules/me')
  Future<HttpResponse<dynamic>> getMyWeeklySchedule();
}
