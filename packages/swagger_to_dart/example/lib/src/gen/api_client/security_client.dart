library security_client;

import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';
import '../models/models.dart';
part 'security_client.g.dart';

@RestApi()
abstract class SecurityClient {
  factory SecurityClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _SecurityClient;

  @POST("/token")
  @FormUrlEncoded()
  Future<HttpResponse<Map<String, dynamic>>> securityLogin({
    @Body() required BodySecurityLogin requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'security'],
      r'summary': r'Get an access token',
      r'description':
          r'OAuth2 compatible token login, get an access token for future requests.',
      r'operationId': r'security-login',
      r'requestBody': {
        r'content': {
          r'application/x-www-form-urlencoded': {
            r'schema': {r'$ref': r'#/components/schemas/Body_security-login'},
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
                r'additionalProperties': {r'type': r'string'},
                r'type': r'object',
                r'title': r'Response Security-Login',
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
  @GET("/users/me")
  Future<HttpResponse<Map<String, dynamic>>> securityReadUsersMe({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'security'],
      r'summary': r'Get current user from token',
      r'description': r'Get current user based on the token.',
      r'operationId': r'security-read_users_me',
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'additionalProperties': true,
                r'type': r'object',
                r'title': r'Response Security-Read Users Me',
              },
            },
          },
        },
      },
      r'security': [
        {r'OAuth2PasswordBearer': []},
      ],
    },
  });
  @GET("/items/secure")
  Future<HttpResponse<List<Map<String, dynamic>>>> securityGetSecureItems({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      r'tags': [r'security'],
      r'summary': r'Get items using API key auth',
      r'description': r'Get items using API key auth.',
      r'operationId': r'security-get_secure_items',
      r'responses': {
        r'200': {
          r'description': r'Successful Response',
          r'content': {
            r'application/json': {
              r'schema': {
                r'items': {r'additionalProperties': true, r'type': r'object'},
                r'type': r'array',
                r'title': r'Response Security-Get Secure Items',
              },
            },
          },
        },
      },
      r'security': [
        {r'APIKeyHeader': []},
      ],
    },
  });
}
