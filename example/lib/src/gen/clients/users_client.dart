import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';

part 'users_client.g.dart';

@RestApi()
abstract class UsersClient {
  factory UsersClient(Dio dio, {String baseUrl}) = _UsersClient;

  /// OperationId: users-read_users
  /// Summery: Read Users
  /// Description: Retrieve users.
  @GET('/users/')
  Future<HttpResponse<UsersPublic>> usersReadUsers({
    @Queries() required UsersReadUsersQueries queries,
  });

  /// OperationId: users-create_user
  /// Summery: Create User
  /// Description: Create new user.
  @POST('/users/')
  Future<HttpResponse<UserPublic>> usersCreateUser({
    @Body() required UserCreate body,
  });

  /// OperationId: users-read_user_me
  /// Summery: Read User Me
  /// Description: Get current user.
  @GET('/users/me')
  Future<HttpResponse<UserPublic>> usersReadUserMe();

  /// OperationId: users-delete_user_me
  /// Summery: Delete User Me
  /// Description: Delete own user.
  @DELETE('/users/me')
  Future<HttpResponse<Message>> usersDeleteUserMe();

  /// OperationId: users-update_user_me
  /// Summery: Update User Me
  /// Description: Update own user.
  @PATCH('/users/me')
  Future<HttpResponse<UserPublic>> usersUpdateUserMe({
    @Body() required UserUpdateMe body,
  });

  /// OperationId: users-update_password_me
  /// Summery: Update Password Me
  /// Description: Update own password.
  @PATCH('/users/me/password')
  Future<HttpResponse<Message>> usersUpdatePasswordMe({
    @Body() required UpdatePassword body,
  });

  /// OperationId: users-register_user
  /// Summery: Register User
  /// Description: Create new user without the need to be logged in.
  @POST('/users/signup')
  Future<HttpResponse<UserPublic>> usersRegisterUser({
    @Body() required UserRegister body,
  });

  /// OperationId: users-read_user_by_id
  /// Summery: Read User By Id
  /// Description: Get a specific user by id.
  @GET('/users/{user_id}')
  Future<HttpResponse<UserPublic>> usersReadUserById({
    @Path('user_id') required String userId,
  });

  /// OperationId: users-delete_user
  /// Summery: Delete User
  /// Description: Delete a user.
  @DELETE('/users/{user_id}')
  Future<HttpResponse<Message>> usersDeleteUser({
    @Path('user_id') required String userId,
  });

  /// OperationId: users-update_user
  /// Summery: Update User
  /// Description: Update a user.
  @PATCH('/users/{user_id}')
  Future<HttpResponse<UserPublic>> usersUpdateUser({
    @Path('user_id') required String userId,
    @Body() required UserUpdate body,
  });
}
