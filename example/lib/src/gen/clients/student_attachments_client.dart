import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_attachments_client.g.dart';

@RestApi()
abstract class StudentAttachmentsClient {
  factory StudentAttachmentsClient(Dio dio, {String baseUrl}) =
      _StudentAttachmentsClient;

  /// student_attachments-get_subject_for_courses
  /// Get Subject For Courses
  @GET('/api/v1/student/attachments/{course_id}')
  Future<HttpResponse<BaseResponseUnionListCourseSubjectPublic>>
      studentAttachmentsGetSubjectForCourses({
    @Path('course_id') required int courseId,
  });
}
