// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenApiContentSchema _$OpenApiContentSchemaFromJson(
        Map<String, dynamic> json) =>
    _OpenApiContentSchema(
      schema: const OpenApiSchemaJsonConverter()
          .fromJson(json['schema'] as Map<String, dynamic>),
      example: json['example'],
    );

Map<String, dynamic> _$OpenApiContentSchemaToJson(
        _OpenApiContentSchema instance) =>
    <String, dynamic>{
      'schema': const OpenApiSchemaJsonConverter().toJson(instance.schema),
      if (instance.example case final value?) 'example': value,
    };

const _$OpenApiContentTypeEnumMap = {
  OpenApiContentType.applicationJson: 'application/json',
  OpenApiContentType.applicationXWwwFormUrlencoded:
      'application/x-www-form-urlencoded',
  OpenApiContentType.multipartFormData: 'multipart/form-data',
};
