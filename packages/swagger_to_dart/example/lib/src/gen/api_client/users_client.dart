library users_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'users_client.g.dart';

@RestApi()
abstract class UsersClient {
  factory UsersClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _UsersClient;

  @GET("/api/users")
  Future<HttpResponse<List<UserDto>>> usersApiUsersGet({
    @Queries() required UsersApiUsersGetQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Users'],
      r'summary': r'List users with optional filters.',
      r'description':
          r'Returns paged users with role info. Use query params for paging and filtering.',
      r'parameters': [
        {
          r'name': r'active',
          r'in': r'query',
          r'schema': {r'type': r'boolean', r'nullable': true},
        },
        {
          r'name': r'search',
          r'in': r'query',
          r'schema': {r'type': r'string', r'nullable': true},
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {
                r'type': r'array',
                r'items': {r'$ref': r'#/components/schemas/UserDto'},
              },
            },
          },
        },
      },
    },
  });
  @POST("/api/users")
  Future<HttpResponse<String>> usersApiUsersPost({
    @Body() required CreateUserDto requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Users'],
      r'summary': r'Create a new user.',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/CreateUserDto'},
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
  @GET("/api/users/{id}")
  Future<HttpResponse<UserDto>> usersApiUsersIdGet({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Users'],
      r'summary': r'Get a user by id.',
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
              r'schema': {r'$ref': r'#/components/schemas/UserDto'},
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
  @PATCH("/api/users/{id}")
  Future<HttpResponse> usersApiUsersIdPatch({
    @Body() required UpdateUserDto requestBody,
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Users'],
      r'summary': r'Update an existing user.',
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
            r'schema': {r'$ref': r'#/components/schemas/UpdateUserDto'},
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
  @DELETE("/api/users/{id}")
  Future<HttpResponse> usersApiUsersIdDelete({
    @Path("id") required String id,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Users'],
      r'summary': r'Delete (soft delete) a user by id.',
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
