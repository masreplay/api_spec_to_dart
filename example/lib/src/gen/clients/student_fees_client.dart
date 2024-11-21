import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_fees_client.g.dart';

@RestApi()
abstract class StudentFeesClient {
  factory StudentFeesClient(Dio dio, {String baseUrl}) = _StudentFeesClient;

  /// student_fees-read_fees
  @GET('/api/v1/student/fees/')
  Future<HttpResponse<dynamic>> readFees(
    @Queries() ReadFeesQueries queries,
  );
}
