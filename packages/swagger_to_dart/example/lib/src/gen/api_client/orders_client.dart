library orders_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'orders_client.g.dart';

@RestApi()
abstract class OrdersClient {
  factory OrdersClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _OrdersClient;

  @GET("/api/orders")
  Future<HttpResponse<OrderDtoPagedResult>> ordersApiOrdersGet({
    @Queries() required OrdersApiOrdersGetQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Orders'],
      r'summary': r'List orders with optional filters.',
      r'parameters': [
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
          r'name': r'salePointId',
          r'in': r'query',
          r'schema': {
            r'type': r'string',
            r'format': r'uuid',
            r'nullable': true,
          },
        },
        {
          r'name': r'status',
          r'in': r'query',
          r'schema': {
            r'oneOf': [
              {r'$ref': r'#/components/schemas/OrderStatus'},
              {r'type': r'null'},
            ],
            r'nullable': true,
          },
        },
        {
          r'name': r'customerId',
          r'in': r'query',
          r'schema': {
            r'type': r'string',
            r'format': r'uuid',
            r'nullable': true,
          },
        },
        {
          r'name': r'dateRange',
          r'in': r'query',
          r'schema': {
            r'oneOf': [
              {r'$ref': r'#/components/schemas/DateRange'},
              {r'type': r'null'},
            ],
            r'nullable': true,
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/OrderDtoPagedResult'},
            },
          },
        },
      },
    },
  });
  @POST("/api/orders")
  Future<HttpResponse<String>> ordersApiOrdersPost({
    @Body() required CreateOrderCommand requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Orders'],
      r'summary': r'Create a new B2B order.',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CreateOrderCommand'},
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
  @GET("/api/orders/{id}")
  Future<HttpResponse<OrderDto>> ordersApiOrdersIdGet({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Orders'],
      r'summary': r'Get an order by id.',
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
              r'schema': {r'$ref': r'#/components/schemas/OrderDto'},
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
  @PATCH("/api/orders/{id}")
  Future<HttpResponse> ordersApiOrdersIdPatch({
    @Body() required UpdateOrderCommand requestBody,
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Orders'],
      r'summary': r'Update an existing B2B order.',
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
            r'schema': {r'$ref': r'#/components/schemas/UpdateOrderCommand'},
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
  @DELETE("/api/orders/{id}")
  Future<HttpResponse> ordersApiOrdersIdDelete({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Orders'],
      r'summary': r'Delete (soft delete) an order by id.',
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
  @POST("/api/orders/invoices")
  Future<HttpResponse> ordersApiOrdersInvoicesPost({
    @Body() required GenerateInvoicesRequest requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Orders'],
      r'summary':
          r'Generate a PDF document containing invoices for multiple orders.',
      r'requestBody': {
        r'description': r'The order IDs.',
        r'content': {
          r'application/json': {
            r'schema': {
              r'$ref': r'#/components/schemas/GenerateInvoicesRequest',
            },
          },
        },
      },
      r'responses': {
        r'200': {r'description': r'OK'},
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
  @GET("/api/orders/{id}/invoice")
  Future<HttpResponse> ordersApiOrdersIdInvoiceGet({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Orders'],
      r'summary': r'Generate a PDF invoice for a single order.',
      r'parameters': [
        {
          r'name': r'id',
          r'in': r'path',
          r'description': r'The order ID.',
          r'required': true,
          r'schema': {r'type': r'string', r'format': r'uuid'},
        },
      ],
      r'responses': {
        r'200': {r'description': r'OK'},
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
  @POST("/api/orders/{id}/close")
  Future<HttpResponse> ordersApiOrdersIdClosePost({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Orders'],
      r'summary': r'Close a B2B order.',
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
