import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_information_bureaus_client.g.dart';

@RestApi()
abstract class StudentInformationBureausClient {
  factory StudentInformationBureausClient(Dio dio, {String baseUrl}) =
      _StudentInformationBureausClient;

  /// null
  @GET('/api/v1/student/information_bureaus/')
  Future<HttpResponse<dynamic>> readInformationBureaus();
}
