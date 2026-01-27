// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceListDto _$PriceListDtoFromJson(Map<String, dynamic> json) =>
    _PriceListDto(
      id: json['id'] as String,
      name: json['name'] as String,
      enabled: json['enabled'] as bool,
      isDefault: json['is_default'] as bool,
      validFrom: json['valid_from'] == null
          ? null
          : DateTime.parse(json['valid_from'] as String),
      validTo: json['valid_to'] == null
          ? null
          : DateTime.parse(json['valid_to'] as String),
      salePoints: (json['sale_points'] as List<dynamic>)
          .map((e) => PriceListSalePointDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      policies: (json['policies'] as List<dynamic>)
          .map((e) => PriceListPolicyDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PriceListDtoToJson(_PriceListDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'enabled': instance.enabled,
      'is_default': instance.isDefault,
      if (instance.validFrom?.toIso8601String() case final value?)
        'valid_from': value,
      if (instance.validTo?.toIso8601String() case final value?)
        'valid_to': value,
      'sale_points': instance.salePoints.map((e) => e.toJson()).toList(),
      'policies': instance.policies.map((e) => e.toJson()).toList(),
    };
