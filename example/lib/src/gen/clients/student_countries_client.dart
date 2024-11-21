import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_countries_client.g.dart';

@RestApi()
abstract class StudentCountriesClient {
  factory StudentCountriesClient(Dio dio, {String baseUrl}) =
      _StudentCountriesClient;

  /// student_countries-read_countries
  /// Read Countries
  @GET('/api/v1/student/countries/')
  Future<HttpResponse<dynamic>> readCountries();
}
