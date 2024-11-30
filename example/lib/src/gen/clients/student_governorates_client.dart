import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_governorates_client.g.dart';

@RestApi()
abstract class StudentGovernoratesClient {
  factory StudentGovernoratesClient(Dio dio, {String baseUrl}) =
      _StudentGovernoratesClient;

  /// student_governorates-read_governorates
  /// Read Governorates
  @GET('/api/v1/student/governorates/')
  Future<HttpResponse<BaseResponseListGovernoratePublic>>
      studentGovernoratesReadGovernorates();
}
