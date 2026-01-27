// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginResultDto _$LoginResultDtoFromJson(Map<String, dynamic> json) =>
    _LoginResultDto(
      credentials:
          CredentialsDto.fromJson(json['credentials'] as Map<String, dynamic>),
      user: UserDto.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LoginResultDtoToJson(_LoginResultDto instance) =>
    <String, dynamic>{
      'credentials': instance.credentials.toJson(),
      'user': instance.user.toJson(),
    };
