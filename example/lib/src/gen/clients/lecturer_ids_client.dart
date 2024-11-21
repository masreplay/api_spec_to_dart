import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_ids_client.g.dart';

@RestApi()
abstract class LecturerIdsClient {
  factory LecturerIdsClient(Dio dio, {String baseUrl}) = _LecturerIdsClient;

  /// lecturer_ids-get_employee_identification_cards
  /// Get Employee Identification Cards
  @GET('/api/v1/lecturer/ids/me')
  Future<HttpResponse<dynamic>> getEmployeeIdentificationCards({
    @Queries() required GetEmployeeIdentificationCardsQueries queries,
  });
}
