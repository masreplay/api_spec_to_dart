// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserPublic _$UserPublicFromJson(Map<String, dynamic> json) => _UserPublic(
  email: json['email'] as String,
  isActive: json['is_active'] as bool? ?? true,
  isSuperuser: json['is_superuser'] as bool? ?? false,
  fullName: json['full_name'] as String?,
  id: json['id'] as String,
);

Map<String, dynamic> _$UserPublicToJson(_UserPublic instance) =>
    <String, dynamic>{
      'email': instance.email,
      'is_active': instance.isActive,
      'is_superuser': instance.isSuperuser,
      if (instance.fullName case final value?) 'full_name': value,
      'id': instance.id,
    };
