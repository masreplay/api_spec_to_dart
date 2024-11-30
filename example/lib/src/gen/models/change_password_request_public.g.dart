// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_request_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChangePasswordRequestPublicImpl _$$ChangePasswordRequestPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$ChangePasswordRequestPublicImpl(
      oldPassword: json['old_password'] as String,
      newPassword: json['new_password'] as String,
    );

Map<String, dynamic> _$$ChangePasswordRequestPublicImplToJson(
        _$ChangePasswordRequestPublicImpl instance) =>
    <String, dynamic>{
      'old_password': instance.oldPassword,
      'new_password': instance.newPassword,
    };
