import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_courses_client.g.dart';

@RestApi()
abstract class LecturerCoursesClient {
  factory LecturerCoursesClient(Dio dio, {String baseUrl}) =
      _LecturerCoursesClient;

  /// lecturer_courses-get_lecturer_courses
  /// Get Lecturer Courses
  @GET('/api/v1/lecturer/courses/me')
  Future<HttpResponse<BaseResponsePaginationResponseLecturerCoursePublic>> get({
    @Queries() required GetQueries queries,
  });

  /// lecturer_courses-get_lecturer_course
  /// Get Lecturer Course
  @GET('/api/v1/lecturer/courses/me/{id}')
  Future<HttpResponse<BaseResponseLecturerCoursePublic>> getLecturerCourse({
    @Path('id') required int id,
  });
}
