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
          ?.map(
            (e) => (e as Map<String, dynamic>).map(
              (k, e) => MapEntry(k, e as List<dynamic>),
            ),
          )
          .toList(),
      parameters: (json['parameters'] as List<dynamic>?)
          ?.map(
            (e) =>
                OpenApiPathMethodParameter.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      requestBody: json['requestBody'] == null
          ? null
          : OpenApiPathMethodRequestBody.fromJson(
              json['requestBody'] as Map<String, dynamic>,
            ),
      responses: (json['responses'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          OpenApiPathMethodResponse.fromJson(e as Map<String, dynamic>),
        ),
      ),
      servers: (json['servers'] as List<dynamic>?)
          ?.map((e) => OpenApiServer.fromJson(e as Map<String, dynamic>))
          .toList(),
      json: _jsonReadValue(json, 'json') as Map<String, dynamic>?,
    );

Map<String, dynamic> _$OpenApiPathMethodToJson(_OpenApiPathMethod instance) =>
    <String, dynamic>{
      'tags': ?instance.tags,
      'summary': ?instance.summary,
      'description': ?instance.description,
      'operationId': ?instance.operationId,
      'deprecated': ?instance.deprecated,
      'security': ?instance.security,
      'parameters': ?instance.parameters?.map((e) => e.toJson()).toList(),
      'requestBody': ?instance.requestBody?.toJson(),
      'responses': ?instance.responses?.map((k, e) => MapEntry(k, e.toJson())),
      'servers': ?instance.servers?.map((e) => e.toJson()).toList(),
      'json': ?instance.json,
    };

_OpenApiPathMethodParameter _$OpenApiPathMethodParameterFromJson(
  Map<String, dynamic> json,
) => _OpenApiPathMethodParameter(
  name: json['name'] as String,
  in_: $enumDecode(_$OpenApiPathMethodParameterTypeEnumMap, json['in']),
  required_: json['required'] as bool?,
  schema: _$JsonConverterFromJson<Map<String, dynamic>, OpenApiSchema>(
    json['schema'],
    const OpenApiSchemaJsonConverter().fromJson,
  ),
  description: json['description'] as String?,
  example: json['example'],
);

Map<String, dynamic> _$OpenApiPathMethodParameterToJson(
  _OpenApiPathMethodParameter instance,
) => <String, dynamic>{
  'name': instance.name,
  'in': _$OpenApiPathMethodParameterTypeEnumMap[instance.in_]!,
  'required': ?instance.required_,
  'schema': ?_$JsonConverterToJson<Map<String, dynamic>, OpenApiSchema>(
    instance.schema,
    const OpenApiSchemaJsonConverter().toJson,
  ),
  'description': ?instance.description,
  'example': ?instance.example,
};

const _$OpenApiPathMethodParameterTypeEnumMap = {
  OpenApiPathMethodParameterType.query: 'query',
  OpenApiPathMethodParameterType.path: 'path',
  OpenApiPathMethodParameterType.header: 'header',
  OpenApiPathMethodParameterType.cookie: 'cookie',
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_OpenApiPathMethodResponse _$OpenApiPathMethodResponseFromJson(
  Map<String, dynamic> json,
) => _OpenApiPathMethodResponse(
  description: json['description'] as String?,
  content: (json['content'] as Map<String, dynamic>?)?.map(
    (k, e) =>
        MapEntry(k, OpenApiContentSchema.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$OpenApiPathMethodResponseToJson(
  _OpenApiPathMethodResponse instance,
) => <String, dynamic>{
  'description': ?instance.description,
  'content': ?instance.content?.map((k, e) => MapEntry(k, e.toJson())),
};

_OpenApiPathMethodRequestBody _$OpenApiPathMethodRequestBodyFromJson(
  Map<String, dynamic> json,
) => _OpenApiPathMethodRequestBody(
  required_: json['required'] as bool?,
  content: (json['content'] as Map<String, dynamic>).map(
    (k, e) =>
        MapEntry(k, OpenApiContentSchema.fromJson(e as Map<String, dynamic>)),
  ),
);

Map<String, dynamic> _$OpenApiPathMethodRequestBodyToJson(
  _OpenApiPathMethodRequestBody instance,
) => <String, dynamic>{
  'required': ?instance.required_,
  'content': instance.content.map((k, e) => MapEntry(k, e.toJson())),
};
