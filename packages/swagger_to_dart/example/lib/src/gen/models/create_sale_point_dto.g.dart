// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_sale_point_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateSalePointDto _$CreateSalePointDtoFromJson(Map<String, dynamic> json) =>
    _CreateSalePointDto(
      name: json['name'] as String,
      usersId:
          (json['users_id'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$CreateSalePointDtoToJson(_CreateSalePointDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'users_id': instance.usersId,
    };
