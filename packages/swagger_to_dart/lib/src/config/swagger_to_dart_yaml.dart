import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/src/utils/yaml.dart';
import 'package:yaml/yaml.dart';

part 'swagger_to_dart_yaml.freezed.dart';
part 'swagger_to_dart_yaml.g.dart';

const JsonSerializable _jsonSerializable = JsonSerializable(
  fieldRename: FieldRename.snake,
  createJsonKeys: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@freezed
abstract class SwaggerToDartYaml with _$SwaggerToDartYaml {
  const SwaggerToDartYaml._();

  @_jsonSerializable
  const factory SwaggerToDartYaml({
    required SwaggerToDart swaggerToDart,
  }) = _SwaggerToDartYaml;

  factory SwaggerToDartYaml.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartYamlFromJson(json);

  factory SwaggerToDartYaml.fromYamlMap(YamlMap yaml) {
    return SwaggerToDartYaml.fromJson(yaml.toMap());
  }

  String toYamlString() {
    return YamlMapConverter.jsonToYaml(jsonEncode(toJson()));
  }

  static const String filename = 'swagger_to_dart.yaml';
}

@JsonEnum(alwaysCreate: true)
enum EnumFallbackType {
  /// Create a new instance of the enum with the value 'unknown'
  unknown,

  /// Use the first value of the enum
  first,

  /// Use the last value of the enum
  last,

  /// Throw an exception
  throwException;
}

@freezed
abstract class ModelConfig with _$ModelConfig {
  const ModelConfig._();

  @_jsonSerializable
  const factory ModelConfig({
    @Default(false) bool supportGenericArguments,
    String? unionClassFallbackName,
    @Default(EnumFallbackType.unknown) EnumFallbackType enumFallbackType,
    @Default([]) List<String> removeModelPrefixes,
  }) = _ModelConfig;

  factory ModelConfig.fromJson(Map<String, dynamic> json) =>
      _$ModelConfigFromJson(json);
}

@freezed
abstract class ApiClientConfig with _$ApiClientConfig {
  const ApiClientConfig._();

  @_jsonSerializable
  const factory ApiClientConfig({
    @Default('BaseApiClient') String baseApiClientClassName,
    @Default(false) bool useClassForQueryParameters,
    @Default(false) bool useClassForMultipartFormData,
    @Default([]) List<String> skippedParameters,
  }) = _ApiClientConfig;

  factory ApiClientConfig.fromJson(Map<String, dynamic> json) =>
      _$ApiClientConfigFromJson(json);
}

@JsonEnum(alwaysCreate: true)

/// The source of the generation
enum GenerationSource {
  /// The source is FastAPI
  /// https://fastapi.tiangolo.com/
  @JsonValue('FastAPI')
  fastAPI,

  /// The source is .NET
  /// https://dotnet.microsoft.com
  @JsonValue('dotnet')
  dotnet,

  /// The source is abp.io
  /// https://abp.io/
  @JsonValue('abp.io')
  abpIO;
}

@freezed
abstract class SwaggerToDart with _$SwaggerToDart {
  const SwaggerToDart._();

  @_jsonSerializable
  const factory SwaggerToDart({
    String? url,
    GenerationSource? generationSource,
    @Default('schema/swagger.json') String inputDirectory,
    @Default('lib/src/gen') String outputDirectory,
    @Default(ModelConfig()) ModelConfig model,
    @Default(ApiClientConfig()) ApiClientConfig apiClient,
  }) = _SwaggerToDart;

  factory SwaggerToDart.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartFromJson(json);
}
