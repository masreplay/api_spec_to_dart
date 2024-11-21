import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_information_status_client.g.dart';

@RestApi()
abstract class StudentInformationStatusClient {
  factory StudentInformationStatusClient(Dio dio, {String baseUrl}) =
      _StudentInformationStatusClient;

  /// student_information_status-read_status
  /// Read Status
  @GET('/api/v1/student/information_status/')
  Future<HttpResponse<dynamic>> readStatus();
}
