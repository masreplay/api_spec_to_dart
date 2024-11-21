import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_fees_types_client.g.dart';

@RestApi()
abstract class StudentFeesTypesClient {
  factory StudentFeesTypesClient(Dio dio, {String baseUrl}) =
      _StudentFeesTypesClient;

  /// student_fees_types-read_fees_types
  /// Read Fees Types
  @GET('/api/v1/student/fees_types/')
  Future<HttpResponse<BaseResponseListFeesTypesPublic>> readFeesTypes();
}
