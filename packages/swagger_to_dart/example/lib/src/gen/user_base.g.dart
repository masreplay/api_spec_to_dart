// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserBase _$UserBaseFromJson(Map<String, dynamic> json) => _UserBase(
  username: json['username'] as String,
  email: json['email'] as String,
  fullName: json['full_name'] as String?,
);

Map<String, dynamic> _$UserBaseToJson(_UserBase instance) => <String, dynamic>{
  'username': instance.username,
  'email': instance.email,
  'full_name': instance.fullName,
};
