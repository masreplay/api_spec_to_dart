// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_api_content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenApiContent _$OpenApiContentFromJson(Map<String, dynamic> json) =>
    _OpenApiContent(
      applicationJson:
          json['application/json'] == null
              ? null
              : OpenApiContentSchema.fromJson(
                json['application/json'] as Map<String, dynamic>,
              ),
      applicationXWwwFormUrlencoded:
          json['application/x-www-form-urlencoded'] == null
              ? null
              : OpenApiContentSchema.fromJson(
                json['application/x-www-form-urlencoded']
                    as Map<String, dynamic>,
              ),
      multipartFormData:
          json['multipart/form-data'] == null
              ? null
              : OpenApiContentSchema.fromJson(
                json['multipart/form-data'] as Map<String, dynamic>,
              ),
    );

Map<String, dynamic> _$OpenApiContentToJson(_OpenApiContent instance) =>
    <String, dynamic>{
      if (instance.applicationJson?.toJson() case final value?)
        'application/json': value,
      if (instance.applicationXWwwFormUrlencoded?.toJson() case final value?)
        'application/x-www-form-urlencoded': value,
      if (instance.multipartFormData?.toJson() case final value?)
        'multipart/form-data': value,
    };

_OpenApiContentSchema _$OpenApiContentSchemaFromJson(
  Map<String, dynamic> json,
) => _OpenApiContentSchema(
  schema: const OpenApiSchemaJsonConverter().fromJson(
    json['schema'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$OpenApiContentSchemaToJson(
  _OpenApiContentSchema instance,
) => <String, dynamic>{
  'schema': const OpenApiSchemaJsonConverter().toJson(instance.schema),
};
