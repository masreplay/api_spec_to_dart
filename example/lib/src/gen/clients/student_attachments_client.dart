import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'student_attachments_client.g.dart';

@RestApi()
abstract class StudentAttachmentsClient {
  factory StudentAttachmentsClient(Dio dio, {String baseUrl}) =
      _StudentAttachmentsClient;

  /// null
  @GET('/api/v1/student/attachments/{course_id}')
  Future<HttpResponse<dynamic>> getSubjectForCourses(
    @Path('course_id') int courseId,
  );
}
