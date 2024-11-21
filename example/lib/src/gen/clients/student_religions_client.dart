import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_religions_client.g.dart';

@RestApi()
abstract class StudentReligionsClient {
  factory StudentReligionsClient(Dio dio, {String baseUrl}) =
      _StudentReligionsClient;

  /// student_religions-read_religions
  /// Read Religions
  @GET('/api/v1/student/religions/')
  Future<HttpResponse<BaseResponseListReligionPublic>> readReligions();
}
