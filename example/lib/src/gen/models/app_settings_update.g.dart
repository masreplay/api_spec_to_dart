// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsUpdateImpl _$$AppSettingsUpdateImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingsUpdateImpl(
      isForceUpdate: json['is_force_update'] as bool,
      android:
          AppSettingsAndroid.fromJson(json['android'] as Map<String, dynamic>),
      ios: AppSettingsIos.fromJson(json['ios'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppSettingsUpdateImplToJson(
        _$AppSettingsUpdateImpl instance) =>
    <String, dynamic>{
      'is_force_update': instance.isForceUpdate,
      'android': instance.android,
      'ios': instance.ios,
    };
