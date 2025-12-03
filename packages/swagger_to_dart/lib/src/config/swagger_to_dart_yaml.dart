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
    @JsonKey(name: 'swagger_to_dart') required SwaggerToDart swaggerToDart,
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
    @Default(false)
    @JsonKey(name: 'support_generic_arguments')
    bool supportGenericArguments,
    @JsonKey(name: 'union_class_fallback_name') String? unionClassFallbackName,
    @Default(EnumFallbackType.unknown)
    @JsonKey(name: 'enum_fallback_type')
    EnumFallbackType enumFallbackType,
    @Default([])
    @JsonKey(name: 'remove_model_prefixes')
    List<String> removeModelPrefixes,
  }) = _ModelConfig;

  factory ModelConfig.fromJson(Map<String, dynamic> json) =>
      _$ModelConfigFromJson(json);
}

@freezed
abstract class ApiClientConfig with _$ApiClientConfig {
  const ApiClientConfig._();

  @_jsonSerializable
  const factory ApiClientConfig({
    @Default('BaseApiClient')
    @JsonKey(name: 'base_api_client_class_name')
    String baseApiClientClassName,
    @Default(false)
    @JsonKey(name: 'use_class_for_query_parameters')
    bool useClassForQueryParameters,
    @Default(false)
    @JsonKey(name: 'use_class_for_multipart_form_data')
    bool useClassForMultipartFormData,
    @Default([])
    @JsonKey(name: 'skipped_parameters')
    List<String> skippedParameters,
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

  factory GenerationSource.fromJson(String value) {
    return _$GenerationSourceEnumMap.entries
        .firstWhere((e) => e.value == value)
        .key;
  }

  String toJson() => _$GenerationSourceEnumMap[this]!;
}

/// ```yaml`
/// imports:
///   global:
///       - "import 'package:retrofit/retrofit.dart';"
/// ```

@freezed
abstract class SwaggerToDartImport with _$SwaggerToDartImport {
  const SwaggerToDartImport._();

  const factory SwaggerToDartImport({
    @Default([]) @JsonKey(name: 'global') List<String> globalImports,
  }) = _SwaggerToDartImport;

  factory SwaggerToDartImport.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartImportFromJson(json);
}

@freezed
abstract class SwaggerToDart with _$SwaggerToDart {
  const SwaggerToDart._();

  @_jsonSerializable
  const factory SwaggerToDart({
    @JsonKey(name: 'url') String? url,
    @JsonKey(name: 'generation_source') GenerationSource? generationSource,
    @Default('schema/swagger.json')
    @JsonKey(name: 'input_directory')
    String inputDirectory,
    @Default('lib/src/gen')
    @JsonKey(name: 'output_directory')
    String outputDirectory,
    @Default(ModelConfig()) @JsonKey(name: 'model') ModelConfig model,
    @Default(ApiClientConfig())
    @JsonKey(name: 'api_client')
    ApiClientConfig apiClient,
    @JsonKey(name: 'imports') SwaggerToDartImport? imports,
  }) = _SwaggerToDart;

  factory SwaggerToDart.fromJson(Map<String, dynamic> json) =>
      _$SwaggerToDartFromJson(json);
}
