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

  @POST('/token')
  @FormUrlEncoded()
  Future<HttpResponse<Map<String, String>>> securityLogin({
    @Body(nullToAbsent: true) required BodySecurityLogin requestBody,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['security'],
      'summary': 'Get an access token',
      'description': 'OAuth2 compatible token login, get an access token for future requests.',
      'operationId': 'security-login',
      'requestBody': {
        'content': {
          'application/x-www-form-urlencoded': {
            'schema': {'\$ref': '#/components/schemas/Body_security-login'},
          },
        },
        'required': true,
      },
      'responses': {
        '200': {
          'description': 'Successful Response',
          'content': {
            'application/json': {
              'schema': {
                'additionalProperties': {'type': 'string'},
                'type': 'object',
                'title': 'Response Security-Login',
              },
            },
          },
        },
        '422': {
          'description': 'Validation Error',
          'content': {
            'application/json': {
              'schema': {'\$ref': '#/components/schemas/HTTPValidationError'},
            },
          },
        },
      },
    },
  });
  @GET('/users/me')
  Future<HttpResponse<Map<String, dynamic>>> securityReadUsersMe({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['security'],
      'summary': 'Get current user from token',
      'description': 'Get current user based on the token.',
      'operationId': 'security-read_users_me',
      'responses': {
        '200': {
          'description': 'Successful Response',
          'content': {
            'application/json': {
              'schema': {
                'additionalProperties': true,
                'type': 'object',
                'title': 'Response Security-Read Users Me',
              },
            },
          },
        },
      },
      'security': [
        {'OAuth2PasswordBearer': []},
      ],
    },
  });
  @GET('/items/secure')
  Future<HttpResponse<List<Map<String, dynamic>>>> securityGetSecureItems({
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
    @Extras()
    Map<String, dynamic>? extras = const {
      'tags': ['security'],
      'summary': 'Get items using API key auth',
      'description': 'Get items using API key auth.',
      'operationId': 'security-get_secure_items',
      'responses': {
        '200': {
          'description': 'Successful Response',
          'content': {
            'application/json': {
              'schema': {
                'items': {'additionalProperties': true, 'type': 'object'},
                'type': 'array',
                'title': 'Response Security-Get Secure Items',
              },
            },
          },
        },
      },
      'security': [
        {'APIKeyHeader': []},
      ],
    },
  });
}
