import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_information_bureaus_client.g.dart';

@RestApi()
abstract class StudentInformationBureausClient {
  factory StudentInformationBureausClient(Dio dio, {String baseUrl}) =
      _StudentInformationBureausClient;

  /// student_information_bureaus-read_information_bureaus
  @GET('/api/v1/student/information_bureaus/')
  Future<HttpResponse<dynamic>> readInformationBureaus();
}
