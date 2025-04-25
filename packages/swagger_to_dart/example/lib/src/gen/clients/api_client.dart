import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'basic_client.dart';
import 'advanced_client.dart';
import 'models_client.dart';
import 'validation_client.dart';
import 'files_client.dart';
import 'security_client.dart';
import 'extra_types_client.dart';
import 'items_client.dart'; // FastAPI Type Examples// Comprehensive examples of types and routes in FastAPI// Version: 1.0.0// Generated: 2025-04-25T16:25:18.708651/// Base API client for FastAPI Type Examples

class ApiClient {
  ApiClient(this.dio, {this.baseUrl, this.errorLogger});

  final Dio dio;

  final String? baseUrl;

  final ParseErrorLogger? errorLogger;

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

  ExtraTypesClient get extraTypes {
    return ExtraTypesClient(dio);
  }

  ItemsClient get items {
    return ItemsClient(dio);
  }
}
