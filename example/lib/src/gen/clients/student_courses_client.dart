import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'student_courses_client.g.dart';

///
@RestApi()
abstract class StudentCoursesClient {
  factory StudentCoursesClient(Dio dio, {String baseUrl}) =
      _StudentCoursesClient;

  /// null
  @GET('/api/v1/student/courses/')
  Future<HttpResponse<dynamic>> student_courses_read_student_workloads();

  /// null
  @GET('/api/v1/student/courses/student-courses')
  Future<HttpResponse<dynamic>> student_courses_read_student_courses();

  /// null
  @GET('/api/v1/student/courses/staff/{id}')
  Future<HttpResponse<dynamic>> student_courses_get();

  /// null
  @GET('/api/v1/student/courses/{id}')
  Future<HttpResponse<dynamic>> student_courses_read_course_by_id();
}
