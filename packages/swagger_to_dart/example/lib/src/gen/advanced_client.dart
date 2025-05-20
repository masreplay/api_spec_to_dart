library;

import 'package:retrofit/retrofit.dart';
import 'exports.dart';
part 'advanced_client.g.dart';

@RestApi()
abstract class AdvancedClient {
  factory AdvancedClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _AdvancedClient;

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Handle UUID parameters",
  ///     "description": "Handle UUID parameter.",
  ///     "operationId": "advanced-special_uuid",
  ///     "parameters": [
  ///         {
  ///             "name": "id",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "string",
  ///                 "format": "uuid",
  ///                 "title": "Id"
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
  ///                         "title": "Response Advanced-Special Uuid"
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
  @GET("/special/uuid")
  Future<HttpResponse> advancedSpecialUuid({
    required String id,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Handle enum parameters",
  ///     "description": "Handle Enum parameter.",
  ///     "operationId": "advanced-special_enum",
  ///     "parameters": [
  ///         {
  ///             "name": "level",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "$ref": "#/components/schemas/UserLevel",
  ///                 "default": "basic"
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
  ///                         "title": "Response Advanced-Special Enum"
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
  @GET("/special/enum")
  Future<HttpResponse> advancedSpecialEnum({
    required UserLevel level,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Handle literal type parameters",
  ///     "description": "Handle Literal type parameter.",
  ///     "operationId": "advanced-special_literal",
  ///     "parameters": [
  ///         {
  ///             "name": "mode",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "enum": [
  ///                     "light",
  ///                     "dark",
  ///                     "system"
  ///                 ],
  ///                 "type": "string",
  ///                 "default": "system",
  ///                 "title": "Mode"
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
  ///                         "title": "Response Advanced-Special Literal"
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
  @GET("/special/literal")
  Future<HttpResponse> advancedSpecialLiteral({
    required String mode,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Collection List",
  ///     "description": "Handle list of strings query parameter.",
  ///     "operationId": "advanced-collection_list",
  ///     "parameters": [
  ///         {
  ///             "name": "items",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "array",
  ///                 "items": {
  ///                     "type": "string"
  ///                 },
  ///                 "default": [
  ///                     "default"
  ///                 ],
  ///                 "title": "Items"
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
  ///                         "title": "Response Advanced-Collection List"
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
  @GET("/collection/list")
  Future<HttpResponse> advancedCollectionList({
    required List<String> items,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Collection Set",
  ///     "description": "Handle set of integers query parameter.",
  ///     "operationId": "advanced-collection_set",
  ///     "parameters": [
  ///         {
  ///             "name": "items",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "array",
  ///                 "items": {
  ///                     "type": "integer"
  ///                 },
  ///                 "default": [
  ///                     1,
  ///                     2,
  ///                     3
  ///                 ],
  ///                 "title": "Items"
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
  ///                         "title": "Response Advanced-Collection Set"
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
  @GET("/collection/set")
  Future<HttpResponse> advancedCollectionSet({
    required List<int> items,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Collection Dict",
  ///     "description": "Handle dictionary in request body.",
  ///     "operationId": "advanced-collection_dict",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "application/json": {
  ///                 "schema": {
  ///                     "type": "object",
  ///                     "title": "Data"
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
  ///                         "title": "Response Advanced-Collection Dict"
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
  @GET("/collection/dict")
  Future<HttpResponse> advancedCollectionDict({
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Collection Tuple",
  ///     "description": "Handle fixed-size tuple query parameter.",
  ///     "operationId": "advanced-collection_tuple",
  ///     "parameters": [
  ///         {
  ///             "name": "items",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "array",
  ///                 "title": "Items"
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
  ///                         "title": "Response Advanced-Collection Tuple"
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
  @GET("/collection/tuple")
  Future<HttpResponse> advancedCollectionTuple({
    required List<dynamic> items,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Collection Variable Tuple",
  ///     "description": "Handle variable-size tuple query parameter.",
  ///     "operationId": "advanced-collection_variable_tuple",
  ///     "parameters": [
  ///         {
  ///             "name": "items",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "array",
  ///                 "items": {
  ///                     "type": "string"
  ///                 },
  ///                 "title": "Items"
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
  ///                         "title": "Response Advanced-Collection Variable Tuple"
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
  @GET("/collection/variable_tuple")
  Future<HttpResponse> advancedCollectionVariableTuple({
    required List<String> items,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Handle union type parameters",
  ///     "description": "Handle union type parameter.",
  ///     "operationId": "advanced-union_simple",
  ///     "parameters": [
  ///         {
  ///             "name": "value",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "anyOf": [
  ///                     {
  ///                         "type": "integer"
  ///                     },
  ///                     {
  ///                         "type": "string"
  ///                     },
  ///                     {
  ///                         "type": "boolean"
  ///                     }
  ///                 ],
  ///                 "title": "Value"
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
  ///                         "title": "Response Advanced-Union Simple"
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
  @GET("/union/simple")
  Future<HttpResponse> advancedUnionSimple({
    required dynamic value,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Handle optional parameters",
  ///     "description": "Handle optional type parameter.",
  ///     "operationId": "advanced-union_optional",
  ///     "parameters": [
  ///         {
  ///             "name": "value",
  ///             "in": "query",
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
  ///                 "title": "Value"
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
  ///                         "title": "Response Advanced-Union Optional"
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
  @GET("/union/optional")
  Future<HttpResponse> advancedUnionOptional({
    required String? value,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Handle union with modern Python syntax",
  ///     "description": "Handle union with modern Python syntax (Python 3.10+).",
  ///     "operationId": "advanced-union_modern",
  ///     "parameters": [
  ///         {
  ///             "name": "value",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "anyOf": [
  ///                     {
  ///                         "type": "integer"
  ///                     },
  ///                     {
  ///                         "type": "string"
  ///                     },
  ///                     {
  ///                         "type": "null"
  ///                     }
  ///                 ],
  ///                 "title": "Value"
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
  ///                         "title": "Response Advanced-Union Modern"
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
  @GET("/union/modern")
  Future<HttpResponse> advancedUnionModern({
    required dynamic value,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Demonstrate custom type validation",
  ///     "description": "Handle custom type for positive integers.",
  ///     "operationId": "advanced-custom_positive_int",
  ///     "parameters": [
  ///         {
  ///             "name": "value",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "title": "Value"
  ///             }
  ///         },
  ///         {
  ///             "name": "value2",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "title": "Value2"
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
  ///                         "title": "Response Advanced-Custom Positive Int"
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
  @GET("/custom/positive_int")
  Future<HttpResponse> advancedCustomPositiveInt({
    required int value,
    required int value2,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Use dependency injection for common parameters",
  ///     "description": "Use dependency injection for common parameters.",
  ///     "operationId": "advanced-depends_query",
  ///     "parameters": [
  ///         {
  ///             "name": "q",
  ///             "in": "query",
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
  ///                 "description": "Optional search string",
  ///                 "title": "Q"
  ///             },
  ///             "description": "Optional search string"
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
  ///             "description": "Number of items to skip"
  ///         },
  ///         {
  ///             "name": "limit",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "description": "Max items to return",
  ///                 "default": 100,
  ///                 "title": "Limit"
  ///             },
  ///             "description": "Max items to return"
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Advanced-Depends Query"
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
  @GET("/depends/query")
  Future<HttpResponse> advancedDependsQuery({
    required String? q,
    required int skip,
    required int limit,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Use class-based dependency injection",
  ///     "description": "Use class-based dependency injection.",
  ///     "operationId": "advanced-depends_class",
  ///     "parameters": [
  ///         {
  ///             "name": "db_name",
  ///             "in": "query",
  ///             "required": false,
  ///             "schema": {
  ///                 "type": "string",
  ///                 "default": "default",
  ///                 "title": "Db Name"
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
  ///                         "title": "Response Advanced-Depends Class"
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
  @GET("/depends/class")
  Future<HttpResponse> advancedDependsClass({
    required String dbName,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Demonstrate 404 error handling",
  ///     "description": "Raise an HTTP exception if the item is not found.",
  ///     "operationId": "advanced-error_not_found",
  ///     "parameters": [
  ///         {
  ///             "name": "item_id",
  ///             "in": "path",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "title": "Item Id"
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
  ///                         "title": "Response Advanced-Error Not Found"
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
  @GET("/errors/not_found/{item_id}")
  Future<HttpResponse> advancedErrorNotFound({
    required int itemId,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "advanced"
  ///     ],
  ///     "summary": "Demonstrate custom error status codes",
  ///     "description": "Raise custom HTTP exceptions based on query parameters.",
  ///     "operationId": "advanced-error_custom",
  ///     "parameters": [
  ///         {
  ///             "name": "code",
  ///             "in": "query",
  ///             "required": true,
  ///             "schema": {
  ///                 "type": "integer",
  ///                 "description": "HTTP error code to simulate",
  ///                 "title": "Code"
  ///             },
  ///             "description": "HTTP error code to simulate",
  ///             "example": 400
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Advanced-Error Custom"
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
  @GET("/errors/custom")
  Future<HttpResponse> advancedErrorCustom({
    required int code,
    Map<String, dynamic>? extras,
    CancelRequest? cancelRequest,
    ReceiveProgress? receiveProgress,
    SendProgress? sendProgress,
  });
}
