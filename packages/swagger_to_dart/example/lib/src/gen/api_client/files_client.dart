library files_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'files_client.g.dart';

@RestApi()
abstract class FilesClient {
  factory FilesClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _FilesClient;

  @POST("/forms/basic")
  @FormUrlEncoded()
  Future<HttpResponse<Map<String, dynamic>>> filesFormBasic({
    @Body() required BodyFilesFormBasic requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'files'],
      r'summary': r'Handle basic form data',
      r'description': r'Handle form data.',
      r'operationId': r'files-form_basic',
      r'requestBody': {
        r'content': {
          r'application/x-www-form-urlencoded': {
            r'schema': {r'$ref': r'#/components/schemas/Body_files-form_basic'},
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
                r'title': r'Response Files-Form Basic',
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
  @POST("/files/upload")
  @MultiPart()
  Future<HttpResponse<Map<String, dynamic>>> filesFileUpload_({
    @Part() required Map<String, dynamic> requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'files'],
      r'summary': r'Handle single file upload',
      r'description': r'Handle file upload.',
      r'operationId': r'files-file_upload',
      r'requestBody': {
        r'content': {
          r'multipart/form-data': {
            r'schema': {
              r'$ref': r'#/components/schemas/Body_files-file_upload',
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
                r'title': r'Response Files-File Upload',
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
  @POST("/files/multiple")
  @MultiPart()
  Future<HttpResponse<Map<String, dynamic>>> filesFilesMultiple_({
    @Part() required Map<String, dynamic> requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'files'],
      r'summary': r'Handle multiple file uploads',
      r'description': r'Handle multiple file uploads.',
      r'operationId': r'files-files_multiple',
      r'requestBody': {
        r'content': {
          r'multipart/form-data': {
            r'schema': {
              r'$ref': r'#/components/schemas/Body_files-files_multiple',
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
                r'title': r'Response Files-Files Multiple',
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

extension FilesClientX on FilesClient {
  Future<HttpResponse<Map<String, dynamic>>> filesFileUpload({
    required BodyFilesFileUpload requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'files'],
      r'summary': r'Handle single file upload',
      r'description': r'Handle file upload.',
      r'operationId': r'files-file_upload',
      r'requestBody': {
        r'content': {
          r'multipart/form-data': {
            r'schema': {
              r'$ref': r'#/components/schemas/Body_files-file_upload',
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
                r'title': r'Response Files-File Upload',
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
  }) {
    return filesFileUpload_(
      requestBody: requestBody.toJson(),
      extras: extras,

      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }

  Future<HttpResponse<Map<String, dynamic>>> filesFilesMultiple({
    required BodyFilesFilesMultiple requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'files'],
      r'summary': r'Handle multiple file uploads',
      r'description': r'Handle multiple file uploads.',
      r'operationId': r'files-files_multiple',
      r'requestBody': {
        r'content': {
          r'multipart/form-data': {
            r'schema': {
              r'$ref': r'#/components/schemas/Body_files-files_multiple',
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
                r'title': r'Response Files-Files Multiple',
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
  }) {
    return filesFilesMultiple_(
      requestBody: requestBody.toJson(),
      extras: extras,

      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );
  }
}
