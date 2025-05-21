library;

import 'package:retrofit/retrofit.dart';
import 'exports.dart';
part 'validation_client.g.dart';

@RestApi()
abstract class ValidationClient {
  factory ValidationClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _ValidationClient;

  /// get
  /// {
  ///     "tags": [
  ///         "validation"
  ///     ],
  ///     "summary": "Demonstrate path parameter validation",
  ///     "description": "Path parameter with validation.",
  ///     "operationId": "validation-param_path",
  ///     "parameters": [
  ///         {
  ///             "name": "item_id",
  ///             "in": "path",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "description": "The ID of the item",
  ///                 "title": "Item ID"
  ///             },
  ///             "description": "The ID of the item",
  ///             "example": 42
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Validation-Param Path"
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
  @GET("/params/path/{item_id}")
  Future<HttpResponse<Map<String, dynamic>>> validationParamPath({
    @Path("item_id") required int itemId,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "validation"
  ///     ],
  ///     "summary": "Demonstrate query parameter validation",
  ///     "description": "Query parameters with validation.",
  ///     "operationId": "validation-param_query",
  ///     "parameters": [
  ///         {
  ///             "name": "q",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "anyOf": [
  ///                     {
  ///                         "type": "string",
  ///                         "maxLength": 50,
  ///                         "minLength": 3,
  ///                         "pattern": "^[a-zA-Z0-9_-]+$"
  ///                     },
  ///                     {
  ///                         "type": "null"
  ///                     }
  ///                 ],
  ///                 "description": "Search query string (alphanumeric with hyphens and underscores)",
  ///                 "title": "Q"
  ///             },
  ///             "description": "Search query string (alphanumeric with hyphens and underscores)",
  ///             "example": "search-term"
  ///         },
  ///         {
  ///             "name": "skip",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "description": "Number of items to skip",
  ///                 "default": 0,
  ///                 "title": "Skip"
  ///             },
  ///             "description": "Number of items to skip",
  ///             "example": 0
  ///         },
  ///         {
  ///             "name": "limit",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "description": "Maximum number of items to return (1-100)",
  ///                 "default": 10,
  ///                 "title": "Limit"
  ///             },
  ///             "description": "Maximum number of items to return (1-100)",
  ///             "example": 10
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Validation-Param Query"
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
  @GET("/params/query")
  Future<HttpResponse<Map<String, dynamic>>> validationParamQuery({
    @Query("q") required String? q,
    @Query("skip") int skip = 0,
    @Query("limit") int limit = 10,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// post
  /// {
  ///     "tags": [
  ///         "validation"
  ///     ],
  ///     "summary": "Demonstrate body parameter validation",
  ///     "description": "Body parameters with validation.",
  ///     "operationId": "validation-param_body",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "application/json": {
  ///                 "schema": {
  ///                     "$ref": "#/components/schemas/Body_validation-param_body"
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
  ///                         "title": "Response Validation-Param Body"
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
  @POST("/params/body")
  Future<HttpResponse<Map<String, dynamic>>> validationParamBody({
    @Body() required BodyValidationParamBody requestBody,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "validation"
  ///     ],
  ///     "summary": "Param Cookie",
  ///     "description": "Cookie parameters.",
  ///     "operationId": "validation-param_cookie",
  ///     "parameters": [
  ///         {
  ///             "name": "session",
  ///             "in": "cookie",
  ///             "required": false,
  ///             "schema": {
  ///                 "anyOf": [
  ///                     {
  ///                         "type": "string"
  ///                     },
  ///                     {
  ///                         "type": "null"
  ///                     }
  ///                 ],
  ///                 "title": "Session"
  ///             }
  ///         },
  ///         {
  ///             "name": "preferences",
  ///             "in": "cookie",
  ///             "required": false,
  ///             "schema": {
  ///                 "anyOf": [
  ///                     {
  ///                         "type": "string"
  ///                     },
  ///                     {
  ///                         "type": "null"
  ///                     }
  ///                 ],
  ///                 "title": "Preferences"
  ///             }
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Validation-Param Cookie"
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
  @GET("/params/cookie")
  Future<HttpResponse<Map<String, dynamic>>> validationParamCookie({
    @Header("session") required String? session,
    @Header("preferences") required String? preferences,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "validation"
  ///     ],
  ///     "summary": "Param Header",
  ///     "description": "Header parameters.",
  ///     "operationId": "validation-param_header",
  ///     "parameters": [
  ///         {
  ///             "name": "user-agent",
  ///             "in": "header",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "string",
  ///                 "title": "User-Agent"
  ///             }
  ///         },
  ///         {
  ///             "name": "x-token",
  ///             "in": "header",
  ///             "required": false,
  ///             "schema": {
  ///                 "anyOf": [
  ///                     {
  ///                         "type": "string"
  ///                     },
  ///                     {
  ///                         "type": "null"
  ///                     }
  ///                 ],
  ///                 "title": "X-Token"
  ///             }
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Validation-Param Header"
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
  @GET("/params/header")
  Future<HttpResponse<Map<String, dynamic>>> validationParamHeader({
    @Header("user-agent") required String userAgent,
    @Header("x-token") required String? xToken,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// post
  /// {
  ///     "tags": [
  ///         "validation"
  ///     ],
  ///     "summary": "Demonstrate complex model validation",
  ///     "description": "Process a model with complex validation rules.",
  ///     "operationId": "validation-validation_complex",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "application/json": {
  ///                 "schema": {
  ///                     "$ref": "#/components/schemas/AllTypesWithValidation"
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
  ///                         "$ref": "#/components/schemas/AllTypesWithValidation"
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
  @POST("/validation/complex")
  Future<HttpResponse<AllTypesWithValidation>> validationValidationComplex({
    @Body() required AllTypesWithValidation requestBody,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "validation"
  ///     ],
  ///     "summary": "Demonstrate conditional validation",
  ///     "description": "Validate that at least one parameter is provided.",
  ///     "operationId": "validation-validation_conditional",
  ///     "parameters": [
  ///         {
  ///             "name": "user_id",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "anyOf": [
  ///                     {
  ///                         "type": "integer"
  ///                     },
  ///                     {
  ///                         "type": "null"
  ///                     }
  ///                 ],
  ///                 "description": "User ID",
  ///                 "title": "User Id"
  ///             },
  ///             "description": "User ID",
  ///             "example": 123
  ///         },
  ///         {
  ///             "name": "username",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "anyOf": [
  ///                     {
  ///                         "type": "string",
  ///                         "minLength": 3
  ///                     },
  ///                     {
  ///                         "type": "null"
  ///                     }
  ///                 ],
  ///                 "description": "Username",
  ///                 "title": "Username"
  ///             },
  ///             "description": "Username",
  ///             "example": "johndoe"
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Validation-Validation Conditional"
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
  @GET("/validation/conditional")
  Future<HttpResponse<Map<String, dynamic>>> validationValidationConditional({
    @Query("user_id") required int? userId,
    @Query("username") required String? username,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// post
  /// {
  ///     "tags": [
  ///         "validation"
  ///     ],
  ///     "summary": "Validate a model with conditional requirements",
  ///     "description": "Validate a body with conditional validation.",
  ///     "operationId": "validation-validation_conditional_body",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "application/json": {
  ///                 "schema": {
  ///                     "$ref": "#/components/schemas/ConditionalBody"
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
  ///                         "$ref": "#/components/schemas/ConditionalBody"
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
  @POST("/validation/conditional_body")
  Future<HttpResponse<ConditionalBody>> validationValidationConditionalBody({
    @Body() required ConditionalBody requestBody,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "validation"
  ///     ],
  ///     "summary": "Demonstrate constrained integer validation",
  ///     "description": "Handle constrained integer with validation.",
  ///     "operationId": "validation-constrained_int",
  ///     "parameters": [
  ///         {
  ///             "name": "value",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "description": "Integer between 0 and 99",
  ///                 "title": "Value"
  ///             },
  ///             "description": "Integer between 0 and 99"
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Validation-Constrained Int"
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
  @GET("/constrained/int")
  Future<HttpResponse<Map<String, dynamic>>> validationConstrainedInt({
    @Query("value") required int value,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "validation"
  ///     ],
  ///     "summary": "Demonstrate constrained float validation",
  ///     "description": "Handle constrained float with validation.",
  ///     "operationId": "validation-constrained_float",
  ///     "parameters": [
  ///         {
  ///             "name": "value",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "number",
  ///                 "description": "Float between 0.0 and 1.0",
  ///                 "title": "Value"
  ///             },
  ///             "description": "Float between 0.0 and 1.0"
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Validation-Constrained Float"
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
  @GET("/constrained/float")
  Future<HttpResponse<Map<String, dynamic>>> validationConstrainedFloat({
    @Query("value") required double value,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "validation"
  ///     ],
  ///     "summary": "Demonstrate constrained string validation",
  ///     "description": "Handle constrained string with validation.",
  ///     "operationId": "validation-constrained_string",
  ///     "parameters": [
  ///         {
  ///             "name": "value",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "string",
  ///                 "maxLength": 50,
  ///                 "minLength": 3,
  ///                 "description": "String between 3-50 chars, alphanumeric with hyphens and underscores",
  ///                 "pattern": "^[a-zA-Z0-9_-]+$",
  ///                 "title": "Value"
  ///             },
  ///             "description": "String between 3-50 chars, alphanumeric with hyphens and underscores"
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Validation-Constrained String"
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
  @GET("/constrained/string")
  Future<HttpResponse<Map<String, dynamic>>> validationConstrainedString({
    @Query("value") required String value,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });
}
