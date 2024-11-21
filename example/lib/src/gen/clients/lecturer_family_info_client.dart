import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'lecturer_family_info_client.g.dart';

@RestApi()
abstract class LecturerFamilyInfoClient {
  factory LecturerFamilyInfoClient(Dio dio, {String baseUrl}) =
      _LecturerFamilyInfoClient;

  /// null
  @GET('/api/v1/lecturer/')
  Future<HttpResponse<dynamic>> getEmployeeFamilyInfo(
    @Queries() QueriesClass queries,
  );
}
