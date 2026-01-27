library products_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'products_client.g.dart';

@RestApi()
abstract class ProductsClient {
  factory ProductsClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _ProductsClient;

  @GET("/api/products")
  Future<HttpResponse<ProductDtoPagedResult>> productsApiProductsGet({
    @Queries() required ProductsApiProductsGetQueryParameters queries,
    @Header("X-SalePoint-Id") required String xMinusSalePointMinusId,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Products'],
      r'summary': r'List products with optional filters.',
      r'parameters': [
        {
          r'name': r'X-SalePoint-Id',
          r'in': r'header',
          r'schema': {r'type': r'string', r'format': r'uuid'},
        },
        {
          r'name': r'pageToken',
          r'in': r'query',
          r'schema': {r'type': r'string', r'nullable': true},
        },
        {
          r'name': r'pageSize',
          r'in': r'query',
          r'schema': {
            r'type': r'integer',
            r'format': r'int32',
            r'default': 100,
          },
        },
        {
          r'name': r'categoryId',
          r'in': r'query',
          r'schema': {
            r'type': r'string',
            r'format': r'uuid',
            r'nullable': true,
          },
        },
        {
          r'name': r'search',
          r'in': r'query',
          r'schema': {r'type': r'string', r'nullable': true},
        },
        {
          r'name': r'priceListId',
          r'in': r'query',
          r'schema': {
            r'type': r'string',
            r'format': r'uuid',
            r'nullable': true,
          },
        },
        {
          r'name': r'replacePrices',
          r'in': r'query',
          r'schema': {r'type': r'boolean', r'default': false},
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {
                r'$ref': r'#/components/schemas/ProductDtoPagedResult',
              },
            },
          },
        },
      },
    },
  });
  @POST("/api/products")
  Future<HttpResponse<String>> productsApiProductsPost({
    @Body() required CreateProductDto requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Products'],
      r'summary': r'Create a new product (with variants/presentations).',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CreateProductDto'},
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
  @GET("/api/products/{id}")
  Future<HttpResponse<ProductDto>> productsApiProductsIdGet({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Products'],
      r'summary': r'Get a product by id.',
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
              r'schema': {r'$ref': r'#/components/schemas/ProductDto'},
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
  @PATCH("/api/products/{id}")
  Future<HttpResponse> productsApiProductsIdPatch({
    @Body() required UpdateProductDto requestBody,
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Products'],
      r'summary':
          r'Update an existing product (replace variants/presentations).',
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
            r'schema': {r'$ref': r'#/components/schemas/UpdateProductDto'},
          },
        },
      },
      r'responses': {
        r'204': {r'description': r'No Content'},
      },
    },
  });
  @DELETE("/api/products/{id}")
  Future<HttpResponse> productsApiProductsIdDelete({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Products'],
      r'summary': r'Delete a product.',
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
