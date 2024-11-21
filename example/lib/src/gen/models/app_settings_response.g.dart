// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsResponseImpl _$$AppSettingsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingsResponseImpl(
      language: json['language'] as String,
      privacyPolicyUrl: json['privacy_policy_url'] as String,
      termsOfServiceUrl: json['terms_of_service_url'] as String,
      aboutUrl: json['about_url'] as String,
      update:
          AppSettingsUpdate.fromJson(json['update'] as Map<String, dynamic>),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$$AppSettingsResponseImplToJson(
        _$AppSettingsResponseImpl instance) =>
    <String, dynamic>{
      'language': instance.language,
      'privacy_policy_url': instance.privacyPolicyUrl,
      'terms_of_service_url': instance.termsOfServiceUrl,
      'about_url': instance.aboutUrl,
      'update': instance.update,
      'version': instance.version,
    };
