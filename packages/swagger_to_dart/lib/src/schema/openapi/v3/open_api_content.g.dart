// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenApiContentSchema _$OpenApiContentSchemaFromJson(
  Map<String, dynamic> json,
) => _OpenApiContentSchema(
  schema: _$JsonConverterFromJson<Map<String, dynamic>, OpenApiSchema>(
    json['schema'],
    const OpenApiSchemaJsonConverter().fromJson,
  ),
  example: json['example'],
);

Map<String, dynamic> _$OpenApiContentSchemaToJson(
  _OpenApiContentSchema instance,
) => <String, dynamic>{
  'schema': ?_$JsonConverterToJson<Map<String, dynamic>, OpenApiSchema>(
    instance.schema,
    const OpenApiSchemaJsonConverter().toJson,
  ),
  'example': ?instance.example,
};

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) => json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);
