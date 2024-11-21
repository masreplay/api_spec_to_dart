import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'lecturer_courses_client.g.dart';

@RestApi()
abstract class LecturerCoursesClient {
  factory LecturerCoursesClient(Dio dio, {String baseUrl}) =
      _LecturerCoursesClient;

  /// null
  @GET('/api/v1/lecturer/courses/me')
  Future<HttpResponse<dynamic>> get(
    @Queries() QueriesClass queries,
  );

  /// null
  @GET('/api/v1/lecturer/courses/me/{id}')
  Future<HttpResponse<dynamic>> getLecturerCourse(
    @Path('id') String id,
  );
}
