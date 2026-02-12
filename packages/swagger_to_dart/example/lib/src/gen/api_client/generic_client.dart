library generic_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'generic_client.g.dart';

@RestApi()
abstract class GenericClient {
  factory GenericClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _GenericClient;

  @GET("/generic/items")
  Future<HttpResponse<PaginationResponse<ItemResponse>>> genericGetItems({
    @Queries() required GenericGetItemsQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'generic'],
      r'summary': r'Get Items',
      r'operationId': r'generic-get_items',
      r'parameters': [
        {
          r'name': r'page',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'minimum': 1,
            r'default': 1,
            r'title': r'Page',
          },
        },
        {
          r'name': r'per_page',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'maximum': 100,
            r'minimum': 1,
            r'default': 10,
            r'title': r'Per Page',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'$ref':
                    r'#/components/schemas/PaginationResponse_ItemResponse_',
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
  @GET("/generic/categories")
  Future<HttpResponse<PaginationResponse<CategoryResponse>>>
  genericGetCategories({
    @Queries() required GenericGetCategoriesQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'generic'],
      r'summary': r'Get Categories',
      r'operationId': r'generic-get_categories',
      r'parameters': [
        {
          r'name': r'page',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'minimum': 1,
            r'default': 1,
            r'title': r'Page',
          },
        },
        {
          r'name': r'per_page',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'maximum': 100,
            r'minimum': 1,
            r'default': 10,
            r'title': r'Per Page',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'$ref':
                    r'#/components/schemas/PaginationResponse_CategoryResponse_',
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
  @GET("/generic/base-response-item")
  Future<HttpResponse<BaseResponse<ItemResponse>>> genericGetBaseResponseItem({
    @Body() required ItemResponse requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'generic'],
      r'summary': r'Get Base Response Item',
      r'operationId': r'generic-get_base_response_item',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/ItemResponse-Input'},
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
                r'$ref': r'#/components/schemas/BaseResponse_ItemResponse_',
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
  @GET("/generic/base-response-category")
  Future<HttpResponse<BaseResponse<CategoryResponse>>>
  genericGetBaseResponseCategory({
    @Body() required CategoryResponse requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'generic'],
      r'summary': r'Get Base Response Category',
      r'operationId': r'generic-get_base_response_category',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CategoryResponse'},
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
                r'$ref': r'#/components/schemas/BaseResponse_CategoryResponse_',
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
  @GET("/generic/base-response-list")
  Future<HttpResponse<BaseResponse<List<ItemResponse>>>>
  genericGetBaseResponseList({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'generic'],
      r'summary': r'Get Base Response List',
      r'operationId': r'generic-get_base_response_list',
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'$ref':
                    r'#/components/schemas/BaseResponse_list_ItemResponse__',
              },
            },
          },
        },
      },
    },
  });
  @GET("/generic/nested-base-and-pagination")
  Future<HttpResponse<BaseResponse<PaginationResponse<ItemResponse>>>>
  genericGetNestedBaseAndPagination({
    @Queries()
    required GenericGetNestedBaseAndPaginationQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'generic'],
      r'summary': r'Get Nested Base And Pagination',
      r'operationId': r'generic-get_nested_base_and_pagination',
      r'parameters': [
        {
          r'name': r'page',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'minimum': 1,
            r'default': 1,
            r'title': r'Page',
          },
        },
        {
          r'name': r'per_page',
          r'in': r'query',
          r'required': false,
          r'schema': {
            r'type': r'integer',
            r'maximum': 100,
            r'minimum': 1,
            r'default': 10,
            r'title': r'Per Page',
          },
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'$ref':
                    r'#/components/schemas/BaseResponse_PaginationResponse_ItemResponse__',
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
