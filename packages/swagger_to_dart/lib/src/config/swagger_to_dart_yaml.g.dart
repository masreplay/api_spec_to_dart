// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger_to_dart_yaml.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SwaggerToDartYaml _$SwaggerToDartYamlFromJson(Map<String, dynamic> json) =>
    _SwaggerToDartYaml(
      swaggerToDart: SwaggerToDart.fromJson(
          json['swagger_to_dart'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SwaggerToDartYamlToJson(_SwaggerToDartYaml instance) =>
    <String, dynamic>{
      'swagger_to_dart': instance.swaggerToDart.toJson(),
    };

_JsonSerializableConfig _$JsonSerializableConfigFromJson(
        Map<String, dynamic> json) =>
    _JsonSerializableConfig(
      fallbackType: $enumDecodeNullable(
              _$JsonSerializableConfigFallbackTypeEnumMap,
              json['fallback_type']) ??
          JsonSerializableConfigFallbackType.unknown,
    );

Map<String, dynamic> _$JsonSerializableConfigToJson(
        _JsonSerializableConfig instance) =>
    <String, dynamic>{
      'fallback_type':
          _$JsonSerializableConfigFallbackTypeEnumMap[instance.fallbackType]!,
    };

const _$JsonSerializableConfigFallbackTypeEnumMap = {
  JsonSerializableConfigFallbackType.unknown: 'unknown',
  JsonSerializableConfigFallbackType.first: 'first',
  JsonSerializableConfigFallbackType.last: 'last',
  JsonSerializableConfigFallbackType.throwException: 'throwException',
};

_ModelConfig _$ModelConfigFromJson(Map<String, dynamic> json) => _ModelConfig(
      genericArgument: json['generic_argument'] as bool? ?? false,
      jsonSerializable: json['json_serializable'] == null
          ? const JsonSerializableConfig()
          : JsonSerializableConfig.fromJson(
              json['json_serializable'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModelConfigToJson(_ModelConfig instance) =>
    <String, dynamic>{
      'generic_argument': instance.genericArgument,
      'json_serializable': instance.jsonSerializable.toJson(),
    };

_ApiClientConfig _$ApiClientConfigFromJson(Map<String, dynamic> json) =>
    _ApiClientConfig(
      useClassForQueryParameters:
          json['use_class_for_query_parameters'] as bool? ?? false,
      skippedParameters: (json['skipped_parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      baseApiClientClassName:
          json['base_api_client_class_name'] as String? ?? 'BaseApiClient',
    );

Map<String, dynamic> _$ApiClientConfigToJson(_ApiClientConfig instance) =>
    <String, dynamic>{
      'use_class_for_query_parameters': instance.useClassForQueryParameters,
      'skipped_parameters': instance.skippedParameters,
      'base_api_client_class_name': instance.baseApiClientClassName,
    };

_SwaggerToDart _$SwaggerToDartFromJson(Map<String, dynamic> json) =>
    _SwaggerToDart(
      url: json['url'] as String?,
      generationSource: $enumDecodeNullable(
          _$GenerationSourceEnumMap, json['generation_source']),
      inputDirectory:
          json['input_directory'] as String? ?? 'schema/swagger.json',
      outputDirectory: json['output_directory'] as String? ?? 'lib/src/gen',
      imports: (json['imports'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      model: json['model'] == null
          ? const ModelConfig()
          : ModelConfig.fromJson(json['model'] as Map<String, dynamic>),
      apiClient: json['api_client'] == null
          ? const ApiClientConfig()
          : ApiClientConfig.fromJson(
              json['api_client'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SwaggerToDartToJson(_SwaggerToDart instance) =>
    <String, dynamic>{
      if (instance.url case final value?) 'url': value,
      if (_$GenerationSourceEnumMap[instance.generationSource]
          case final value?)
        'generation_source': value,
      'input_directory': instance.inputDirectory,
      'output_directory': instance.outputDirectory,
      'imports': instance.imports,
      'model': instance.model.toJson(),
      'api_client': instance.apiClient.toJson(),
    };

const _$GenerationSourceEnumMap = {
  GenerationSource.fastapi: 'fastapi',
  GenerationSource.dotnet: 'dotnet',
};
