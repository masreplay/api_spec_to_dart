// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_paths.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenApiPathMethod _$OpenApiPathMethodFromJson(Map<String, dynamic> json) =>
    _OpenApiPathMethod(
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      summary: json['summary'] as String?,
      description: json['description'] as String?,
      operationId: json['operationId'] as String?,
      deprecated: json['deprecated'] as bool?,
      security: (json['security'] as List<dynamic>?)
          ?.map((e) => (e as Map<String, dynamic>).map(
                (k, e) => MapEntry(k, e as List<dynamic>),
              ))
          .toList(),
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map((e) =>
              OpenApiPathMethodParameter.fromJson(e as Map<String, dynamic>))
          .toList(),
      requestBody: json['requestBody'] == null
          ? null
          : OpenApiPathMethodRequestBody.fromJson(
              json['requestBody'] as Map<String, dynamic>),
      responses: (json['responses'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, OpenApiPathMethodResponse.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$OpenApiPathMethodToJson(_OpenApiPathMethod instance) =>
    <String, dynamic>{
      if (instance.tags case final value?) 'tags': value,
      if (instance.summary case final value?) 'summary': value,
      if (instance.description case final value?) 'description': value,
      if (instance.operationId case final value?) 'operationId': value,
      if (instance.deprecated case final value?) 'deprecated': value,
      if (instance.security case final value?) 'security': value,
      if (instance.parameters?.map((e) => e.toJson()).toList()
          case final value?)
        'parameters': value,
      if (instance.requestBody?.toJson() case final value?)
        'requestBody': value,
      if (instance.responses?.map((k, e) => MapEntry(k, e.toJson()))
          case final value?)
        'responses': value,
    };

_OpenApiPathMethodParameter _$OpenApiPathMethodParameterFromJson(
        Map<String, dynamic> json) =>
    _OpenApiPathMethodParameter(
      name: json['name'] as String,
      in_: $enumDecode(_$OpenApiPathMethodParameterTypeEnumMap, json['in']),
      required_: json['required'] as bool?,
      schema: const OpenApiSchemaJsonConverter()
          .fromJson(json['schema'] as Map<String, dynamic>),
      description: json['description'] as String?,
      example: json['example'],
    );

Map<String, dynamic> _$OpenApiPathMethodParameterToJson(
        _OpenApiPathMethodParameter instance) =>
    <String, dynamic>{
      'name': instance.name,
      'in': _$OpenApiPathMethodParameterTypeEnumMap[instance.in_]!,
      if (instance.required_ case final value?) 'required': value,
      'schema': const OpenApiSchemaJsonConverter().toJson(instance.schema),
      if (instance.description case final value?) 'description': value,
      if (instance.example case final value?) 'example': value,
    };

const _$OpenApiPathMethodParameterTypeEnumMap = {
  OpenApiPathMethodParameterType.query: 'query',
  OpenApiPathMethodParameterType.path: 'path',
  OpenApiPathMethodParameterType.header: 'header',
  OpenApiPathMethodParameterType.cookie: 'cookie',
};

_OpenApiPathMethodResponse _$OpenApiPathMethodResponseFromJson(
        Map<String, dynamic> json) =>
    _OpenApiPathMethodResponse(
      description: json['description'] as String?,
      content: json['content'] == null
          ? null
          : OpenApiContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OpenApiPathMethodResponseToJson(
        _OpenApiPathMethodResponse instance) =>
    <String, dynamic>{
      if (instance.description case final value?) 'description': value,
      if (instance.content?.toJson() case final value?) 'content': value,
    };

_OpenApiPathMethodRequestBody _$OpenApiPathMethodRequestBodyFromJson(
        Map<String, dynamic> json) =>
    _OpenApiPathMethodRequestBody(
      required_: json['required'] as bool?,
      content: OpenApiContent.fromJson(json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OpenApiPathMethodRequestBodyToJson(
        _OpenApiPathMethodRequestBody instance) =>
    <String, dynamic>{
      if (instance.required_ case final value?) 'required': value,
      'content': instance.content.toJson(),
    };
