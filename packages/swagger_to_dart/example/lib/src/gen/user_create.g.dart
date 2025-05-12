// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserCreate _$UserCreateFromJson(Map<String, dynamic> json) => _UserCreate(
  username: json['username'] as String,
  email: json['email'] as String,
  fullName: json['fullName'] as String?,
  password: json['password'] as String,
);

Map<String, dynamic> _$UserCreateToJson(_UserCreate instance) =>
    <String, dynamic>{
      'username': instance.username,
      'email': instance.email,
      'fullName': instance.fullName,
      'password': instance.password,
    };
