library advanced_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'advanced_client.g.dart';

@RestApi()
abstract class AdvancedClient {
  factory AdvancedClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _AdvancedClient;

  @GET("/special/uuid")
  Future<HttpResponse<Map<String, dynamic>>> advancedSpecialUuid({
    @Queries() required AdvancedSpecialUuidQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Handle UUID parameters',
      r'description': r'Handle UUID parameter.',
      r'operationId': r'advanced-special_uuid',
      r'parameters': [
        {
          r'name': r'id',
          r'in': r'query',
          r'required': true,
          r'schema': {r'type': r'string', r'format': r'uuid', r'title': r'Id'},
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Special Uuid',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/special/enum")
  Future<HttpResponse<Map<String, dynamic>>> advancedSpecialEnum({
    @Queries() required AdvancedSpecialEnumQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Handle enum parameters',
      r'description': r'Handle Enum parameter.',
      r'operationId': r'advanced-special_enum',
      r'parameters': [
        {
          r'name': r'level',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'$ref': r'#/components/schemas/UserLevel',
            r'default': r'basic',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Special Enum',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/special/literal")
  Future<HttpResponse<Map<String, dynamic>>> advancedSpecialLiteral({
    @Queries() required AdvancedSpecialLiteralQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Handle literal type parameters',
      r'description': r'Handle Literal type parameter.',
      r'operationId': r'advanced-special_literal',
      r'parameters': [
        {
          r'name': r'mode',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'enum': [r'light', r'dark', r'system'],
            r'type': r'string',
            r'default': r'system',
            r'title': r'Mode',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Special Literal',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/collection/list")
  Future<HttpResponse<Map<String, dynamic>>> advancedCollectionList({
    @Queries() required AdvancedCollectionListQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Collection List',
      r'description': r'Handle list of strings query parameter.',
      r'operationId': r'advanced-collection_list',
      r'parameters': [
        {
          r'name': r'items',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'array',
            r'items': {r'type': r'string'},
            r'default': [r'default'],
            r'title': r'Items',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Collection List',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/collection/set")
  Future<HttpResponse<Map<String, dynamic>>> advancedCollectionSet({
    @Queries() required AdvancedCollectionSetQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Collection Set',
      r'description': r'Handle set of integers query parameter.',
      r'operationId': r'advanced-collection_set',
      r'parameters': [
        {
          r'name': r'items',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'array',
            r'uniqueItems': true,
            r'items': {r'type': r'integer'},
            r'default': [1, 2, 3],
            r'title': r'Items',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Collection Set',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/collection/dict")
  Future<HttpResponse<Map<String, dynamic>>> advancedCollectionDict({
    @Body() required Map<String, dynamic> requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Collection Dict',
      r'description': r'Handle dictionary in request body.',
      r'operationId': r'advanced-collection_dict',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {
              r'additionalProperties': true,
              r'type': r'object',
              r'title': r'Data',
            },
          },
        },
        r'required': true,
      },
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'additionalProperties': true,
                r'type': r'object',
                r'title': r'Response Advanced-Collection Dict',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/collection/tuple")
  Future<HttpResponse<Map<String, dynamic>>> advancedCollectionTuple({
    @Queries() required AdvancedCollectionTupleQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Collection Tuple',
      r'description': r'Handle fixed-size tuple query parameter.',
      r'operationId': r'advanced-collection_tuple',
      r'parameters': [
        {
          r'name': r'items',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'array',
            r'prefixItems': [
              {r'type': r'integer'},
              {r'type': r'string'},
              {r'type': r'boolean'},
            ],
            r'minItems': 3,
            r'maxItems': 3,
            r'title': r'Items',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Collection Tuple',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/collection/variable_tuple")
  Future<HttpResponse<Map<String, dynamic>>> advancedCollectionVariableTuple({
    @Queries() required AdvancedCollectionVariableTupleQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Collection Variable Tuple',
      r'description': r'Handle variable-size tuple query parameter.',
      r'operationId': r'advanced-collection_variable_tuple',
      r'parameters': [
        {
          r'name': r'items',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'array',
            r'items': {r'type': r'string'},
            r'title': r'Items',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Collection Variable Tuple',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/union/simple")
  Future<HttpResponse<Map<String, dynamic>>> advancedUnionSimple({
    @Queries() required AdvancedUnionSimpleQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Handle union type parameters',
      r'description': r'Handle union type parameter.',
      r'operationId': r'advanced-union_simple',
      r'parameters': [
        {
          r'name': r'value',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'anyOf': [
              {r'type': r'integer'},
              {r'type': r'string'},
              {r'type': r'boolean'},
            ],
            r'title': r'Value',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Union Simple',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/union/optional")
  Future<HttpResponse<Map<String, dynamic>>> advancedUnionOptional({
    @Queries() required AdvancedUnionOptionalQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Handle optional parameters',
      r'description': r'Handle optional type parameter.',
      r'operationId': r'advanced-union_optional',
      r'parameters': [
        {
          r'name': r'value',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {r'type': r'string'},
              {r'type': r'null'},
            ],
            r'title': r'Value',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Union Optional',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/union/modern")
  Future<HttpResponse<Map<String, dynamic>>> advancedUnionModern({
    @Queries() required AdvancedUnionModernQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Handle union with modern Python syntax',
      r'description': r'Handle union with modern Python syntax (Python 3.10+).',
      r'operationId': r'advanced-union_modern',
      r'parameters': [
        {
          r'name': r'value',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {r'type': r'integer'},
              {r'type': r'string'},
              {r'type': r'null'},
            ],
            r'title': r'Value',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Union Modern',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/custom/positive_int")
  Future<HttpResponse<Map<String, dynamic>>> advancedCustomPositiveInt({
    @Queries() required AdvancedCustomPositiveIntQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Demonstrate custom type validation',
      r'description': r'Handle custom type for positive integers.',
      r'operationId': r'advanced-custom_positive_int',
      r'parameters': [
        {
          r'name': r'value',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'integer',
            r'exclusiveMinimum': 0,
            r'title': r'Value',
          },
        },
        {
          r'name': r'value2',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'integer',
            r'exclusiveMaximum': 0,
            r'title': r'Value2',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Custom Positive Int',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/depends/query")
  Future<HttpResponse<Map<String, dynamic>>> advancedDependsQuery({
    @Queries() required AdvancedDependsQueryQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Use dependency injection for common parameters',
      r'description': r'Use dependency injection for common parameters.',
      r'operationId': r'advanced-depends_query',
      r'parameters': [
        {
          r'name': r'q',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {r'type': r'string'},
              {r'type': r'null'},
            ],
            r'description': r'Optional search string',
            r'examples': [r'search'],
            r'title': r'Q',
          },
          r'description': r'Optional search string',
        },
        {
          r'name': r'skip',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'minimum': 0,
            r'description': r'Number of items to skip',
            r'examples': [0],
            r'default': 0,
            r'title': r'Skip',
          },
          r'description': r'Number of items to skip',
        },
        {
          r'name': r'limit',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'maximum': 1000,
            r'minimum': 1,
            r'description': r'Max items to return',
            r'examples': [100],
            r'default': 100,
            r'title': r'Limit',
          },
          r'description': r'Max items to return',
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Depends Query',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/depends/class")
  Future<HttpResponse<Map<String, dynamic>>> advancedDependsClass({
    @Queries() required AdvancedDependsClassQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Use class-based dependency injection',
      r'description': r'Use class-based dependency injection.',
      r'operationId': r'advanced-depends_class',
      r'parameters': [
        {
          r'name': r'db_name',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'string',
            r'default': r'default',
            r'title': r'Db Name',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Depends Class',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/errors/not_found/{item_id}")
  Future<HttpResponse<Map<String, dynamic>>> advancedErrorNotFound({
    @Path("item_id") required int itemId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Demonstrate 404 error handling',
      r'description': r'Raise an HTTP exception if the item is not found.',
      r'operationId': r'advanced-error_not_found',
      r'parameters': [
        {
          r'name': r'item_id',
          r'in': r'path',
          r'required': true,
          r'schema': {r'type': r'integer', r'title': r'Item Id'},
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Error Not Found',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET("/errors/custom")
  Future<HttpResponse<Map<String, dynamic>>> advancedErrorCustom({
    @Queries() required AdvancedErrorCustomQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'advanced'],
      r'summary': r'Demonstrate custom error status codes',
      r'description':
          r'Raise custom HTTP exceptions based on query parameters.',
      r'operationId': r'advanced-error_custom',
      r'parameters': [
        {
          r'name': r'code',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'integer',
            r'description': r'HTTP error code to simulate',
            r'title': r'Code',
          },
          r'description': r'HTTP error code to simulate',
          r'example': 400,
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'object',
                r'additionalProperties': true,
                r'title': r'Response Advanced-Error Custom',
              },
            },
          },
        },
        r'422': {
          r'description': r'Validation Error',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
}
