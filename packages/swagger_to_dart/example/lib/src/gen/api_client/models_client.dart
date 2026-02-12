library models_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'models_client.g.dart';

@RestApi()
abstract class ModelsClient {
  factory ModelsClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _ModelsClient;

  @POST("/models/user")
  Future<HttpResponse<User>> modelsCreateUser({
    @Body() required UserCreate requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'models'],
      r'summary': r'Create User',
      r'description': r'Create a new user from a Pydantic model.',
      r'operationId': r'models-create_user',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/UserCreate'},
          },
        },
        r'required': true,
      },
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/User'},
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
  @GET("/models/location")
  Future<HttpResponse<Map<String, dynamic>>> modelsGetLocation({
    @Body() required Location requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'models'],
      r'summary': r'Process location information',
      r'description': r'Handle a Pydantic model as query parameters.',
      r'operationId': r'models-get_location',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/Location'},
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
                r'title': r'Response Models-Get Location',
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
  @GET("/response/filtered")
  Future<HttpResponse<User>> modelsResponseFiltered({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'models'],
      r'summary': r'Return a filtered response model',
      r'description': r'Return a response filtered by the response_model.',
      r'operationId': r'models-response_filtered',
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/User'},
            },
          },
        },
      },
    },
  });
  @GET("/response/multiple")
  Future<HttpResponse<ResponseModelsResponseMultiple>> modelsResponseMultiple({
    @Queries() required ModelsResponseMultipleQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'models'],
      r'summary': r'Return different response models based on query',
      r'description':
          r'Return different response models based on query parameters.',
      r'operationId': r'models-response_multiple',
      r'parameters': [
        {
          r'name': r'is_user',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'boolean',
            r'description': r'Whether to return a user or location',
            r'default': true,
            r'title': r'Is User',
          },
          r'description': r'Whether to return a user or location',
          r'example': true,
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'anyOf': [
                  {r'$ref': r'#/components/schemas/User'},
                  {r'$ref': r'#/components/schemas/Location'},
                ],
                r'title': r'Response Models-Response Multiple',
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
  @GET("/response/list")
  Future<HttpResponse<List<User>>> modelsResponseList({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'models'],
      r'summary': r'Return a list of models',
      r'description': r'Return a list of items with a response model.',
      r'operationId': r'models-response_list',
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'items': {r'$ref': r'#/components/schemas/User'},
                r'type': r'array',
                r'title': r'Response Models-Response List',
              },
            },
          },
        },
      },
    },
  });
}
