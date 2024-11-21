import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_information_bureaus_client.g.dart';

@RestApi()
abstract class StudentInformationBureausClient {
  factory StudentInformationBureausClient(Dio dio, {String baseUrl}) =
      _StudentInformationBureausClient;

  /// student_information_bureaus-read_information_bureaus
  /// Read Information Bureaus
  @GET('/api/v1/student/information_bureaus/')
  Future<HttpResponse<BaseResponseListInformationBureausPublic>>
      readInformationBureaus();
}
