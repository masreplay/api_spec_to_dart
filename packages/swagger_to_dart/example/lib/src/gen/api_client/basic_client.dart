library basic_client;

import 'package:dio/dio.dart' hide Headers;
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

  @GET("/basic/number/{num}")
  Future<HttpResponse<Map<String, dynamic>>> basicBasicNumber({
    @Path("num") required int num,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle integer path parameter',
      r'description': r'Handle integer path parameter.',
      r'operationId': r'basic-basic_number',
      r'parameters': [
        {
          r'name': r'num',
          r'in': r'path',
          r'required': true,
          r'schema': {r'type': r'integer', r'title': r'Num'},
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
                r'title': r'Response Basic-Basic Number',
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
  @GET("/basic/float/{num}")
  Future<HttpResponse<Map<String, dynamic>>> basicBasicFloat({
    @Path("num") required double num,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle float path parameter',
      r'description': r'Handle float path parameter.',
      r'operationId': r'basic-basic_float',
      r'parameters': [
        {
          r'name': r'num',
          r'in': r'path',
          r'required': true,
          r'schema': {r'type': r'number', r'title': r'Num'},
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
                r'title': r'Response Basic-Basic Float',
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
  @GET("/basic/boolean")
  Future<HttpResponse<Map<String, dynamic>>> basicBasicBoolean({
    @Queries() required BasicBasicBooleanQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle boolean query parameter',
      r'description': r'Handle boolean query parameter with default value.',
      r'operationId': r'basic-basic_boolean',
      r'parameters': [
        {
          r'name': r'flag',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'boolean',
            r'default': false,
            r'title': r'Flag',
          },
          r'example': true,
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
                r'title': r'Response Basic-Basic Boolean',
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
  @GET("/basic/string")
  Future<HttpResponse<Map<String, dynamic>>> basicBasicString({
    @Queries() required BasicBasicStringQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle string query parameter',
      r'description': r'Handle string query parameter with validation.',
      r'operationId': r'basic-basic_string',
      r'parameters': [
        {
          r'name': r'text',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'string',
            r'minLength': 3,
            r'maxLength': 50,
            r'title': r'Text',
          },
          r'example': r'example_text',
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
                r'title': r'Response Basic-Basic String',
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
  @GET("/datetime/date")
  Future<HttpResponse<Map<String, dynamic>>> basicDatetimeDate({
    @Queries() required BasicDatetimeDateQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle date parameters',
      r'description': r'Handle date parameter (YYYY-MM-DD).',
      r'operationId': r'basic-datetime_date',
      r'parameters': [
        {
          r'name': r'd',
          r'in': r'query',
          r'required': true,
          r'schema': {r'type': r'string', r'format': r'date', r'title': r'D'},
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
                r'title': r'Response Basic-Datetime Date',
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
  @GET("/datetime/datetime")
  Future<HttpResponse<Map<String, dynamic>>> basicDatetimeDatetime({
    @Queries() required BasicDatetimeDatetimeQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle datetime parameters',
      r'description': r'Handle datetime parameter (YYYY-MM-DDThh:mm:ss).',
      r'operationId': r'basic-datetime_datetime',
      r'parameters': [
        {
          r'name': r'dt',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'string',
            r'format': r'date-time',
            r'title': r'Dt',
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
                r'title': r'Response Basic-Datetime Datetime',
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
  @POST("/datetime/datetime")
  Future<HttpResponse<Map<String, dynamic>>> basicCreateDatetimeDatetime({
    @Queries() required BasicCreateDatetimeDatetimeQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle datetime parameters',
      r'description': r'Handle datetime parameter (YYYY-MM-DDThh:mm:ss).',
      r'operationId': r'basic-create_datetime_datetime',
      r'parameters': [
        {
          r'name': r'dt',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'string',
            r'format': r'date-time',
            r'title': r'Dt',
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
                r'title': r'Response Basic-Create Datetime Datetime',
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
  @GET("/datetime/time")
  Future<HttpResponse<Map<String, dynamic>>> basicDatetimeTime({
    @Queries() required BasicDatetimeTimeQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle time parameters',
      r'description': r'Handle time parameter (hh:mm:ss).',
      r'operationId': r'basic-datetime_time',
      r'parameters': [
        {
          r'name': r't',
          r'in': r'query',
          r'required': true,
          r'schema': {r'type': r'string', r'format': r'time', r'title': r'T'},
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
                r'title': r'Response Basic-Datetime Time',
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
  @GET("/datetime/timedelta")
  Future<HttpResponse<Map<String, dynamic>>> basicDatetimeTimedelta({
    @Queries() required BasicDatetimeTimedeltaQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'basic'],
      r'summary': r'Handle timedelta parameters',
      r'description': r'Handle timedelta parameter (in seconds).',
      r'operationId': r'basic-datetime_timedelta',
      r'parameters': [
        {
          r'name': r'td',
          r'in': r'query',
          r'required': true,
          r'schema': {
            r'type': r'string',
            r'format': r'duration',
            r'title': r'Td',
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
                r'title': r'Response Basic-Datetime Timedelta',
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
