import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'lecturer_attendances_client.g.dart';

///
@RestApi()
abstract class LecturerAttendancesClient {
  factory LecturerAttendancesClient(Dio dio, {String baseUrl}) =
      _LecturerAttendancesClient;
}
