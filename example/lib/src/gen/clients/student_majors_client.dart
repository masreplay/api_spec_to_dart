import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_majors_client.g.dart';

@RestApi()
abstract class StudentMajorsClient {
  factory StudentMajorsClient(Dio dio, {String baseUrl}) = _StudentMajorsClient;

  /// student_majors-read_majors
  /// Read Majors
  @GET('/api/v1/student/majors/')
  Future<HttpResponse<BaseResponseListMajorsPublic>> readMajors();
}
