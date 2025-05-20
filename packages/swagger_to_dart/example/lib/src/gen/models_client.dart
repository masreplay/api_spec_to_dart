library;

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'exports.dart';
part 'models_client.g.dart';

@RestApi()
abstract class ModelsClient {
  factory ModelsClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _ModelsClient;

  /// post
  /// {
  ///     "tags": [
  ///         "models"
  ///     ],
  ///     "summary": "Create User",
  ///     "description": "Create a new user from a Pydantic model.",
  ///     "operationId": "models-create_user",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "application/json": {
  ///                 "schema": {
  ///                     "$ref": "#/components/schemas/UserCreate"
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
  ///                         "$ref": "#/components/schemas/User"
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
  @POST("/models/user")
  Future<HttpResponse> modelsCreateUser({
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "models"
  ///     ],
  ///     "summary": "Process location information",
  ///     "description": "Handle a Pydantic model as query parameters.",
  ///     "operationId": "models-get_location",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "application/json": {
  ///                 "schema": {
  ///                     "$ref": "#/components/schemas/Location"
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
  ///                         "title": "Response Models-Get Location"
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
  @GET("/models/location")
  Future<HttpResponse> modelsGetLocation({
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "models"
  ///     ],
  ///     "summary": "Return a filtered response model",
  ///     "description": "Return a response filtered by the response_model.",
  ///     "operationId": "models-response_filtered",
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/User"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @GET("/response/filtered")
  Future<HttpResponse> modelsResponseFiltered({
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "models"
  ///     ],
  ///     "summary": "Return different response models based on query",
  ///     "description": "Return different response models based on query parameters.",
  ///     "operationId": "models-response_multiple",
  ///     "parameters": [
  ///         {
  ///             "name": "is_user",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "boolean",
  ///                 "description": "Whether to return a user or location",
  ///                 "default": true,
  ///                 "title": "Is User"
  ///             },
  ///             "description": "Whether to return a user or location",
  ///             "example": true
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "anyOf": [
  ///                             {
  ///                                 "$ref": "#/components/schemas/User"
  ///                             },
  ///                             {
  ///                                 "$ref": "#/components/schemas/Location"
  ///                             }
  ///                         ],
  ///                         "title": "Response Models-Response Multiple"
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
  @GET("/response/multiple")
  Future<HttpResponse> modelsResponseMultiple({
    @Query("is_user") bool isUser = true,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "models"
  ///     ],
  ///     "summary": "Return a list of models",
  ///     "description": "Return a list of items with a response model.",
  ///     "operationId": "models-response_list",
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "array",
  ///                         "items": {
  ///                             "$ref": "#/components/schemas/User"
  ///                         },
  ///                         "title": "Response Models-Response List"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @GET("/response/list")
  Future<HttpResponse> modelsResponseList({
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });
}
