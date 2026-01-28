library categories_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'categories_client.g.dart';

@RestApi()
abstract class CategoriesClient {
  factory CategoriesClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _CategoriesClient;

  @GET("/api/categories")
  Future<HttpResponse<List<CategoryDto>>> categoriesApiCategoriesGet({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Categories'],
      r'summary': r'Return categories as a forest (nested children).',
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'array',
                r'items': {r'$ref': r'#/components/schemas/CategoryDto'},
              },
            },
          },
        },
      },
    },
  });
  @POST("/api/categories")
  Future<HttpResponse<String>> categoriesApiCategoriesPost({
    @Body() required CreateCategoryDto requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Categories'],
      r'summary': r'Create a category.',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CreateCategoryDto'},
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
  @GET("/api/categories/{id}")
  Future<HttpResponse<CategoryDto>> categoriesApiCategoriesIdGet({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Categories'],
      r'summary': r'Get a single category by id.',
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
              r'schema': {r'$ref': r'#/components/schemas/CategoryDto'},
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
  @PATCH("/api/categories/{id}")
  Future<HttpResponse> categoriesApiCategoriesIdPatch({
    @Body() required UpdateCategoryDto requestBody,
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Categories'],
      r'summary': r'Update category (may move parent).',
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
            r'schema': {r'$ref': r'#/components/schemas/UpdateCategoryDto'},
          },
        },
      },
      r'responses': {
        r'204': {r'description': r'No Content'},
      },
    },
  });
  @PUT("/api/categories/{id}")
  Future<HttpResponse> categoriesApiCategoriesIdPut({
    @Body() required CategoryDto requestBody,
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Categories'],
      r'summary': r'Put category (may move parent).',
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
            r'schema': {r'$ref': r'#/components/schemas/CategoryDto'},
          },
        },
      },
      r'responses': {
        r'204': {r'description': r'No Content'},
      },
    },
  });
  @DELETE("/api/categories/{id}")
  Future<HttpResponse> categoriesApiCategoriesIdDelete({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Categories'],
      r'summary': r'Delete category (only if no children).',
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
