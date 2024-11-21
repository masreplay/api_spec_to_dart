import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_courses_client.g.dart';

@RestApi()
abstract class StudentCoursesClient {
  factory StudentCoursesClient(Dio dio, {String baseUrl}) =
      _StudentCoursesClient;

  /// null
  @GET('/api/v1/student/courses/')
  Future<HttpResponse<dynamic>> readStudentWorkloads();

  /// null
  @GET('/api/v1/student/courses/student-courses')
  Future<HttpResponse<dynamic>> read();

  /// null
  @GET('/api/v1/student/courses/staff/{id}')
  Future<HttpResponse<dynamic>> get();

  /// null
  @GET('/api/v1/student/courses/{id}')
  Future<HttpResponse<dynamic>> readCourseById();
}
