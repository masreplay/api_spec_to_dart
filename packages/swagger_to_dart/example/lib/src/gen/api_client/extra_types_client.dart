library extra_types_client;

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

  @POST("/extra_types/color/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesCreateColor({
    @Body() required ColorModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Create Color',
      r'operationId': r'Extra Types-create_color',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/ColorModel'},
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
                r'title': r'Response Extra Types-Create Color',
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
  @POST("/extra_types/country/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessCountry({
    @Body() required CountryModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Country',
      r'operationId': r'Extra Types-process_country',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CountryModel'},
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
                r'title': r'Response Extra Types-Process Country',
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
  @POST("/extra_types/payment/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessPaymentCard({
    @Body() required PaymentCardModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Payment Card',
      r'operationId': r'Extra Types-process_payment_card',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/PaymentCardModel'},
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
                r'title': r'Response Extra Types-Process Payment Card',
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
  @POST("/extra_types/phone/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessPhone({
    @Body() required PhoneNumberModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Phone',
      r'operationId': r'Extra Types-process_phone',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/PhoneNumberModel'},
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
                r'title': r'Response Extra Types-Process Phone',
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
  @POST("/extra_types/routing/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessRouting({
    @Body() required ABARoutingModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Routing',
      r'operationId': r'Extra Types-process_routing',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/ABARoutingModel'},
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
                r'title': r'Response Extra Types-Process Routing',
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
  @POST("/extra_types/coordinate/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessCoordinate({
    @Body() required CoordinateModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Coordinate',
      r'operationId': r'Extra Types-process_coordinate',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CoordinateModel'},
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
                r'title': r'Response Extra Types-Process Coordinate',
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
  @POST("/extra_types/mac/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessMac({
    @Body() required MACAddressModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Mac',
      r'operationId': r'Extra Types-process_mac',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/MACAddressModel'},
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
                r'title': r'Response Extra Types-Process Mac',
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
  @POST("/extra_types/isbn/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessIsbn({
    @Body() required IsbnModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Isbn',
      r'operationId': r'Extra Types-process_isbn',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/ISBNModel'},
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
                r'title': r'Response Extra Types-Process Isbn',
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
  @POST("/extra_types/currency/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessCurrency({
    @Body() required CurrencyModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Currency',
      r'operationId': r'Extra Types-process_currency',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CurrencyModel'},
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
                r'title': r'Response Extra Types-Process Currency',
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
  @POST("/extra_types/domain/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessDomain({
    @Body() required DomainModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Domain',
      r'operationId': r'Extra Types-process_domain',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/DomainModel'},
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
                r'title': r'Response Extra Types-Process Domain',
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
  @POST("/extra_types/language/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessLanguage({
    @Body() required LanguageModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Language',
      r'operationId': r'Extra Types-process_language',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/LanguageModel'},
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
                r'title': r'Response Extra Types-Process Language',
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
  @POST("/extra_types/script/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessScript({
    @Body() required ScriptCodeModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Script',
      r'operationId': r'Extra Types-process_script',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/ScriptCodeModel'},
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
                r'title': r'Response Extra Types-Process Script',
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
  @POST("/extra_types/version/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessVersion({
    @Body() required VersionModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Version',
      r'operationId': r'Extra Types-process_version',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/VersionModel'},
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
                r'title': r'Response Extra Types-Process Version',
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
  @POST("/extra_types/s3/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessS3Path({
    @Body() required S3PathModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process S3 Path',
      r'operationId': r'Extra Types-process_s3_path',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/S3PathModel'},
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
                r'title': r'Response Extra Types-Process S3 Path',
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
  @POST("/extra_types/timezone/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessTimezone({
    @Body() required TimeZoneModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Timezone',
      r'operationId': r'Extra Types-process_timezone',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/TimeZoneModel'},
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
                r'title': r'Response Extra Types-Process Timezone',
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
  @POST("/extra_types/ulid/")
  Future<HttpResponse<Map<String, dynamic>>> extraTypesProcessUlid({
    @Body() required UlidModel requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Extra Types'],
      r'summary': r'Process Ulid',
      r'operationId': r'Extra Types-process_ulid',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/ULIDModel'},
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
                r'title': r'Response Extra Types-Process Ulid',
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
