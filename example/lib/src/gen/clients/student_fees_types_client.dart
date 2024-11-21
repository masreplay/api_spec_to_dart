import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'student_fees_types_client.g.dart';

///
@RestApi()
abstract class StudentFeesTypesClient {
  factory StudentFeesTypesClient(Dio dio, {String baseUrl}) =
      _StudentFeesTypesClient;

  /// null
  @GET('/api/v1/student/fees_types/')
  Future<HttpResponse<dynamic>> student_fees_types_read_fees_types();
}
