// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_components.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenApiComponentsImpl _$$OpenApiComponentsImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenApiComponentsImpl(
      schemas: (json['schemas'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, OpenApiSchema.fromJson(e as Map<String, dynamic>)),
      ),
      securitySchemes: json['securitySchemes'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$OpenApiComponentsImplToJson(
        _$OpenApiComponentsImpl instance) =>
    <String, dynamic>{
      'schemas': instance.schemas,
      'securitySchemes': instance.securitySchemes,
    };

_$OpenApiSchemaImpl _$$OpenApiSchemaImplFromJson(Map<String, dynamic> json) =>
    _$OpenApiSchemaImpl();

Map<String, dynamic> _$$OpenApiSchemaImplToJson(_$OpenApiSchemaImpl instance) =>
    <String, dynamic>{};
