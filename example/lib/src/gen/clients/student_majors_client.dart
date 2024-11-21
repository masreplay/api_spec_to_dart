import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'student_majors_client.g.dart';

///
@RestApi()
abstract class StudentMajorsClient {
  factory StudentMajorsClient(Dio dio, {String baseUrl}) = _StudentMajorsClient;

  /// null
  @GET('/api/v1/student/majors/')
  Future<HttpResponse<dynamic>> student_majors_read_majors();
}
