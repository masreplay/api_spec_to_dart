import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';
     
    
 
part 'login_client.g.dart';
 
@RestApi()
abstract class LoginClient {
factory LoginClient(Dio dio, {String baseUrl}) = _LoginClient;
/// OperationId: login-login_access_token
/// Summery: Login Access Token
/// Description: OAuth2 compatible token login, get an access token for future requests
@FormUrlEncoded()
@POST('/login/access-token')
Future<HttpResponse<Token>> loginLoginAccessToken({@Body() required BodyLoginLoginAccessToken body,});
/// OperationId: login-test_token
/// Summery: Test Token
/// Description: Test access token
@POST('/login/test-token')
Future<HttpResponse<UserPublic>> loginTestToken();
/// OperationId: login-recover_password
/// Summery: Recover Password
/// Description: Password Recovery
@POST('/password-recovery/{email}')
Future<HttpResponse<Message>> loginRecoverPassword({@Path('email') required String email,});
/// OperationId: login-reset_password
/// Summery: Reset Password
/// Description: Reset password
@POST('/reset-password/')
Future<HttpResponse<Message>> loginResetPassword({@Body() required NewPassword body,});
/// OperationId: login-recover_password_html_content
/// Summery: Recover Password Html Content
/// Description: HTML Content for Password Recovery
@POST('/password-recovery-html-content/{email}')
Future<HttpResponse> loginRecoverPasswordHtmlContent({@Path('email') required String email,});
}
