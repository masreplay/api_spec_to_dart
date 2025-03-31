// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger_to_dart_yaml.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SwaggerToDartYaml _$SwaggerToDartYamlFromJson(Map<String, dynamic> json) =>
    _SwaggerToDartYaml(
      swaggerToDart: SwaggerToDart.fromJson(
        json['swagger_to_dart'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$SwaggerToDartYamlToJson(_SwaggerToDartYaml instance) =>
    <String, dynamic>{'swagger_to_dart': instance.swaggerToDart.toJson()};

_SwaggerToDart _$SwaggerToDartFromJson(
  Map<String, dynamic> json,
) => _SwaggerToDart(
  url: json['url'] as String?,
  inputDirectory: json['input_directory'] as String? ?? 'schema/swagger.json',
  outputDirectory: json['output_directory'] as String? ?? 'lib/src/gen',
  apiClientClassName: json['api_client_class_name'] as String? ?? 'ApiClient',
  imports:
      (json['imports'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  skippedParameters:
      (json['skipped_parameters'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
);

Map<String, dynamic> _$SwaggerToDartToJson(_SwaggerToDart instance) =>
    <String, dynamic>{
      if (instance.url case final value?) 'url': value,
      'input_directory': instance.inputDirectory,
      'output_directory': instance.outputDirectory,
      'api_client_class_name': instance.apiClientClassName,
      'imports': instance.imports,
      'skipped_parameters': instance.skippedParameters,
    };
