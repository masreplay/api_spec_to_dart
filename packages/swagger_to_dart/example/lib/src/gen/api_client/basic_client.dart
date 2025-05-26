library;

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'basic_client.g.dart';

@RestApi()
abstract class BasicClient {
  factory BasicClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _BasicClient;

  /// get
  /// {
  ///     "tags": [
  ///         "basic"
  ///     ],
  ///     "summary": "Handle integer path parameter",
  ///     "description": "Handle integer path parameter.",
  ///     "operationId": "basic-basic_number",
  ///     "parameters": [
  ///         {
  ///             "name": "num",
  ///             "in": "path",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "title": "Num"
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
  ///                         "title": "Response Basic-Basic Number"
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
  @GET("/basic/number/{num}")
  Future<HttpResponse<Map<String, dynamic>>> basicBasicNumber({
    @Path("num") required int num,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "basic"
  ///     ],
  ///     "summary": "Handle float path parameter",
  ///     "description": "Handle float path parameter.",
  ///     "operationId": "basic-basic_float",
  ///     "parameters": [
  ///         {
  ///             "name": "num",
  ///             "in": "path",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "number",
  ///                 "title": "Num"
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
  ///                         "title": "Response Basic-Basic Float"
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
  @GET("/basic/float/{num}")
  Future<HttpResponse<Map<String, dynamic>>> basicBasicFloat({
    @Path("num") required double num,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "basic"
  ///     ],
  ///     "summary": "Handle boolean query parameter",
  ///     "description": "Handle boolean query parameter with default value.",
  ///     "operationId": "basic-basic_boolean",
  ///     "parameters": [
  ///         {
  ///             "name": "flag",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "boolean",
  ///                 "default": false,
  ///                 "title": "Flag"
  ///             },
  ///             "example": true
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Basic-Basic Boolean"
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
  @GET("/basic/boolean")
  Future<HttpResponse<Map<String, dynamic>>> basicBasicBoolean({
    @Queries() required BasicBasicBooleanQueryParameters queries,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "basic"
  ///     ],
  ///     "summary": "Handle string query parameter",
  ///     "description": "Handle string query parameter with validation.",
  ///     "operationId": "basic-basic_string",
  ///     "parameters": [
  ///         {
  ///             "name": "text",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "string",
  ///                 "maxLength": 50,
  ///                 "minLength": 3,
  ///                 "title": "Text"
  ///             },
  ///             "example": "example_text"
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Basic-Basic String"
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
  @GET("/basic/string")
  Future<HttpResponse<Map<String, dynamic>>> basicBasicString({
    @Queries() required BasicBasicStringQueryParameters queries,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "basic"
  ///     ],
  ///     "summary": "Handle date parameters",
  ///     "description": "Handle date parameter (YYYY-MM-DD).",
  ///     "operationId": "basic-datetime_date",
  ///     "parameters": [
  ///         {
  ///             "name": "d",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "string",
  ///                 "format": "date",
  ///                 "title": "D"
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
  ///                         "title": "Response Basic-Datetime Date"
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
  @GET("/datetime/date")
  Future<HttpResponse<Map<String, dynamic>>> basicDatetimeDate({
    @Queries() required BasicDatetimeDateQueryParameters queries,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "basic"
  ///     ],
  ///     "summary": "Handle datetime parameters",
  ///     "description": "Handle datetime parameter (YYYY-MM-DDThh:mm:ss).",
  ///     "operationId": "basic-datetime_datetime",
  ///     "parameters": [
  ///         {
  ///             "name": "dt",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "string",
  ///                 "format": "date-time",
  ///                 "title": "Dt"
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
  ///                         "title": "Response Basic-Datetime Datetime"
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
  @GET("/datetime/datetime")
  Future<HttpResponse<Map<String, dynamic>>> basicDatetimeDatetime({
    @Queries() required BasicDatetimeDatetimeQueryParameters queries,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// post
  /// {
  ///     "tags": [
  ///         "basic"
  ///     ],
  ///     "summary": "Handle datetime parameters",
  ///     "description": "Handle datetime parameter (YYYY-MM-DDThh:mm:ss).",
  ///     "operationId": "basic-create_datetime_datetime",
  ///     "parameters": [
  ///         {
  ///             "name": "dt",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "string",
  ///                 "format": "date-time",
  ///                 "title": "Dt"
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
  ///                         "title": "Response Basic-Create Datetime Datetime"
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
  @POST("/datetime/datetime")
  Future<HttpResponse<Map<String, dynamic>>> basicCreateDatetimeDatetime({
    @Queries() required BasicCreateDatetimeDatetimeQueryParameters queries,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "basic"
  ///     ],
  ///     "summary": "Handle time parameters",
  ///     "description": "Handle time parameter (hh:mm:ss).",
  ///     "operationId": "basic-datetime_time",
  ///     "parameters": [
  ///         {
  ///             "name": "t",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "string",
  ///                 "format": "time",
  ///                 "title": "T"
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
  ///                         "title": "Response Basic-Datetime Time"
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
  @GET("/datetime/time")
  Future<HttpResponse<Map<String, dynamic>>> basicDatetimeTime({
    @Queries() required BasicDatetimeTimeQueryParameters queries,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "basic"
  ///     ],
  ///     "summary": "Handle timedelta parameters",
  ///     "description": "Handle timedelta parameter (in seconds).",
  ///     "operationId": "basic-datetime_timedelta",
  ///     "parameters": [
  ///         {
  ///             "name": "td",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "string",
  ///                 "format": "duration",
  ///                 "title": "Td"
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
  ///                         "title": "Response Basic-Datetime Timedelta"
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
  @GET("/datetime/timedelta")
  Future<HttpResponse<Map<String, dynamic>>> basicDatetimeTimedelta({
    @Queries() required BasicDatetimeTimedeltaQueryParameters queries,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });
}
