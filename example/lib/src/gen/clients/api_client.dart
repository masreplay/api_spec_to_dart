import 'package:dio/dio.dart';
import 'package:swagger_api_client/src/gen/clients/clients.dart';

/// Full Stack FastAPI Project
/// 0.1.0
/// 2025-04-02 03:48:38.634717
class ApiClient {
  ApiClient(this.dio);

  final Dio dio;

  LoginClient get login {
    return LoginClient(dio);
  }

  UsersClient get users {
    return UsersClient(dio);
  }

  UtilsClient get utils {
    return UtilsClient(dio);
  }

  FeedClient get feed {
    return FeedClient(dio);
  }

  ItemsClient get items {
    return ItemsClient(dio);
  }

  PrivateClient get private {
    return PrivateClient(dio);
  }
}
