// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_app_settings_response_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionAppSettingsResponseImpl
    _$$BaseResponseUnionAppSettingsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionAppSettingsResponseImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : AppSettingsResponse.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseUnionAppSettingsResponseImplToJson(
        _$BaseResponseUnionAppSettingsResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
