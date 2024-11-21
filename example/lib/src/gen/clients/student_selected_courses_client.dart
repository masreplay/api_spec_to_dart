import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_selected_courses_client.g.dart';

@RestApi()
abstract class StudentSelectedCoursesClient {
  factory StudentSelectedCoursesClient(Dio dio, {String baseUrl}) =
      _StudentSelectedCoursesClient;

  /// student_selected_courses-read_student_summary
  @GET('/api/v1/student/student_selected_courses/me')
  Future<HttpResponse<dynamic>> readStudentSummary();

  /// student_selected_courses-update_selected_courses
  @PATCH('/api/v1/student/student_selected_courses/update')
  Future<HttpResponse<dynamic>> updateSelectedCourses(
    @Queries() UpdateSelectedCoursesQueries queries,
    @Body() List<UpdateSelectedCourses> body,
  );

  /// student_selected_courses-read_student_selected_courses_by_id
  @GET('/api/v1/student/student_selected_courses/{id}')
  Future<HttpResponse<dynamic>> readById(
    @Path('id') int id,
  );
}
