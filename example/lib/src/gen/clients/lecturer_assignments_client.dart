import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_assignments_client.g.dart';

@RestApi()
abstract class LecturerAssignmentsClient {
  factory LecturerAssignmentsClient(Dio dio, {String baseUrl}) =
      _LecturerAssignmentsClient;

  /// lecturer_assignments-get_lecturer_assignments
  @GET('/api/v1/lecturer/assignments/me/{course_id}')
  Future<HttpResponse<dynamic>> get(
    @Queries() GetQueries queries,
    @Path('course_id') int courseId,
  );

  /// lecturer_assignments-create_lecturer_assignment
  @MultiPart()
  @POST('/api/v1/lecturer/assignments/me/{course_id}')
  Future<HttpResponse<dynamic>> createLecturerAssignment(
    @Path('course_id') int courseId,
    @Body() BodyLecturerAssignmentsCreateLecturerAssignment body,
  );

  /// lecturer_assignments-get_lecturer_assignment
  @GET('/api/v1/lecturer/assignments/{id}')
  Future<HttpResponse<dynamic>> getLecturerAssignment(
    @Path('id') int id,
  );

  /// lecturer_assignments-update_lecturer_assignment
  @MultiPart()
  @PUT('/api/v1/lecturer/assignments/{id}')
  Future<HttpResponse<dynamic>> updateLecturerAssignment(
    @Path('id') int id,
    @Body() BodyLecturerAssignmentsUpdateLecturerAssignment body,
  );

  /// lecturer_assignments-delete_lecturer_assignment
  @DELETE('/api/v1/lecturer/assignments/{id}')
  Future<HttpResponse<dynamic>> deleteLecturerAssignment(
    @Path('id') int id,
  );

  /// lecturer_assignments-get_lecturer_assignment_comments
  @GET('/api/v1/lecturer/assignments/{id}/comments')
  Future<HttpResponse<dynamic>> getLecturerAssignmentComments(
    @Path('id') int id,
  );

  /// lecturer_assignments-create_lecturer_assignment_comment
  @FormUrlEncoded()
  @POST('/api/v1/lecturer/assignments/{id}/comments')
  Future<HttpResponse<dynamic>> createLecturerAssignmentComment(
    @Path('id') int id,
    @Body() BodyLecturerAssignmentsCreateLecturerAssignmentComment body,
  );
}
