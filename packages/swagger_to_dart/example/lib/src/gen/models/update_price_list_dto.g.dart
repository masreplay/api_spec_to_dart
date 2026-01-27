// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_price_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdatePriceListDto _$UpdatePriceListDtoFromJson(Map<String, dynamic> json) =>
    _UpdatePriceListDto(
      name: json['name'] as String?,
      enabled: json['enabled'] as bool?,
      validFrom: json['valid_from'] == null
          ? null
          : DateTime.parse(json['valid_from'] as String),
      validTo: json['valid_to'] == null
          ? null
          : DateTime.parse(json['valid_to'] as String),
      salePointIds: (json['sale_point_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      policies: (json['policies'] as List<dynamic>?)
          ?.map((e) =>
              UpdatePriceListPolicyDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdatePriceListDtoToJson(_UpdatePriceListDto instance) =>
    <String, dynamic>{
      if (instance.name case final value?) 'name': value,
      if (instance.enabled case final value?) 'enabled': value,
      if (instance.validFrom?.toIso8601String() case final value?)
        'valid_from': value,
      if (instance.validTo?.toIso8601String() case final value?)
        'valid_to': value,
      if (instance.salePointIds case final value?) 'sale_point_ids': value,
      if (instance.policies?.map((e) => e.toJson()).toList() case final value?)
        'policies': value,
    };
