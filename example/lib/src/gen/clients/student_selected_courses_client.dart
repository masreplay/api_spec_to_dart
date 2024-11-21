import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_selected_courses_client.g.dart';

@RestApi()
abstract class StudentSelectedCoursesClient {
  factory StudentSelectedCoursesClient(Dio dio, {String baseUrl}) =
      _StudentSelectedCoursesClient;

  /// null
  @GET('/api/v1/student/student_selected_courses/me')
  Future<HttpResponse<dynamic>> readStudentSummary();

  /// null
  @GET('/api/v1/student/student_selected_courses/{id}')
  Future<HttpResponse<dynamic>> readById(
    @Path('id') int id,
  );
}
