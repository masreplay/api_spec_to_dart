// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'swagger_to_dart_yaml.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SwaggerToDartYaml _$SwaggerToDartYamlFromJson(Map<String, dynamic> json) =>
    _SwaggerToDartYaml(
      inputDirectory: json['input_directory'] as String,
      outputDirectory: json['output_directory'] as String,
      apiClientClassName: json['api_client_class_name'] as String,
      skippedParameters:
          (json['skipped_parameters'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
      imports:
          (json['imports'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$SwaggerToDartYamlToJson(_SwaggerToDartYaml instance) =>
    <String, dynamic>{
      'input_directory': instance.inputDirectory,
      'output_directory': instance.outputDirectory,
      'api_client_class_name': instance.apiClientClassName,
      'skipped_parameters': instance.skippedParameters,
      'imports': instance.imports,
    };
