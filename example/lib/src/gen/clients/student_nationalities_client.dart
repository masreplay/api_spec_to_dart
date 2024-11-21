import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_nationalities_client.g.dart';

@RestApi()
abstract class StudentNationalitiesClient {
  factory StudentNationalitiesClient(Dio dio, {String baseUrl}) =
      _StudentNationalitiesClient;

  /// student_nationalities-read_nationalities
  /// Read Nationalities
  @GET('/api/v1/student/nationalities/')
  Future<HttpResponse<dynamic>> readNationalities();
}
