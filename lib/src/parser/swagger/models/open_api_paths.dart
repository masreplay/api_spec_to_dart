import 'package:freezed_annotation/freezed_annotation.dart';

import 'open_api_content.dart';
import 'open_api_schema.dart';

part 'open_api_paths.freezed.dart';
part 'open_api_paths.g.dart';

/// "paths": {}
typedef OpenApiPaths = Map<String, OpenApiPath>;

@freezed
class OpenApiPath with _$OpenApiPath {
  factory OpenApiPath.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathFromJson(json);
  const OpenApiPath._();

  const factory OpenApiPath({
    OpenApiPathMethod? get,
    OpenApiPathMethod? post,
    OpenApiPathMethod? put,
    OpenApiPathMethod? delete,
    OpenApiPathMethod? options,
    OpenApiPathMethod? head,
    OpenApiPathMethod? patch,
    OpenApiPathMethod? trace,
  }) = _OpenApiPath;

  // Return first non-null value
  OpenApiPathMethod? get current {
    return get ?? post ?? put ?? delete ?? options ?? head ?? patch ?? trace;
  }

  /// Return all available methods
  Map<String, OpenApiPathMethod> get methods {
    return {
      if (get case final get?) 'GET': get,
      if (post case final post?) 'POST': post,
      if (put case final put?) 'PUT': put,
      if (delete case final delete?) 'DELETE': delete,
      if (options case final options?) 'OPTIONS': options,
      if (head case final head?) 'HEAD': head,
      if (patch case final patch?) 'PATCH': patch,
      if (trace case final trace?) 'TRACE': trace,
    };
  }
}

typedef OpenApiPathMethodResponses = Map<String, OpenApiPathMethodResponse>;

@freezed
class OpenApiPathMethod with _$OpenApiPathMethod {
  const OpenApiPathMethod._();

  const factory OpenApiPathMethod({
    @JsonKey(name: 'tags') required OpenApiPathMethodTags tags,
    @JsonKey(name: 'summary') required String? summary,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'operationId') required String? operationId,
    @JsonKey(name: 'deprecated') required bool? deprecated,
    @JsonKey(name: 'security') List<Map<String, List<dynamic>>>? security,
    @JsonKey(name: 'parameters')
    required OpenApiPathMethodParameters? parameters,
    @JsonKey(name: 'requestBody')
    required OpenApiPathMethodRequestBody? requestBody,
    @JsonKey(name: 'responses') required OpenApiPathMethodResponses? responses,
  }) = _OpenApiPathMethod;

  factory OpenApiPathMethod.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodFromJson(json);
}

typedef OpenApiPathMethodTags = List<String>;

typedef OpenApiPathMethodParameters = List<OpenApiPathMethodParameter>;

@Freezed()
class OpenApiPathMethodParameter with _$OpenApiPathMethodParameter {
  const OpenApiPathMethodParameter._();

  const factory OpenApiPathMethodParameter({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'in') required OpenApiPathMethodParameterType in_,
    @JsonKey(name: 'required') required bool? required_,
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'schema')
    required OpenApiSchema schema,
    String? description,
    String? example,
  }) = _OpenApiPathMethodParameter;

  factory OpenApiPathMethodParameter.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodParameterFromJson(json);
}

enum OpenApiPathMethodParameterType {
  query,
  path,
  header,
  cookie,
}

@freezed
class OpenApiPathMethodResponse with _$OpenApiPathMethodResponse {
  factory OpenApiPathMethodResponse({
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'content') required OpenApiContent? content,
  }) = _OpenApiPathMethodResponse;

  factory OpenApiPathMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodResponseFromJson(json);
}

@freezed
class OpenApiPathMethodRequestBody with _$OpenApiPathMethodRequestBody {
  factory OpenApiPathMethodRequestBody({
    @JsonKey(name: 'required') bool? required_,
    @JsonKey(name: 'content') required OpenApiContent content,
  }) = _OpenApiPathMethodRequestBody;

  factory OpenApiPathMethodRequestBody.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodRequestBodyFromJson(json);
}
