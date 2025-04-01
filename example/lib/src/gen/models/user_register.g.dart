// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserRegister _$UserRegisterFromJson(Map<String, dynamic> json) =>
    _UserRegister(
      email: json['email'] as String,
      password: json['password'] as String,
      fullName: json['full_name'] as String?,
    );

Map<String, dynamic> _$UserRegisterToJson(_UserRegister instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      if (instance.fullName case final value?) 'full_name': value,
    };
