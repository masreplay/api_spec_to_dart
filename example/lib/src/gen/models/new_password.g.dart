// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_password.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NewPassword _$NewPasswordFromJson(Map<String, dynamic> json) => _NewPassword(
  token: json['token'] as String,
  newPassword: json['new_password'] as String,
);

Map<String, dynamic> _$NewPasswordToJson(_NewPassword instance) =>
    <String, dynamic>{
      'token': instance.token,
      'new_password': instance.newPassword,
    };
