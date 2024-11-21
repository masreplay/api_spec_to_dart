import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_study_years_client.g.dart';

@RestApi()
abstract class StudentStudyYearsClient {
  factory StudentStudyYearsClient(Dio dio, {String baseUrl}) =
      _StudentStudyYearsClient;

  /// null
  @GET('/api/v1/student/study_years/')
  Future<HttpResponse<dynamic>> readStudentWorkloads();
}
