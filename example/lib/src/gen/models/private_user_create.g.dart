// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'private_user_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PrivateUserCreate _$PrivateUserCreateFromJson(Map<String, dynamic> json) =>
    _PrivateUserCreate(
      email: json['email'] as String,
      password: json['password'] as String,
      fullName: json['full_name'] as String,
      isVerified: json['is_verified'] as bool? ?? false,
    );

Map<String, dynamic> _$PrivateUserCreateToJson(_PrivateUserCreate instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'full_name': instance.fullName,
      'is_verified': instance.isVerified,
    };
