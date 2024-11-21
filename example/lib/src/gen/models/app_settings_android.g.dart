// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_android.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsAndroidImpl _$$AppSettingsAndroidImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingsAndroidImpl(
      version: json['version'] as String,
      url: json['url'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$$AppSettingsAndroidImplToJson(
        _$AppSettingsAndroidImpl instance) =>
    <String, dynamic>{
      'version': instance.version,
      'url': instance.url,
      'message': instance.message,
    };
