import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_calender_client.g.dart';

@RestApi()
abstract class LecturerCalenderClient {
  factory LecturerCalenderClient(Dio dio, {String baseUrl}) =
      _LecturerCalenderClient;

  /// null
  @GET('/api/v1/lecturer/calender/homework')
  Future<HttpResponse<dynamic>> getLecturerReadHomeworkCalender(
    @Queries() GetLecturerReadHomeworkCalenderQueries queries,
  );
}
