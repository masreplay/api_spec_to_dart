library validation_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'validation_client.g.dart';

@RestApi()
abstract class ValidationClient {
  factory ValidationClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _ValidationClient;

  @GET("/params/path/{item_id}")
  Future<HttpResponse<Map<String, dynamic>>> validationParamPath({
    @Path("item_id") required int itemId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate path parameter validation',
      r'description': r'Path parameter with validation.',
      r'operationId': r'validation-param_path',
      r'parameters': [
        {
          r'name': r'item_id',
          r'in': r'path',
          r'required': true,
          r'schema': {
            r'type': r'integer',
            r'minimum': 1,
            r'title': r'Item ID',
            r'description': r'The ID of the item',
          },
          r'description': r'The ID of the item',
          r'example': 42,
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
                r'title': r'Response Validation-Param Path',
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
  @GET("/params/query")
  Future<HttpResponse<Map<String, dynamic>>> validationParamQuery({
    @Queries() required ValidationParamQueryQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate query parameter validation',
      r'description': r'Query parameters with validation.',
      r'operationId': r'validation-param_query',
      r'parameters': [
        {
          r'name': r'q',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {
                r'type': r'string',
                r'minLength': 3,
                r'maxLength': 50,
                r'pattern': r'^[a-zA-Z0-9_-]+$',
              },
              {r'type': r'null'},
            ],
            r'description':
                r'Search query string (alphanumeric with hyphens and underscores)',
            r'title': r'Q',
          },
          r'description':
              r'Search query string (alphanumeric with hyphens and underscores)',
          r'example': r'search-term',
        },
        {
          r'name': r'skip',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'minimum': 0,
            r'description': r'Number of items to skip',
            r'default': 0,
            r'title': r'Skip',
          },
          r'description': r'Number of items to skip',
          r'example': 0,
        },
        {
          r'name': r'limit',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'maximum': 100,
            r'minimum': 1,
            r'description': r'Maximum number of items to return (1-100)',
            r'default': 10,
            r'title': r'Limit',
          },
          r'description': r'Maximum number of items to return (1-100)',
          r'example': 10,
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
                r'title': r'Response Validation-Param Query',
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
  @POST("/params/body")
  Future<HttpResponse<Map<String, dynamic>>> validationParamBody({
    @Body() required BodyValidationParamBody requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate body parameter validation',
      r'description': r'Body parameters with validation.',
      r'operationId': r'validation-param_body',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {
              r'$ref': r'#/components/schemas/Body_validation-param_body',
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
                r'title': r'Response Validation-Param Body',
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
  @GET("/params/cookie")
  Future<HttpResponse<Map<String, dynamic>>> validationParamCookie({
    @Header("session") required String? session,
    @Header("preferences") required String? preferences,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Param Cookie',
      r'description': r'Cookie parameters.',
      r'operationId': r'validation-param_cookie',
      r'parameters': [
        {
          r'name': r'session',
          r'in': r'cookie',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {r'type': r'string'},
              {r'type': r'null'},
            ],
            r'title': r'Session',
          },
        },
        {
          r'name': r'preferences',
          r'in': r'cookie',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {r'type': r'string'},
              {r'type': r'null'},
            ],
            r'title': r'Preferences',
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
                r'title': r'Response Validation-Param Cookie',
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
  @GET("/params/header")
  Future<HttpResponse<Map<String, dynamic>>> validationParamHeader({
    @Header("user-agent") required String userMinusAgent,
    @Header("x-token") required String? xMinusToken,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Param Header',
      r'description': r'Header parameters.',
      r'operationId': r'validation-param_header',
      r'parameters': [
        {
          r'name': r'user-agent',
          r'in': r'header',
          r'required': true,
          r'schema': {r'type': r'string', r'title': r'User-Agent'},
        },
        {
          r'name': r'x-token',
          r'in': r'header',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {r'type': r'string'},
              {r'type': r'null'},
            ],
            r'title': r'X-Token',
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
                r'title': r'Response Validation-Param Header',
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
  @POST("/validation/complex")
  Future<HttpResponse<AllTypesWithValidation>> validationValidationComplex({
    @Body() required AllTypesWithValidation requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate complex model validation',
      r'description': r'Process a model with complex validation rules.',
      r'operationId': r'validation-validation_complex',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {
              r'$ref': r'#/components/schemas/AllTypesWithValidation',
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
                r'$ref': r'#/components/schemas/AllTypesWithValidation',
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
  @GET("/validation/conditional")
  Future<HttpResponse<Map<String, dynamic>>> validationValidationConditional({
    @Queries() required ValidationValidationConditionalQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate conditional validation',
      r'description': r'Validate that at least one parameter is provided.',
      r'operationId': r'validation-validation_conditional',
      r'parameters': [
        {
          r'name': r'user_id',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {r'type': r'integer', r'minimum': 1},
              {r'type': r'null'},
            ],
            r'description': r'User ID',
            r'title': r'User Id',
          },
          r'description': r'User ID',
          r'example': 123,
        },
        {
          r'name': r'username',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'anyOf': [
              {r'type': r'string', r'minLength': 3},
              {r'type': r'null'},
            ],
            r'description': r'Username',
            r'title': r'Username',
          },
          r'description': r'Username',
          r'example': r'johndoe',
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
                r'title': r'Response Validation-Validation Conditional',
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
  @POST("/validation/conditional_body")
  Future<HttpResponse<ConditionalBody>> validationValidationConditionalBody({
    @Body() required ConditionalBody requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Validate a model with conditional requirements',
      r'description': r'Validate a body with conditional validation.',
      r'operationId': r'validation-validation_conditional_body',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/ConditionalBody'},
          },
        },
        r'required': true,
      },
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/ConditionalBody'},
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
  @GET("/constrained/int")
  Future<HttpResponse<Map<String, dynamic>>> validationConstrainedInt({
    @Queries() required ValidationConstrainedIntQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate constrained integer validation',
      r'description': r'Handle constrained integer with validation.',
      r'operationId': r'validation-constrained_int',
      r'parameters': [
        {
          r'name': r'value',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'integer',
            r'minimum': 0,
            r'exclusiveMaximum': 100,
            r'description': r'Integer between 0 and 99',
            r'examples': [42],
            r'title': r'Value',
          },
          r'description': r'Integer between 0 and 99',
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
                r'title': r'Response Validation-Constrained Int',
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
  @GET("/constrained/float")
  Future<HttpResponse<Map<String, dynamic>>> validationConstrainedFloat({
    @Queries() required ValidationConstrainedFloatQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate constrained float validation',
      r'description': r'Handle constrained float with validation.',
      r'operationId': r'validation-constrained_float',
      r'parameters': [
        {
          r'name': r'value',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'number',
            r'maximum': 1.0,
            r'minimum': 0.0,
            r'description': r'Float between 0.0 and 1.0',
            r'examples': [0.5],
            r'title': r'Value',
          },
          r'description': r'Float between 0.0 and 1.0',
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
                r'title': r'Response Validation-Constrained Float',
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
  @GET("/constrained/string")
  Future<HttpResponse<Map<String, dynamic>>> validationConstrainedString({
    @Queries() required ValidationConstrainedStringQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'validation'],
      r'summary': r'Demonstrate constrained string validation',
      r'description': r'Handle constrained string with validation.',
      r'operationId': r'validation-constrained_string',
      r'parameters': [
        {
          r'name': r'value',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'string',
            r'minLength': 3,
            r'maxLength': 50,
            r'pattern': r'^[a-zA-Z0-9_-]+$',
            r'description':
                r'String between 3-50 chars, alphanumeric with hyphens and underscores',
            r'examples': [r'example-value'],
            r'title': r'Value',
          },
          r'description':
              r'String between 3-50 chars, alphanumeric with hyphens and underscores',
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
                r'title': r'Response Validation-Constrained String',
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
