import 'package:freezed_annotation/freezed_annotation.dart';

import 'open_api_schema.dart';

part 'open_api_paths.freezed.dart';
part 'open_api_paths.g.dart';

/// "paths": {}
typedef OpenApiPaths = Map<String, OpenApiPath>;

@freezed
class OpenApiPath with _$OpenApiPath {
  factory OpenApiPath({
    OpenApiPathMethod? get,
    OpenApiPathMethod? post,
    OpenApiPathMethod? put,
    OpenApiPathMethod? delete,
    OpenApiPathMethod? options,
    OpenApiPathMethod? head,
    OpenApiPathMethod? patch,
    OpenApiPathMethod? trace,
  }) = _OpenApiPath;

  factory OpenApiPath.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathFromJson(json);
}

@freezed
class OpenApiPathMethod with _$OpenApiPathMethod {
  const OpenApiPathMethod._();

  const factory OpenApiPathMethod({
    @JsonKey(name: 'tags') required OpenApiPathMethodTags tags,
    @JsonKey(name: 'summary') required String? summary,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'operationId') required String operationId,
    @JsonKey(name: 'security') List<Map<String, List<dynamic>>>? security,
    @JsonKey(name: 'parameters')
    required OpenApiPathMethodParameters? parameters,
    required OpenApiPathMethodResponses? responses,
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
    @JsonKey(name: 'required') required bool required_,
    @OpenApiSchemaJsonMapConverter()
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

// "responses": { "200": {} }
typedef OpenApiPathMethodResponses = Map<String, OpenApiPathMethodResponse>;

@freezed
class OpenApiPathMethodResponse with _$OpenApiPathMethodResponse {
  factory OpenApiPathMethodResponse({
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'content') required OpenApiPathMethodResponseContent content,
  }) = _OpenApiPathMethodResponse;

  factory OpenApiPathMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodResponseFromJson(json);
}

@freezed
class OpenApiPathMethodResponseContent with _$OpenApiPathMethodResponseContent {
  factory OpenApiPathMethodResponseContent({
    @JsonKey(name: 'application/json')
    required OpenApiPathMethodResponseContentSchema? applicationJson,
    @JsonKey(name: 'application/x-www-form-urlencoded')
    required OpenApiPathMethodResponseContentSchema?
        applicationXWwwFormUrlencoded,
  }) = _OpenApiPathMethodResponseContent;

  factory OpenApiPathMethodResponseContent.fromJson(
          Map<String, dynamic> json) =>
      _$OpenApiPathMethodResponseContentFromJson(json);
}

@freezed
class OpenApiPathMethodResponseContentSchema
    with _$OpenApiPathMethodResponseContentSchema {
  factory OpenApiPathMethodResponseContentSchema() =
      _OpenApiPathMethodResponseContentSchema;

  factory OpenApiPathMethodResponseContentSchema.fromJson(
          Map<String, dynamic> json) =>
      _$OpenApiPathMethodResponseContentSchemaFromJson(json);
}
