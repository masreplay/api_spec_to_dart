import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'student_specializations_client.g.dart';

///
@RestApi()
abstract class StudentSpecializationsClient {
  factory StudentSpecializationsClient(Dio dio, {String baseUrl}) =
      _StudentSpecializationsClient;

  /// null
  @GET('/api/v1/student/specializations/')
  Future<HttpResponse<dynamic>> student_specializations_read_specializations();
}
