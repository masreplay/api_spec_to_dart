// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_app_settings_response_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionAppSettingsResponseNoneTypeImpl
    _$$BaseResponseUnionAppSettingsResponseNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionAppSettingsResponseNoneTypeImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : AppSettingsResponse.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseUnionAppSettingsResponseNoneTypeImplToJson(
        _$BaseResponseUnionAppSettingsResponseNoneTypeImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
