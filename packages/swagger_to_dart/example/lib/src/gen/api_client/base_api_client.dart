library;

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'exports.dart';

class BaseApiClient {
  BaseApiClient(this.dio, {this.baseUrl, this.errorLogger});

  final String? baseUrl;

  final Dio dio;

  final ParseErrorLogger? errorLogger;

  BasicClient get basicClient {
    return BasicClient(dio, baseUrl: baseUrl, errorLogger: errorLogger);
  }

  AdvancedClient get advancedClient {
    return AdvancedClient(dio, baseUrl: baseUrl, errorLogger: errorLogger);
  }

  ModelsClient get modelsClient {
    return ModelsClient(dio, baseUrl: baseUrl, errorLogger: errorLogger);
  }

  ValidationClient get validationClient {
    return ValidationClient(dio, baseUrl: baseUrl, errorLogger: errorLogger);
  }

  FilesClient get filesClient {
    return FilesClient(dio, baseUrl: baseUrl, errorLogger: errorLogger);
  }

  SecurityClient get securityClient {
    return SecurityClient(dio, baseUrl: baseUrl, errorLogger: errorLogger);
  }

  ExtraTypesClient get extraTypesClient {
    return ExtraTypesClient(dio, baseUrl: baseUrl, errorLogger: errorLogger);
  }

  ItemsClient get itemsClient {
    return ItemsClient(dio, baseUrl: baseUrl, errorLogger: errorLogger);
  }

  GenericClient get genericClient {
    return GenericClient(dio, baseUrl: baseUrl, errorLogger: errorLogger);
  }

  UnionClient get unionClient {
    return UnionClient(dio, baseUrl: baseUrl, errorLogger: errorLogger);
  }
}
