import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_selected_courses_client.g.dart';

@RestApi()
abstract class StudentSelectedCoursesClient {
  factory StudentSelectedCoursesClient(Dio dio, {String baseUrl}) =
      _StudentSelectedCoursesClient;

  /// student_selected_courses-read_student_summary
  /// Read Student Summary
  @GET('/api/v1/student/student_selected_courses/me')
  Future<HttpResponse<BaseResponseListStudentSelectedCoursesPublic>>
      studentSelectedCoursesReadStudentSummary();

  /// student_selected_courses-update_selected_courses
  /// Update Selected Courses
  @PATCH('/api/v1/student/student_selected_courses/update')
  Future<HttpResponse<BaseResponseListStudentSelectedCoursesPublic>>
      studentSelectedCoursesUpdateSelectedCourses({
    @Queries()
    required StudentSelectedCoursesUpdateSelectedCoursesQueries queries,
    @Body() required List<UpdateSelectedCourses> body,
  });

  /// student_selected_courses-read_student_selected_courses_by_id
  /// Read Student Selected Courses By Id
  @GET('/api/v1/student/student_selected_courses/{id}')
  Future<HttpResponse<BaseResponseStudentSelectedCoursesPublic>>
      studentSelectedCoursesReadStudentSelectedCoursesById({
    @Path('id') required int id,
  });
}
