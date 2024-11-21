import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'lecturer_assignments_client.g.dart';

@RestApi()
abstract class LecturerAssignmentsClient {
  factory LecturerAssignmentsClient(Dio dio, {String baseUrl}) =
      _LecturerAssignmentsClient;

  /// lecturer_assignments-get_lecturer_assignments
  /// Get Lecturer Assignments
  @GET('/api/v1/lecturer/assignments/me/{course_id}')
  Future<HttpResponse<dynamic>> get({
    @Queries() required GetQueries queries,
    @Path('course_id') required int courseId,
  });

  /// lecturer_assignments-create_lecturer_assignment
  /// Create Lecturer Assignment
  @MultiPart()
  @POST('/api/v1/lecturer/assignments/me/{course_id}')
  Future<HttpResponse<dynamic>> createLecturerAssignment({
    @Path('course_id') required int courseId,
    @Body() required BodyLecturerAssignmentsCreateLecturerAssignment body,
  });

  /// lecturer_assignments-get_lecturer_assignment
  /// Get Lecturer Assignment
  @GET('/api/v1/lecturer/assignments/{id}')
  Future<HttpResponse<dynamic>> getLecturerAssignment({
    @Path('id') required int id,
  });

  /// lecturer_assignments-update_lecturer_assignment
  /// Update Lecturer Assignment
  @MultiPart()
  @PUT('/api/v1/lecturer/assignments/{id}')
  Future<HttpResponse<dynamic>> updateLecturerAssignment({
    @Path('id') required int id,
    @Body() required BodyLecturerAssignmentsUpdateLecturerAssignment body,
  });

  /// lecturer_assignments-delete_lecturer_assignment
  /// Delete Lecturer Assignment
  @DELETE('/api/v1/lecturer/assignments/{id}')
  Future<HttpResponse<dynamic>> deleteLecturerAssignment({
    @Path('id') required int id,
  });

  /// lecturer_assignments-get_lecturer_assignment_comments
  /// Get Lecturer Assignment Comments
  @GET('/api/v1/lecturer/assignments/{id}/comments')
  Future<HttpResponse<dynamic>> getLecturerAssignmentComments({
    @Path('id') required int id,
  });

  /// lecturer_assignments-create_lecturer_assignment_comment
  /// Create Lecturer Assignment Comment
  @FormUrlEncoded()
  @POST('/api/v1/lecturer/assignments/{id}/comments')
  Future<HttpResponse<dynamic>> createLecturerAssignmentComment({
    @Path('id') required int id,
    @Body()
    required BodyLecturerAssignmentsCreateLecturerAssignmentComment body,
  });
}
