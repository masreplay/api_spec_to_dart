import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_fees_client.g.dart';

@RestApi()
abstract class StudentFeesClient {
  factory StudentFeesClient(Dio dio, {String baseUrl}) = _StudentFeesClient;

  /// null
  @GET('/api/v1/student/fees/')
  Future<HttpResponse<dynamic>> readFees(
    @Queries() QueriesClass queries,
  );
}
