// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateUserDto _$UpdateUserDtoFromJson(Map<String, dynamic> json) =>
    _UpdateUserDto(
      name: json['name'] as String?,
      roles: (json['roles'] as List<dynamic>?)
          ?.map((e) => Role.fromJson(e as String))
          .toList(),
      isActive: json['is_active'] as bool?,
      newPassword: json['new_password'] as String?,
      salePointsId: (json['sale_points_id'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$UpdateUserDtoToJson(_UpdateUserDto instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.roles?.map((e) => e.toJson()).toList() case final value?)
        'roles': value,
      if (instance.isActive case final value?) 'is_active': value,
      if (instance.newPassword case final value?) 'new_password': value,
      if (instance.salePointsId case final value?) 'sale_points_id': value,
    };
