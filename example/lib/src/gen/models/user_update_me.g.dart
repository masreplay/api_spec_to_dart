// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_update_me.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserUpdateMe _$UserUpdateMeFromJson(Map<String, dynamic> json) =>
    _UserUpdateMe(
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$UserUpdateMeToJson(_UserUpdateMe instance) =>
    <String, dynamic>{
      if (instance.fullName case final value?) 'full_name': value,
      if (instance.email case final value?) 'email': value,
    };
