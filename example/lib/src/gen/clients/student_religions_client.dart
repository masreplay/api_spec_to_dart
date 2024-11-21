import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_religions_client.g.dart';

@RestApi()
abstract class StudentReligionsClient {
  factory StudentReligionsClient(Dio dio, {String baseUrl}) =
      _StudentReligionsClient;

  /// null
  @GET('/api/v1/student/religions/')
  Future<HttpResponse<dynamic>> readReligions();
}
