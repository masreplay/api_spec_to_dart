import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'lecturer_assignments_client.g.dart';

///
@RestApi()
abstract class LecturerAssignmentsClient {
  factory LecturerAssignmentsClient(Dio dio, {String baseUrl}) =
      _LecturerAssignmentsClient;

  /// null
  @GET('/api/v1/lecturer/assignments/me/{course_id}')
  Future<HttpResponse<dynamic>> lecturer_assignments_get_lecturer_assignments();

  /// OpenApiPathMethod(tags: [lecturer_assignments], summary: Delete Lecturer Assignment, description: null, operationId: lecturer_assignments-delete_lecturer_assignment, deprecated: null, security: [{LecturerOAuth2PasswordBearer: []}], parameters: [OpenApiPathMethodParameter(name: id, in_: OpenApiPathMethodParameterType.path, required_: true, schema: OpenApiSchema.type(enum_: null, type: OpenApiSchemaVarType.integer, items: null, maxLength: null, minLength: null, format: null, description: null, pattern: null, const_: null, default_: null, title: Id), description: null, example: null), OpenApiPathMethodParameter(name: Accept-Language, in_: OpenApiPathMethodParameterType.header, required_: true, schema: OpenApiSchema.type(enum_: null, type: OpenApiSchemaVarType.string, items: null, maxLength: null, minLength: null, format: null, description: Language, pattern: null, const_: null, default_: null, title: Accept-Language), description: Language, example: null)], requestBody: null, responses: {200: OpenApiPathMethodResponse(description: Successful Response, content: OpenApiContent(applicationJson: OpenApiContentSchema(schema: OpenApiSchema.ref(ref: #/components/schemas/MessageResponse, description: null, default_: null)), applicationXWwwFormUrlencoded: null, multipartFormData: null)), 422: OpenApiPathMethodResponse(description: Validation Error, content: OpenApiContent(applicationJson: OpenApiContentSchema(schema: OpenApiSchema.ref(ref: #/components/schemas/HTTPValidationError, description: null, default_: null)), applicationXWwwFormUrlencoded: null, multipartFormData: null))})
  @GET('/api/v1/lecturer/assignments/{id}')
  Future<HttpResponse<dynamic>> lecturer_assignments_get_lecturer_assignment();

  /// null
  @GET('/api/v1/lecturer/assignments/{id}/comments')
  Future<HttpResponse<dynamic>>
      lecturer_assignments_get_lecturer_assignment_comments();
}
