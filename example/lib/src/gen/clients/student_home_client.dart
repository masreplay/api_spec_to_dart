import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_home_client.g.dart';

@RestApi()
abstract class StudentHomeClient {
  factory StudentHomeClient(Dio dio, {String baseUrl}) = _StudentHomeClient;

  /// null
  @GET('/api/v1/student/home/')
  Future<HttpResponse<dynamic>> read();
}
