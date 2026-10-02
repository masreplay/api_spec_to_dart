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

  @POST('/models/user')
  Future<HttpResponse<User>> modelsCreateUser({
    @Body() required UserCreate requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['models'],
      'summary': 'Create User',
      'description': 'Create a new user from a Pydantic model.',
      'operationId': 'models-create_user',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/UserCreate'},
          },
        },
        'required': true,
      },
      'responses': {
        '200': {
          'description': 'Successful Response',
          'content': {
            'application/json': {
              'schema': {'\$ref': '#/components/schemas/User'},
            },
          },
        },
        '422': {
          'description': 'Validation Error',
          'content': {
            'application/json': {
              'schema': {'\$ref': '#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET('/models/location')
  Future<HttpResponse<Map<String, dynamic>>> modelsGetLocation({
    @Body() required Location requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['models'],
      'summary': 'Process location information',
      'description': 'Handle a Pydantic model as query parameters.',
      'operationId': 'models-get_location',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/Location'},
          },
        },
        'required': true,
      },
      'responses': {
        '200': {
          'description': 'Successful Response',
          'content': {
            'application/json': {
              'schema': {
                'additionalProperties': true,
                'type': 'object',
                'title': 'Response Models-Get Location',
              },
            },
          },
        },
        '422': {
          'description': 'Validation Error',
          'content': {
            'application/json': {
              'schema': {'\$ref': '#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET('/response/filtered')
  Future<HttpResponse<User>> modelsResponseFiltered({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['models'],
      'summary': 'Return a filtered response model',
      'description': 'Return a response filtered by the response_model.',
      'operationId': 'models-response_filtered',
      'responses': {
        '200': {
          'description': 'Successful Response',
          'content': {
            'application/json': {
              'schema': {'\$ref': '#/components/schemas/User'},
            },
          },
        },
      },
    },
  });
  @GET('/response/multiple')
  Future<HttpResponse<ResponseModelsResponseMultiple>> modelsResponseMultiple({
    @Queries() required ModelsResponseMultipleQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['models'],
      'summary': 'Return different response models based on query',
      'description':
          'Return different response models based on query parameters.',
      'operationId': 'models-response_multiple',
      'parameters': [
        {
          'name': 'is_user',
          'in': 'query',
          'required': false,
          'schema': {
            'type': 'boolean',
            'description': 'Whether to return a user or location',
            'default': true,
            'title': 'Is User',
          },
          'description': 'Whether to return a user or location',
        },
      ],
      'responses': {
        '200': {
          'description': 'Successful Response',
          'content': {
            'application/json': {
              'schema': {
                'anyOf': [
                  {'\$ref': '#/components/schemas/User'},
                  {'\$ref': '#/components/schemas/Location'},
                ],
                'title': 'Response Models-Response Multiple',
              },
            },
          },
        },
        '422': {
          'description': 'Validation Error',
          'content': {
            'application/json': {
              'schema': {'\$ref': '#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET('/response/list')
  Future<HttpResponse<List<User>>> modelsResponseList({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['models'],
      'summary': 'Return a list of models',
      'description': 'Return a list of items with a response model.',
      'operationId': 'models-response_list',
      'responses': {
        '200': {
          'description': 'Successful Response',
          'content': {
            'application/json': {
              'schema': {
                'items': {'\$ref': '#/components/schemas/User'},
                'type': 'array',
                'title': 'Response Models-Response List',
              },
            },
          },
        },
      },
    },
  });
}
