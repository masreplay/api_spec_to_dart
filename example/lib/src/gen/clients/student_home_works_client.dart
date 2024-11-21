import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_home_works_client.g.dart';

@RestApi()
abstract class StudentHomeWorksClient {
  factory StudentHomeWorksClient(Dio dio, {String baseUrl}) =
      _StudentHomeWorksClient;

  /// null
  @GET('/api/v1/student/home_works/course/{course_id}')
  Future<HttpResponse<dynamic>> readCourseAssessmentByCourseId(
    @Path('course_id') String courseId,
  );
}
