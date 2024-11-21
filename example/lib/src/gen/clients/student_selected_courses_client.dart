import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'student_selected_courses_client.g.dart';

///
@RestApi()
abstract class StudentSelectedCoursesClient {
  factory StudentSelectedCoursesClient(Dio dio, {String baseUrl}) =
      _StudentSelectedCoursesClient;

  /// null
  @GET('/api/v1/student/student_selected_courses/me')
  Future<HttpResponse<dynamic>> student_selected_courses_read_student_summary();

  /// null
  @GET('/api/v1/student/student_selected_courses/{id}')
  Future<HttpResponse<dynamic>>
      student_selected_courses_read_student_selected_courses_by_id();
}
