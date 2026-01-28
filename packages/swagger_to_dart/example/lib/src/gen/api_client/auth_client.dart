library auth_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'auth_client.g.dart';

@RestApi()
abstract class AuthClient {
  factory AuthClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _AuthClient;

  @POST("/api/auth/login")
  Future<HttpResponse<LoginResultDto>> authApiAuthLoginPost({
    @Body() required LoginRequestDto requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Auth'],
      r'summary': r'Logs a user in',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/LoginRequestDto'},
          },
        },
      },
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/LoginResultDto'},
            },
          },
        },
      },
    },
  });
  @POST("/api/auth/logout")
  Future<HttpResponse> authApiAuthLogoutPost({
    @Queries() required AuthApiAuthLogoutPostQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Auth'],
      r'summary': r'Logs the current user out',
      r'parameters': [
        {
          r'name': r'sessionId',
          r'in': r'query',
          r'schema': {
            r'type': r'string',
            r'format': r'uuid',
            r'nullable': true,
          },
        },
      ],
      r'responses': {
        r'200': {r'description': r'OK'},
      },
    },
  });
  @POST("/api/auth/refresh-token")
  Future<HttpResponse<CredentialsDto>> authApiAuthRefreshTokenPost({
    @Queries() required AuthApiAuthRefreshTokenPostQueryParameters queries,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Auth'],
      r'summary': r'Refreshes the current access token',
      r'parameters': [
        {
          r'name': r'refreshToken',
          r'in': r'query',
          r'schema': {r'type': r'string'},
        },
      ],
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/CredentialsDto'},
            },
          },
        },
      },
    },
  });
  @PATCH("/api/auth/change-password")
  Future<HttpResponse> authApiAuthChangePasswordPatch({
    @Body() required ChangePasswordDto requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Auth'],
      r'summary': r'Changes the current user password',
      r'requestBody': {
        r'content': {
          r'application/json': {
            r'schema': {r'$ref': r'#/components/schemas/ChangePasswordDto'},
          },
        },
      },
      r'responses': {
        r'200': {r'description': r'OK'},
      },
    },
  });
  @GET("/api/auth/me")
  Future<HttpResponse<UserDto>> authApiAuthMeGet({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'Auth'],
      r'summary': r'Returns current user data',
      r'responses': {
        r'200': {
          r'description': r'OK',
          r'content': {
            r'application/json': {
              r'schema': {r'$ref': r'#/components/schemas/UserDto'},
            },
          },
        },
      },
    },
  });
}
