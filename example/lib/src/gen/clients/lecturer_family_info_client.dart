import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_family_info_client.g.dart';

@RestApi()
abstract class LecturerFamilyInfoClient {
  factory LecturerFamilyInfoClient(Dio dio, {String baseUrl}) =
      _LecturerFamilyInfoClient;

  /// lecturer_family_info-get_employee_family_info
  /// Get Employee Family Info
  @GET('/api/v1/lecturer/')
  Future<HttpResponse<BaseResponseUnionEmployeeFamilyPublic>>
      lecturerFamilyInfoGetEmployeeFamilyInfo({
    @Queries() required LecturerFamilyInfoGetEmployeeFamilyInfoQueries queries,
  });
}
