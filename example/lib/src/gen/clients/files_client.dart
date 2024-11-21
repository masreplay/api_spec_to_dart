import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'files_client.g.dart';

@RestApi()
abstract class FilesClient {
  factory FilesClient(Dio dio, {String baseUrl}) = _FilesClient;

  /// null
  @POST('/api/v1/common/files/upload')
  Future<HttpResponse<dynamic>> uploadFile(
    @Body() dynamic body,
  );

  /// OpenApiPathMethod(tags: [files], summary: Delete File, description: null, operationId: files-delete_file, deprecated: null, security: [{StudentOAuth2PasswordBearer: []}], parameters: [OpenApiPathMethodParameter(name: id, in_: OpenApiPathMethodParameterType.path, required_: true, schema: OpenApiSchema.type(enum_: null, type: OpenApiSchemaVarType.integer, items: null, maxLength: null, minLength: null, format: null, description: null, pattern: null, const_: null, default_: null, title: Id), description: null, example: null), OpenApiPathMethodParameter(name: Accept-Language, in_: OpenApiPathMethodParameterType.header, required_: true, schema: OpenApiSchema.type(enum_: null, type: OpenApiSchemaVarType.string, items: null, maxLength: null, minLength: null, format: null, description: Language, pattern: null, const_: null, default_: null, title: Accept-Language), description: Language, example: null)], requestBody: null, responses: {200: OpenApiPathMethodResponse(description: Successful Response, content: OpenApiContent(applicationJson: OpenApiContentSchema(schema: OpenApiSchema.ref(ref: #/components/schemas/BaseResponse_NoneType_, description: null, default_: null)), applicationXWwwFormUrlencoded: null, multipartFormData: null)), 422: OpenApiPathMethodResponse(description: Validation Error, content: OpenApiContent(applicationJson: OpenApiContentSchema(schema: OpenApiSchema.ref(ref: #/components/schemas/HTTPValidationError, description: null, default_: null)), applicationXWwwFormUrlencoded: null, multipartFormData: null))})
  @DELETE('/api/v1/common/files/delete/{id}')
  Future<HttpResponse<dynamic>> deleteFile(
    @Path('id') int id,
  );
}
