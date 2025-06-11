library;

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'files_client.g.dart';

@RestApi()
abstract class FilesClient {
  factory FilesClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _FilesClient;

  /// post
  /// {
  ///     "tags": [
  ///         "files"
  ///     ],
  ///     "summary": "Handle basic form data",
  ///     "description": "Handle form data.",
  ///     "operationId": "files-form_basic",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "application/x-www-form-urlencoded": {
  ///                 "schema": {
  ///                     "$ref": "#/components/schemas/Body_files-form_basic"
  ///                 }
  ///             }
  ///         }
  ///     },
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Files-Form Basic"
  ///                     }
  ///                 }
  ///             }
  ///         },
  ///         "422": {
  ///             "description": "Validation Error",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/HTTPValidationError"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @POST('/forms/basic')
  @FormUrlEncoded()
  Future<HttpResponse<Map<String, dynamic>>> filesFormBasic({
    @Body() required BodyFilesFormBasic requestBody,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// post
  /// {
  ///     "tags": [
  ///         "files"
  ///     ],
  ///     "summary": "Handle single file upload",
  ///     "description": "Handle file upload.",
  ///     "operationId": "files-file_upload",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "multipart/form-data": {
  ///                 "schema": {
  ///                     "$ref": "#/components/schemas/Body_files-file_upload"
  ///                 }
  ///             }
  ///         }
  ///     },
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Files-File Upload"
  ///                     }
  ///                 }
  ///             }
  ///         },
  ///         "422": {
  ///             "description": "Validation Error",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/HTTPValidationError"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @POST('/files/upload')
  @MultiPart()
  Future<HttpResponse<Map<String, dynamic>>> _filesFileUpload({
    @Part() required Map<String, dynamic> requestBody,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// post
  /// {
  ///     "tags": [
  ///         "files"
  ///     ],
  ///     "summary": "Handle multiple file uploads",
  ///     "description": "Handle multiple file uploads.",
  ///     "operationId": "files-files_multiple",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "multipart/form-data": {
  ///                 "schema": {
  ///                     "$ref": "#/components/schemas/Body_files-files_multiple"
  ///                 }
  ///             }
  ///         }
  ///     },
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Files-Files Multiple"
  ///                     }
  ///                 }
  ///             }
  ///         },
  ///         "422": {
  ///             "description": "Validation Error",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/HTTPValidationError"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @POST('/files/multiple')
  @MultiPart()
  Future<HttpResponse<Map<String, dynamic>>> _filesFilesMultiple({
    @Part() required Map<String, dynamic> requestBody,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });
}

extension FilesClientX on FilesClient {
  Future<HttpResponse<Map<String, dynamic>>> filesFileUpload({
    required BodyFilesFileUpload requestBody,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  }) {
    return _filesFileUpload(
      requestBody: requestBody.toJson(),
      extras: extras,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<HttpResponse<Map<String, dynamic>>> filesFilesMultiple({
    required BodyFilesFilesMultiple requestBody,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  }) {
    return _filesFilesMultiple(
      requestBody: requestBody.toJson(),
      extras: extras,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }
}
