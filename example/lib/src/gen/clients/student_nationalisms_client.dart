import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_nationalisms_client.g.dart';

@RestApi()
abstract class StudentNationalismsClient {
  factory StudentNationalismsClient(Dio dio, {String baseUrl}) =
      _StudentNationalismsClient;

  /// null
  @GET('/api/v1/student/nationalisms/')
  Future<HttpResponse<dynamic>> readNationalisms();
}
