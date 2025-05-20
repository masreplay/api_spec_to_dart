library;

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'exports.dart';
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
  @POST("/forms/basic")
  Future<HttpResponse> filesFormBasic({
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? sendProgress,
    @ReceiveProgress() ProgressCallback? receiveProgress,
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
  @POST("/files/upload")
  Future<HttpResponse> filesFileUpload({
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? sendProgress,
    @ReceiveProgress() ProgressCallback? receiveProgress,
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
  @POST("/files/multiple")
  Future<HttpResponse> filesFilesMultiple({
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? sendProgress,
    @ReceiveProgress() ProgressCallback? receiveProgress,
  });
}
