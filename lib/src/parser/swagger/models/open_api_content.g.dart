// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OpenApiContentImpl _$$OpenApiContentImplFromJson(Map<String, dynamic> json) =>
    _$OpenApiContentImpl(
      applicationJson: json['application/json'] == null
          ? null
          : OpenApiContentSchema.fromJson(
              json['application/json'] as Map<String, dynamic>),
      applicationXWwwFormUrlencoded:
          json['application/x-www-form-urlencoded'] == null
              ? null
              : OpenApiContentSchema.fromJson(
                  json['application/x-www-form-urlencoded']
                      as Map<String, dynamic>),
      multipartFormData: json['multipart/form-data'] == null
          ? null
          : OpenApiContentSchema.fromJson(
              json['multipart/form-data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OpenApiContentImplToJson(
        _$OpenApiContentImpl instance) =>
    <String, dynamic>{
      if (instance.applicationJson?.toJson() case final value?)
        'application/json': value,
      if (instance.applicationXWwwFormUrlencoded?.toJson() case final value?)
        'application/x-www-form-urlencoded': value,
      if (instance.multipartFormData?.toJson() case final value?)
        'multipart/form-data': value,
    };

_$OpenApiContentSchemaImpl _$$OpenApiContentSchemaImplFromJson(
        Map<String, dynamic> json) =>
    _$OpenApiContentSchemaImpl(
      schema: const OpenApiSchemaJsonMapConverter()
          .fromJson(json['schema'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OpenApiContentSchemaImplToJson(
        _$OpenApiContentSchemaImpl instance) =>
    <String, dynamic>{
      'schema': const OpenApiSchemaJsonMapConverter().toJson(instance.schema),
    };
