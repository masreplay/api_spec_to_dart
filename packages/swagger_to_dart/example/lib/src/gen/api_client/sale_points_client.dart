library sale_points_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'sale_points_client.g.dart';

@RestApi()
abstract class SalePointsClient {
  factory SalePointsClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _SalePointsClient;

  @GET("/api/sale-points")
  Future<HttpResponse<List<SalePointDto>>> salePointsApiSalePointsGet({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'SalePoints'],
      r'summary': r'List salepoints with optional filters.',
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'array',
                r'items': {r'$ref': r'#/components/schemas/SalePointDto'},
              },
            },
          },
        },
      },
    },
  });
  @POST("/api/sale-points")
  Future<HttpResponse<String>> salePointsApiSalePointsPost({
    @Body() required CreateSalePointDto requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'SalePoints'],
      r'summary': r'Create a new user.',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CreateSalePointDto'},
          },
        },
      },
      r'responses': {
        r'201': {
          r'description': r'Created',
          r'content': {
            r'application/json': {
              r'schema': {r'type': r'string', r'format': r'uuid'},
            },
          },
        },
        r'400': {
          r'description': r'Bad Request',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/ProblemDetails'},
            },
          },
        },
      },
    },
  });
  @GET("/api/sale-points/{id}")
  Future<HttpResponse<SalePointDto>> salePointsApiSalePointsIdGet({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'SalePoints'],
      r'summary': r'Get a salepoint by id.',
      r'parameters': [
        {
          r'name': r'id',
          r'in': r'path',
          r'required': true,
          r'schema': {r'type': r'string', r'format': r'uuid'},
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/SalePointDto'},
            },
          },
        },
        r'404': {
          r'description': r'Not Found',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/ProblemDetails'},
            },
          },
        },
      },
    },
  });
  @PATCH("/api/sale-points/{id}")
  Future<HttpResponse> salePointsApiSalePointsIdPatch({
    @Body() required UpdateSalePointDto requestBody,
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'SalePoints'],
      r'summary': r'Update an existing salepoint.',
      r'parameters': [
        {
          r'name': r'id',
          r'in': r'path',
          r'required': true,
          r'schema': {r'type': r'string', r'format': r'uuid'},
        },
      ],
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/UpdateSalePointDto'},
          },
        },
      },
      r'responses': {
        r'204': {r'description': r'No Content'},
        r'400': {
          r'description': r'Bad Request',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/ProblemDetails'},
            },
          },
        },
        r'404': {
          r'description': r'Not Found',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/ProblemDetails'},
            },
          },
        },
      },
    },
  });
  @DELETE("/api/sale-points/{id}")
  Future<HttpResponse> salePointsApiSalePointsIdDelete({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'SalePoints'],
      r'summary': r'Delete a salepoint by id.',
      r'parameters': [
        {
          r'name': r'id',
          r'in': r'path',
          r'required': true,
          r'schema': {r'type': r'string', r'format': r'uuid'},
        },
      ],
      r'responses': {
        r'204': {r'description': r'No Content'},
        r'404': {
          r'description': r'Not Found',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/ProblemDetails'},
            },
          },
        },
      },
    },
  });
}
