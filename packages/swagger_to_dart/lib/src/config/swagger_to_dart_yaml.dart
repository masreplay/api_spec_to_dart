import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagger_to_dart/src/utils/yaml.dart';
import 'package:yaml/yaml.dart';

part 'swagger_to_dart_yaml.freezed.dart';
part 'swagger_to_dart_yaml.g.dart';

const JsonSerializable _jsonSerializable = JsonSerializable(
  fieldRename: FieldRename.snake,
);

@freezed
abstract class SwaggerToDartYaml with _$SwaggerToDartYaml {
  const SwaggerToDartYaml._();

  @_jsonSerializable
  const factory SwaggerToDartYaml({required SwaggerToDart swaggerToDart}) =
      _SwaggerToDartYaml;

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

enum JsonSerializableConfigFallbackType {
  /// Create a new instance of the enum with the value 'unknown'
  unknown,

  /// Use the first value of the enum
  first,

  /// Use the last value of the enum
  last,

  /// Throw an exception
  throwException,
}

@freezed
abstract class JsonSerializableConfig with _$JsonSerializableConfig {
  const JsonSerializableConfig._();

  @_jsonSerializable
  const factory JsonSerializableConfig({
    @Default(JsonSerializableConfigFallbackType.unknown)
    JsonSerializableConfigFallbackType fallbackType,
  }) = _JsonSerializableConfig;

  factory JsonSerializableConfig.fromJson(Map<String, dynamic> json) =>
      _$JsonSerializableConfigFromJson(json);
}

@freezed
abstract class ModelConfig with _$ModelConfig {
  const ModelConfig._();

  @_jsonSerializable
  const factory ModelConfig({
    @Default(false) bool supportGenericArguments,
    @Default(JsonSerializableConfig()) JsonSerializableConfig jsonSerializable,
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
    @Default([]) List<String> skippedParameters,
  }) = _ApiClientConfig;

  factory ApiClientConfig.fromJson(Map<String, dynamic> json) =>
      _$ApiClientConfigFromJson(json);
}

enum GenerationSource { fastapi, dotnet }

@freezed
abstract class SwaggerToDart with _$SwaggerToDart {
  @_jsonSerializable
  factory SwaggerToDart({
    String? url,
    GenerationSource? generationSource,
    @Default('schema/swagger.json') String inputDirectory,
    @Default('lib/src/gen') String outputDirectory,
    @Default([]) List<String> imports,
    @Default(ModelConfig()) ModelConfig model,
    @Default(ApiClientConfig()) ApiClientConfig apiClient,
  }) = _SwaggerToDart;

  factory SwaggerToDart.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartFromJson(json);
}
