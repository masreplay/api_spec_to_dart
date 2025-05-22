import 'package:freezed_annotation/freezed_annotation.dart';

import 'open_api_content.dart';
import 'open_api_schema.dart';

part 'open_api_paths.freezed.dart';
part 'open_api_paths.g.dart';

enum OpenApiPathMethodEnum {
  get,
  post,
  put,
  delete,
  options,
  head,
  patch,
  trace,
  connect,
  pat,
}

typedef OpenApiPathMethodResponses = Map<String, OpenApiPathMethodResponse>;

@freezed
abstract class OpenApiPathMethod with _$OpenApiPathMethod {
  const OpenApiPathMethod._();

  const factory OpenApiPathMethod({
    @JsonKey(name: 'tags') required List<String> tags,
    @JsonKey(name: 'summary') required String? summary,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'operationId') required String? operationId,
    @JsonKey(name: 'deprecated') required bool? deprecated,
    @JsonKey(name: 'security') List<Map<String, List<dynamic>>>? security,
    @JsonKey(name: 'parameters')
    required List<OpenApiPathMethodParameter>? parameters,
    @JsonKey(name: 'requestBody')
    required OpenApiPathMethodRequestBody? requestBody,
    @JsonKey(name: 'responses') required OpenApiPathMethodResponses? responses,
  }) = _OpenApiPathMethod;

  factory OpenApiPathMethod.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodFromJson(json);
}

@Freezed()
abstract class OpenApiPathMethodParameter with _$OpenApiPathMethodParameter {
  const OpenApiPathMethodParameter._();

  const factory OpenApiPathMethodParameter({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'in') required OpenApiPathMethodParameterType in_,
    @JsonKey(name: 'required') required bool? required_,
    @OpenApiSchemaJsonConverter()
    @JsonKey(name: 'schema')
    required OpenApiSchema schema,
    String? description,
    Object? example,
  }) = _OpenApiPathMethodParameter;

  factory OpenApiPathMethodParameter.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodParameterFromJson(json);
}

enum OpenApiPathMethodParameterType { query, path, header, cookie }

@freezed
abstract class OpenApiPathMethodResponse with _$OpenApiPathMethodResponse {
  const OpenApiPathMethodResponse._();

  const factory OpenApiPathMethodResponse({
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'content') required OpenApiContent? content,
  }) = _OpenApiPathMethodResponse;

  factory OpenApiPathMethodResponse.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodResponseFromJson(json);
}

@freezed
abstract class OpenApiPathMethodRequestBody
    with _$OpenApiPathMethodRequestBody {
  const OpenApiPathMethodRequestBody._();

  const factory OpenApiPathMethodRequestBody({
    @JsonKey(name: 'required') bool? required_,
    @JsonKey(name: 'content') required OpenApiContent content,
  }) = _OpenApiPathMethodRequestBody;

  factory OpenApiPathMethodRequestBody.fromJson(Map<String, dynamic> json) =>
      _$OpenApiPathMethodRequestBodyFromJson(json);
}
