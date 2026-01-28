// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateUserDto _$CreateUserDtoFromJson(Map<String, dynamic> json) =>
    _CreateUserDto(
      username: json['username'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
      roles: (json['roles'] as List<dynamic>)
          .map((e) => Role.fromJson(e as String))
          .toList(),
    );

Map<String, dynamic> _$CreateUserDtoToJson(_CreateUserDto instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'password': instance.password,
      'roles': instance.roles.map((e) => e.toJson()).toList(),
    };
