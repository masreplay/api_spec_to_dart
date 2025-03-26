// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenApiComponents _$OpenApiComponentsFromJson(Map<String, dynamic> json) =>
    _OpenApiComponents(
      schemas: (json['schemas'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, OpenApiSchemas.fromJson(e as Map<String, dynamic>)),
      ),
      securitySchemes: json['securitySchemes'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$OpenApiComponentsToJson(_OpenApiComponents instance) =>
    <String, dynamic>{
      'schemas': instance.schemas.map((k, e) => MapEntry(k, e.toJson())),
      'securitySchemes': instance.securitySchemes,
    };

_OpenApiSchemas _$OpenApiSchemasFromJson(
  Map<String, dynamic> json,
) => _OpenApiSchemas(
  properties: (json['properties'] as Map<String, dynamic>?)?.map(
    (k, e) => MapEntry(
      k,
      const OpenApiSchemaJsonConverter().fromJson(e as Map<String, dynamic>),
    ),
  ),
  type: json['type'] as String,
  required_:
      (json['required'] as List<dynamic>?)?.map((e) => e as String).toList(),
  enum_: (json['enum'] as List<dynamic>?)?.map((e) => e as Object).toList(),
  const_: json['const'],
  title: json['title'] as String?,
  description: json['description'] as String?,
  xEnumVarnames:
      (json['x-enum-varnames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
);

Map<String, dynamic> _$OpenApiSchemasToJson(_OpenApiSchemas instance) =>
    <String, dynamic>{
      if (instance.properties?.map(
            (k, e) => MapEntry(k, const OpenApiSchemaJsonConverter().toJson(e)),
          )
          case final value?)
        'properties': value,
      'type': instance.type,
      if (instance.required_ case final value?) 'required': value,
      if (instance.enum_ case final value?) 'enum': value,
      if (instance.const_ case final value?) 'const': value,
      if (instance.title case final value?) 'title': value,
      if (instance.description case final value?) 'description': value,
      if (instance.xEnumVarnames case final value?) 'x-enum-varnames': value,
    };
