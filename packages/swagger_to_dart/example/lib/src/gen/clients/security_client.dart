import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/models/models.dart';

part 'security_client.g.dart';

@RestApi()
abstract class SecurityClient {
  factory SecurityClient(
    Dio dio, {
    String? baseUrl,
    ParseErrorLogger? errorLogger,
  }) = _SecurityClient;

  /// OperationId: security-login
  /// Summery: Get an access token
  /// Description: OAuth2 compatible token login, get an access token for future requests.
  @FormUrlEncoded()
  @POST('/token')
  Future<HttpResponse> securityLogin({@Body() required BodySecurityLogin body});

  /// OperationId: security-read_users_me
  /// Summery: Get current user from token
  /// Description: Get current user based on the token.
  @GET('/users/me')
  Future<HttpResponse> securityReadUsersMe();

  /// OperationId: security-get_secure_items
  /// Summery: Get items using API key auth
  /// Description: Get items using API key auth.
  @GET('/items/secure')
  Future<HttpResponse<List<Map<String, dynamic>>>> securityGetSecureItems();
}
