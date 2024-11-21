import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_study_years_client.g.dart';

@RestApi()
abstract class StudentStudyYearsClient {
  factory StudentStudyYearsClient(Dio dio, {String baseUrl}) =
      _StudentStudyYearsClient;

  /// student_study_years-read_student_workloads
  /// Read Student Workloads
  @GET('/api/v1/student/study_years/')
  Future<HttpResponse<dynamic>> readStudentWorkloads();
}
