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

const _$SwaggerToDartYamlFieldMap = <String, String>{
  'swaggerToDart': 'swagger_to_dart',
};

abstract final class _$SwaggerToDartYamlJsonKeys {
  static const String swaggerToDart = 'swagger_to_dart';
}

// ignore: unused_element
abstract class _$SwaggerToDartYamlPerFieldToJson {
  // ignore: unused_element
  static Object? swaggerToDart(SwaggerToDart instance) => instance.toJson();
}

Map<String, dynamic> _$SwaggerToDartYamlToJson(_SwaggerToDartYaml instance) =>
    <String, dynamic>{
      'swagger_to_dart': instance.swaggerToDart.toJson(),
    };

_ModelConfig _$ModelConfigFromJson(Map<String, dynamic> json) => _ModelConfig(
      supportGenericArguments:
          json['support_generic_arguments'] as bool? ?? false,
      unionClassFallbackName: json['union_class_fallback_name'] as String?,
      enumFallbackType: $enumDecodeNullable(
              _$EnumFallbackTypeEnumMap, json['enum_fallback_type']) ??
          EnumFallbackType.unknown,
      removeModelPrefixes: (json['remove_model_prefixes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

const _$ModelConfigFieldMap = <String, String>{
  'supportGenericArguments': 'support_generic_arguments',
  'unionClassFallbackName': 'union_class_fallback_name',
  'enumFallbackType': 'enum_fallback_type',
  'removeModelPrefixes': 'remove_model_prefixes',
};

abstract final class _$ModelConfigJsonKeys {
  static const String supportGenericArguments = 'support_generic_arguments';
  static const String unionClassFallbackName = 'union_class_fallback_name';
  static const String enumFallbackType = 'enum_fallback_type';
  static const String removeModelPrefixes = 'remove_model_prefixes';
}

// ignore: unused_element
abstract class _$ModelConfigPerFieldToJson {
  // ignore: unused_element
  static Object? supportGenericArguments(bool instance) => instance;
  // ignore: unused_element
  static Object? unionClassFallbackName(String? instance) => instance;
  // ignore: unused_element
  static Object? enumFallbackType(EnumFallbackType instance) =>
      _$EnumFallbackTypeEnumMap[instance]!;
  // ignore: unused_element
  static Object? removeModelPrefixes(List<String> instance) => instance;
}

Map<String, dynamic> _$ModelConfigToJson(_ModelConfig instance) =>
    <String, dynamic>{
      'support_generic_arguments': instance.supportGenericArguments,
      if (instance.unionClassFallbackName case final value?)
        'union_class_fallback_name': value,
      'enum_fallback_type':
          _$EnumFallbackTypeEnumMap[instance.enumFallbackType]!,
      'remove_model_prefixes': instance.removeModelPrefixes,
    };

const _$EnumFallbackTypeEnumMap = {
  EnumFallbackType.unknown: 'unknown',
  EnumFallbackType.first: 'first',
  EnumFallbackType.last: 'last',
  EnumFallbackType.throwException: 'throwException',
};

_ApiClientConfig _$ApiClientConfigFromJson(Map<String, dynamic> json) =>
    _ApiClientConfig(
      baseApiClientClassName:
          json['base_api_client_class_name'] as String? ?? 'BaseApiClient',
      useClassForQueryParameters:
          json['use_class_for_query_parameters'] as bool? ?? false,
      useClassForMultipartFormData:
          json['use_class_for_multipart_form_data'] as bool? ?? false,
      skippedParameters: (json['skipped_parameters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

const _$ApiClientConfigFieldMap = <String, String>{
  'baseApiClientClassName': 'base_api_client_class_name',
  'useClassForQueryParameters': 'use_class_for_query_parameters',
  'useClassForMultipartFormData': 'use_class_for_multipart_form_data',
  'skippedParameters': 'skipped_parameters',
};

abstract final class _$ApiClientConfigJsonKeys {
  static const String baseApiClientClassName = 'base_api_client_class_name';
  static const String useClassForQueryParameters =
      'use_class_for_query_parameters';
  static const String useClassForMultipartFormData =
      'use_class_for_multipart_form_data';
  static const String skippedParameters = 'skipped_parameters';
}

// ignore: unused_element
abstract class _$ApiClientConfigPerFieldToJson {
  // ignore: unused_element
  static Object? baseApiClientClassName(String instance) => instance;
  // ignore: unused_element
  static Object? useClassForQueryParameters(bool instance) => instance;
  // ignore: unused_element
  static Object? useClassForMultipartFormData(bool instance) => instance;
  // ignore: unused_element
  static Object? skippedParameters(List<String> instance) => instance;
}

Map<String, dynamic> _$ApiClientConfigToJson(_ApiClientConfig instance) =>
    <String, dynamic>{
      'base_api_client_class_name': instance.baseApiClientClassName,
      'use_class_for_query_parameters': instance.useClassForQueryParameters,
      'use_class_for_multipart_form_data':
          instance.useClassForMultipartFormData,
      'skipped_parameters': instance.skippedParameters,
    };

_SwaggerToDart _$SwaggerToDartFromJson(Map<String, dynamic> json) =>
    _SwaggerToDart(
      url: json['url'] as String?,
      generationSource: json['generation_source'] == null
          ? null
          : GenerationSource.fromJson(json['generation_source'] as String),
      inputDirectory:
          json['input_directory'] as String? ?? 'schema/swagger.json',
      outputDirectory: json['output_directory'] as String? ?? 'lib/src/gen',
      model: json['model'] == null
          ? const ModelConfig()
          : ModelConfig.fromJson(json['model'] as Map<String, dynamic>),
      apiClient: json['api_client'] == null
          ? const ApiClientConfig()
          : ApiClientConfig.fromJson(
              json['api_client'] as Map<String, dynamic>),
    );

const _$SwaggerToDartFieldMap = <String, String>{
  'url': 'url',
  'generationSource': 'generation_source',
  'inputDirectory': 'input_directory',
  'outputDirectory': 'output_directory',
  'model': 'model',
  'apiClient': 'api_client',
};

abstract final class _$SwaggerToDartJsonKeys {
  static const String url = 'url';
  static const String generationSource = 'generation_source';
  static const String inputDirectory = 'input_directory';
  static const String outputDirectory = 'output_directory';
  static const String model = 'model';
  static const String apiClient = 'api_client';
}

// ignore: unused_element
abstract class _$SwaggerToDartPerFieldToJson {
  // ignore: unused_element
  static Object? url(String? instance) => instance;
  // ignore: unused_element
  static Object? generationSource(GenerationSource? instance) =>
      instance?.toJson();
  // ignore: unused_element
  static Object? inputDirectory(String instance) => instance;
  // ignore: unused_element
  static Object? outputDirectory(String instance) => instance;
  // ignore: unused_element
  static Object? model(ModelConfig instance) => instance.toJson();
  // ignore: unused_element
  static Object? apiClient(ApiClientConfig instance) => instance.toJson();
}

Map<String, dynamic> _$SwaggerToDartToJson(_SwaggerToDart instance) =>
    <String, dynamic>{
      if (instance.url case final value?) 'url': value,
      if (instance.generationSource?.toJson() case final value?)
        'generation_source': value,
      'input_directory': instance.inputDirectory,
      'output_directory': instance.outputDirectory,
      'model': instance.model.toJson(),
      'api_client': instance.apiClient.toJson(),
    };

const _$GenerationSourceEnumMap = {
  GenerationSource.fastAPI: 'FastAPI',
  GenerationSource.dotnet: 'dotnet',
  GenerationSource.abpIO: 'abp.io',
};
