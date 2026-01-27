// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDto _$UserDtoFromJson(Map<String, dynamic> json) => _UserDto(
      id: json['id'] as String,
      name: json['name'] as String,
      username: json['username'] as String,
      isActive: json['is_active'] as bool,
      roles: (json['roles'] as List<dynamic>)
          .map((e) => Role.fromJson(e as String))
          .toList(),
      salePoints: (json['sale_points'] as List<dynamic>)
          .map((e) => SalePointRef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserDtoToJson(_UserDto instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'is_active': instance.isActive,
      'roles': instance.roles.map((e) => e.toJson()).toList(),
      'sale_points': instance.salePoints.map((e) => e.toJson()).toList(),
    };
