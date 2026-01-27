// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_sale_point_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateSalePointDto _$UpdateSalePointDtoFromJson(Map<String, dynamic> json) =>
    _UpdateSalePointDto(
      name: json['name'] as String?,
      usersId: (json['users_id'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$UpdateSalePointDtoToJson(_UpdateSalePointDto instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.usersId case final value?) 'users_id': value,
    };
