// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdatePassword _$UpdatePasswordFromJson(Map<String, dynamic> json) =>
    _UpdatePassword(
      currentPassword: json['current_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$UpdatePasswordToJson(_UpdatePassword instance) =>
    <String, dynamic>{
      'current_password': instance.currentPassword,
      'new_password': instance.newPassword,
    };
