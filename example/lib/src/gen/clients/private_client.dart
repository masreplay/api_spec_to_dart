import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';
     
    
 
part 'private_client.g.dart';
 
@RestApi()
abstract class PrivateClient {
factory PrivateClient(Dio dio, {String baseUrl}) = _PrivateClient;
/// OperationId: private-create_user
/// Summery: Create User
/// Description: Create a new user.
@POST('/private/users/')
Future<HttpResponse<UserPublic>> privateCreateUser({@Body() required PrivateUserCreate body,});
}
