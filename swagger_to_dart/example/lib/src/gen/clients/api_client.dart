import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:example/src/gen/clients/clients.dart';

/// FastAPI Type Examples
/// Comprehensive examples of types and routes in FastAPI
/// 1.0.0
/// 2025-04-11 04:09:29.631737
class ApiClient {
  ApiClient(this.dio, {this.baseUrl, this.errorLogger});
  final String? baseUrl;
  final ParseErrorLogger? errorLogger;

  final Dio dio;

  BasicClient get basic {
    return BasicClient(dio);
  }

  AdvancedClient get advanced {
    return AdvancedClient(dio);
  }

  ModelsClient get models {
    return ModelsClient(dio);
  }

  ValidationClient get validation {
    return ValidationClient(dio);
  }

  FilesClient get files {
    return FilesClient(dio);
  }

  SecurityClient get security {
    return SecurityClient(dio);
  }
}
