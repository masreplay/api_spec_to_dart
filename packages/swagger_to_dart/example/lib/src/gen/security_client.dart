library;

import 'package:retrofit/retrofit.dart';
import 'exports.dart';
part 'security_client.g.dart';

@RestApi()
abstract class SecurityClient {
  factory SecurityClient(
    Dio dio, {
    ParseErrorLogger? errorLogger,
    String? baseUrl,
  }) = _SecurityClient;

  /// post
  /// {
  ///     "tags": [
  ///         "security"
  ///     ],
  ///     "summary": "Get an access token",
  ///     "description": "OAuth2 compatible token login, get an access token for future requests.",
  ///     "operationId": "security-login",
  ///     "requestBody": {
  ///         "required": true,
  ///         "content": {
  ///             "application/x-www-form-urlencoded": {
  ///                 "schema": {
  ///                     "$ref": "#/components/schemas/Body_security-login"
  ///                 }
  ///             }
  ///         }
  ///     },
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Security-Login"
  ///                     }
  ///                 }
  ///             }
  ///         },
  ///         "422": {
  ///             "description": "Validation Error",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "$ref": "#/components/schemas/HTTPValidationError"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @POST("/token")
  Future<HttpResponse<Map<String, dynamic>>> securityLogin({
    @FormUrlEncoded() required BodySecurityLogin requestBody,
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "security"
  ///     ],
  ///     "summary": "Get current user from token",
  ///     "description": "Get current user based on the token.",
  ///     "operationId": "security-read_users_me",
  ///     "security": [
  ///         {
  ///             "OAuth2PasswordBearer": []
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "object",
  ///                         "title": "Response Security-Read Users Me"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @GET("/users/me")
  Future<HttpResponse<Map<String, dynamic>>> securityReadUsersMe({
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });

  /// get
  /// {
  ///     "tags": [
  ///         "security"
  ///     ],
  ///     "summary": "Get items using API key auth",
  ///     "description": "Get items using API key auth.",
  ///     "operationId": "security-get_secure_items",
  ///     "security": [
  ///         {
  ///             "APIKeyHeader": []
  ///         }
  ///     ],
  ///     "responses": {
  ///         "200": {
  ///             "description": "Successful Response",
  ///             "content": {
  ///                 "application/json": {
  ///                     "schema": {
  ///                         "type": "array",
  ///                         "items": {
  ///                             "type": "object"
  ///                         },
  ///                         "title": "Response Security-Get Secure Items"
  ///                     }
  ///                 }
  ///             }
  ///         }
  ///     }
  /// }
  @GET("/items/secure")
  Future<HttpResponse<List<Map<String, dynamic>>>> securityGetSecureItems({
    @Extras() Map<String, dynamic>? extras,
    @CancelRequest() CancelToken? cancelToken,
    @SendProgress() ProgressCallback? onSendProgress,
    @ReceiveProgress() ProgressCallback? onReceiveProgress,
  });
}
