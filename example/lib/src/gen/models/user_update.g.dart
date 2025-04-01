// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserUpdate _$UserUpdateFromJson(Map<String, dynamic> json) => _UserUpdate(
  email: json['email'] as String?,
  isActive: json['is_active'] as bool? ?? true,
  isSuperuser: json['is_superuser'] as bool? ?? false,
  fullName: json['full_name'] as String?,
  password: json['password'] as String?,
);

Map<String, dynamic> _$UserUpdateToJson(_UserUpdate instance) =>
    <String, dynamic>{
      if (instance.email case final value?) 'email': value,
      'is_active': instance.isActive,
      'is_superuser': instance.isSuperuser,
      if (instance.fullName case final value?) 'full_name': value,
      if (instance.password case final value?) 'password': value,
    };
