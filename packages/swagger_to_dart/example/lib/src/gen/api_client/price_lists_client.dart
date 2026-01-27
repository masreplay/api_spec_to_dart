library price_lists_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'price_lists_client.g.dart';

@RestApi()
abstract class PriceListsClient {
  factory PriceListsClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _PriceListsClient;

  @GET("/api/price-lists")
  Future<HttpResponse<List<PriceListSummaryDto>>> priceListsApiPriceListsGet({
    @Queries() required PriceListsApiPriceListsGetQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'PriceLists'],
      r'summary': r'List price lists with optional filters.',
      r'parameters': [
        {
          r'name': r'enabled',
          r'in': r'query',
          r'schema': {r'type': r'boolean', r'nullable': true},
        },
        {
          r'name': r'salePointId',
          r'in': r'query',
          r'schema': {
            r'type': r'string',
            r'format': r'uuid',
            r'nullable': true,
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'array',
                r'items': {
                  r'$ref': r'#/components/schemas/PriceListSummaryDto',
                },
              },
            },
          },
        },
      },
    },
  });
  @POST("/api/price-lists")
  Future<HttpResponse<String>> priceListsApiPriceListsPost({
    @Body() required CreatePriceListDto requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'PriceLists'],
      r'summary': r'Create a new price list.',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CreatePriceListDto'},
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
      },
    },
  });
  @GET("/api/price-lists/{id}")
  Future<HttpResponse<PriceListDto>> priceListsApiPriceListsIdGet({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'PriceLists'],
      r'summary': r'Get a price list by id.',
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
              r'schema': {r'$ref': r'#/components/schemas/PriceListDto'},
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
  @PATCH("/api/price-lists/{id}")
  Future<HttpResponse> priceListsApiPriceListsIdPatch({
    @Body() required UpdatePriceListDto requestBody,
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'PriceLists'],
      r'summary': r'Update an existing price list.',
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
            r'schema': {r'$ref': r'#/components/schemas/UpdatePriceListDto'},
          },
        },
      },
      r'responses': {
        r'204': {r'description': r'No Content'},
      },
    },
  });
  @DELETE("/api/price-lists/{id}")
  Future<HttpResponse> priceListsApiPriceListsIdDelete({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'PriceLists'],
      r'summary': r'Delete a price list.',
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
      },
    },
  });
}
