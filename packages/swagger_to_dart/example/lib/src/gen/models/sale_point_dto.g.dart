// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_point_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SalePointDto _$SalePointDtoFromJson(Map<String, dynamic> json) =>
    _SalePointDto(
      id: json['id'] as String,
      name: json['name'] as String,
      number: (json['number'] as num).toInt(),
      isDefault: json['is_default'] as bool,
      users: (json['users'] as List<dynamic>)
          .map((e) => UserRef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SalePointDtoToJson(_SalePointDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
      'is_default': instance.isDefault,
      'users': instance.users.map((e) => e.toJson()).toList(),
    };
