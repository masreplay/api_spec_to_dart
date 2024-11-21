import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_ekyc_client.g.dart';

@RestApi()
abstract class StudentEkycClient {
  factory StudentEkycClient(Dio dio, {String baseUrl}) = _StudentEkycClient;

  /// null
  @GET('/api/v1/student/ekyc/download-license')
  Future<HttpResponse<dynamic>> downloadLicense();

  /// null
  @GET('/api/v1/student/ekyc/form')
  Future<HttpResponse<dynamic>> readForm();
}
