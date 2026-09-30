import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import '../models/models.dart';
part 'extra_types_client.g.dart';

@RestApi()
abstract class ExtraTypesClient {
  factory ExtraTypesClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _ExtraTypesClient;

  @POST('/extra_types/color/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesCreateColor({
    @Body() required ColorModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Create Color',
      'operationId': 'Extra Types-create_color',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/ColorModel'},
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
                'title': 'Response Extra Types-Create Color',
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
  @POST('/extra_types/country/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessCountry({
    @Body() required CountryModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Country',
      'operationId': 'Extra Types-process_country',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/CountryModel'},
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
                'title': 'Response Extra Types-Process Country',
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
  @POST('/extra_types/payment/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessPaymentCard({
    @Body() required PaymentCardModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Payment Card',
      'operationId': 'Extra Types-process_payment_card',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/PaymentCardModel'},
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
                'title': 'Response Extra Types-Process Payment Card',
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
  @POST('/extra_types/phone/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessPhone({
    @Body() required PhoneNumberModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Phone',
      'operationId': 'Extra Types-process_phone',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/PhoneNumberModel'},
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
                'title': 'Response Extra Types-Process Phone',
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
  @POST('/extra_types/routing/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessRouting({
    @Body() required ABARoutingModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Routing',
      'operationId': 'Extra Types-process_routing',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/ABARoutingModel'},
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
                'title': 'Response Extra Types-Process Routing',
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
  @POST('/extra_types/coordinate/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessCoordinate({
    @Body() required CoordinateModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Coordinate',
      'operationId': 'Extra Types-process_coordinate',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/CoordinateModel'},
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
                'title': 'Response Extra Types-Process Coordinate',
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
  @POST('/extra_types/mac/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessMac({
    @Body() required MACAddressModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Mac',
      'operationId': 'Extra Types-process_mac',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/MACAddressModel'},
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
                'title': 'Response Extra Types-Process Mac',
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
  @POST('/extra_types/isbn/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessIsbn({
    @Body() required IsbnModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Isbn',
      'operationId': 'Extra Types-process_isbn',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/ISBNModel'},
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
                'title': 'Response Extra Types-Process Isbn',
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
  @POST('/extra_types/currency/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessCurrency({
    @Body() required CurrencyModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Currency',
      'operationId': 'Extra Types-process_currency',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/CurrencyModel'},
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
                'title': 'Response Extra Types-Process Currency',
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
  @POST('/extra_types/domain/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessDomain({
    @Body() required DomainModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Domain',
      'operationId': 'Extra Types-process_domain',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/DomainModel'},
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
                'title': 'Response Extra Types-Process Domain',
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
  @POST('/extra_types/language/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessLanguage({
    @Body() required LanguageModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Language',
      'operationId': 'Extra Types-process_language',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/LanguageModel'},
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
                'title': 'Response Extra Types-Process Language',
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
  @POST('/extra_types/script/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessScript({
    @Body() required ScriptCodeModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Script',
      'operationId': 'Extra Types-process_script',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/ScriptCodeModel'},
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
                'title': 'Response Extra Types-Process Script',
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
  @POST('/extra_types/version/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessVersion({
    @Body() required VersionModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Version',
      'operationId': 'Extra Types-process_version',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/VersionModel'},
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
                'title': 'Response Extra Types-Process Version',
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
  @POST('/extra_types/s3/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessS3Path({
    @Body() required S3PathModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process S3 Path',
      'operationId': 'Extra Types-process_s3_path',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/S3PathModel'},
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
                'title': 'Response Extra Types-Process S3 Path',
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
  @POST('/extra_types/timezone/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessTimezone({
    @Body() required TimeZoneModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Timezone',
      'operationId': 'Extra Types-process_timezone',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/TimeZoneModel'},
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
                'title': 'Response Extra Types-Process Timezone',
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
  @POST('/extra_types/ulid/')
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessUlid({
    @Body() required UlidModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['Extra Types'],
      'summary': 'Process Ulid',
      'operationId': 'Extra Types-process_ulid',
      'requestBody': {
        'content': {
          'application/json': {
            'schema': {'\$ref': '#/components/schemas/ULIDModel'},
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
                'title': 'Response Extra Types-Process Ulid',
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
}
