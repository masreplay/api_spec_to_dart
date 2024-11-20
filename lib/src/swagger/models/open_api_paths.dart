import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_api_paths.freezed.dart';
part 'open_api_paths.g.dart';

/// "paths": {}
typedef OpenApiPaths = Map<String, OpenApiPath>;

/// "/api": {}
typedef OpenApiPath = Map<OpenApiPathMethodType, OpenApiPathMethod>;

enum OpenApiPathMethodType {
  get,
  post,
  put,
  delete,
  options,
  head,
  patch,
  trace,
}

@freezed
class OpenApiPathMethod with _$OpenApiPathMethod {
  const OpenApiPathMethod._();

  const factory OpenApiPathMethod({
    @JsonKey(name: 'tags') required OpenApiPathMethodTags tags,
    @JsonKey(name: 'summary') required String? summary,
    @JsonKey(name: 'operationId') required String operationId,
    @JsonKey(name: 'parameters')
    required OpenApiPathMethodParameters parameters,
    required OpenApiPathMethodResponses? responses,
  }) = _OpenApiPathMethod;

  factory OpenApiPathMethod.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodFromJson(json);
}

typedef OpenApiPathMethodTags = List<String>;

typedef OpenApiPathMethodParameters = List<OpenApiPathMethodParameter>;

@freezed
class OpenApiPathMethodParameter with _$OpenApiPathMethodParameter {
  const OpenApiPathMethodParameter._();

  const factory OpenApiPathMethodParameter({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'in') required OpenApiPathMethodParameterType in_,
    @JsonKey(name: 'required') required bool required_,
    @JsonKey(name: 'schema') required OpenApiPathMethodParameterSchema schema,
    required String? description,
    required String? example,
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
class OpenApiPathMethodParameterSchema with _$OpenApiPathMethodParameterSchema {
  const OpenApiPathMethodParameterSchema._();

  const factory OpenApiPathMethodParameterSchema({
    required OpenApiPathMethodParameterSchemaType type,
    required String? format,
    required String? description,
    required String? title,
    required String? pattern,
    required List<OpenApiPathMethodParameterSchema>? anyOf,
    required Object? defaultValue,
  }) = _OpenApiPathMethodParameterSchema;

  factory OpenApiPathMethodParameterSchema.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OpenApiPathMethodParameterSchemaFromJson(json);
}

enum OpenApiPathMethodParameterSchemaType {
  @JsonValue('string')
  string,
  @JsonValue('number')
  number,
  @JsonValue('integer')
  integer,
  @JsonValue('boolean')
  boolean,
  @JsonValue('array')
  array,
  @JsonValue('object')
  object,
  @JsonValue('null')
  null_,
}

// "responses": { "200": {} }
typedef OpenApiPathMethodResponses = Map<String, OpenApiPathMethodResponse>;

@freezed
class OpenApiPathMethodResponse with _$OpenApiPathMethodResponse {
  factory OpenApiPathMethodResponse() = _OpenApiPathMethodResponse;

  factory OpenApiPathMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodResponseFromJson(json);
}
