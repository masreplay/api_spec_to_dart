import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_specializations_client.g.dart';

@RestApi()
abstract class StudentSpecializationsClient {
  factory StudentSpecializationsClient(Dio dio, {String baseUrl}) =
      _StudentSpecializationsClient;

  /// student_specializations-read_specializations
  @GET('/api/v1/student/specializations/')
  Future<HttpResponse<dynamic>> readSpecializations();
}
