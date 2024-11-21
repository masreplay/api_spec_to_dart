import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_courses_client.g.dart';

@RestApi()
abstract class StudentCoursesClient {
  factory StudentCoursesClient(Dio dio, {String baseUrl}) =
      _StudentCoursesClient;

  /// student_courses-read_student_workloads
  /// Read Student Workloads
  @GET('/api/v1/student/courses/')
  Future<HttpResponse<BaseResponseListCoursePublic>> readStudentWorkloads();

  /// student_courses-read_student_courses
  /// Read Student Courses
  @GET('/api/v1/student/courses/student-courses')
  Future<HttpResponse<BaseResponseListCoursePublic>> read();

  /// student_courses-get
  /// Get
  @GET('/api/v1/student/courses/staff/{id}')
  Future<HttpResponse<BaseResponseUnionListCourseStaffPublic>> get({
    @Path('id') required int id,
  });

  /// student_courses-read_course_by_id
  /// Read Course By Id
  @GET('/api/v1/student/courses/{id}')
  Future<HttpResponse<BaseResponseCoursePublic>> readCourseById({
    @Path('id') required int id,
  });
}
