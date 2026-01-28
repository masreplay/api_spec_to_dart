// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ChangePasswordDto _$ChangePasswordDtoFromJson(Map<String, dynamic> json) =>
    _ChangePasswordDto(
      oldPassword: json['old_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$ChangePasswordDtoToJson(_ChangePasswordDto instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'new_password': instance.newPassword,
    };
