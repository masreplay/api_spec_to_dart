import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'lecturer_announcements_client.g.dart';

@RestApi()
abstract class LecturerAnnouncementsClient {
  factory LecturerAnnouncementsClient(Dio dio, {String baseUrl}) =
      _LecturerAnnouncementsClient;

  /// null
  @GET('/api/v1/lecturer/announcements/me/{course_id}')
  Future<HttpResponse<dynamic>> get(
    @Queries() QueriesClass queries,
    @Path('course_id') String courseId,
  );

  /// OpenApiPathMethod(tags: [lecturer_announcements], summary: Delete Lecturer Announcement, description: null, operationId: lecturer_announcements-delete_lecturer_announcement, deprecated: null, security: [{LecturerOAuth2PasswordBearer: []}], parameters: [OpenApiPathMethodParameter(name: id, in_: OpenApiPathMethodParameterType.path, required_: true, schema: OpenApiSchema.type(enum_: null, type: OpenApiSchemaVarType.integer, items: null, maxLength: null, minLength: null, format: null, description: null, pattern: null, const_: null, default_: null, title: Id), description: null, example: null), OpenApiPathMethodParameter(name: Accept-Language, in_: OpenApiPathMethodParameterType.header, required_: true, schema: OpenApiSchema.type(enum_: null, type: OpenApiSchemaVarType.string, items: null, maxLength: null, minLength: null, format: null, description: Language, pattern: null, const_: null, default_: null, title: Accept-Language), description: Language, example: null)], requestBody: null, responses: {200: OpenApiPathMethodResponse(description: Successful Response, content: OpenApiContent(applicationJson: OpenApiContentSchema(schema: OpenApiSchema.ref(ref: #/components/schemas/MessageResponse, description: null, default_: null)), applicationXWwwFormUrlencoded: null, multipartFormData: null)), 422: OpenApiPathMethodResponse(description: Validation Error, content: OpenApiContent(applicationJson: OpenApiContentSchema(schema: OpenApiSchema.ref(ref: #/components/schemas/HTTPValidationError, description: null, default_: null)), applicationXWwwFormUrlencoded: null, multipartFormData: null))})
  @GET('/api/v1/lecturer/announcements/{id}')
  Future<HttpResponse<dynamic>> getLecturerAnnouncement(
    @Path('id') String id,
  );

  /// null
  @GET('/api/v1/lecturer/announcements/{id}/comments')
  Future<HttpResponse<dynamic>> getLecturerAnnouncementComments(
    @Queries() QueriesClass queries,
    @Path('id') String id,
  );
}
