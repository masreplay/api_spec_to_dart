import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'lecturer_courses_client.g.dart';

///
@RestApi()
abstract class LecturerCoursesClient {
  factory LecturerCoursesClient(Dio dio, {String baseUrl}) =
      _LecturerCoursesClient;

  /// null
  @GET('/api/v1/lecturer/courses/me')
  Future<HttpResponse<dynamic>> lecturer_courses_get_lecturer_courses();

  /// null
  @GET('/api/v1/lecturer/courses/me/{id}')
  Future<HttpResponse<dynamic>> lecturer_courses_get_lecturer_course();
}
