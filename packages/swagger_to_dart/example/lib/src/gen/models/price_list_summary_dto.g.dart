// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_list_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceListSummaryDto _$PriceListSummaryDtoFromJson(Map<String, dynamic> json) =>
    _PriceListSummaryDto(
      id: json['id'] as String,
      name: json['name'] as String,
      enabled: json['enabled'] as bool,
      validFrom: json['valid_from'] == null
          ? null
          : DateTime.parse(json['valid_from'] as String),
      validTo: json['valid_to'] == null
          ? null
          : DateTime.parse(json['valid_to'] as String),
      isDefault: json['is_default'] as bool,
      salePointCount: (json['sale_point_count'] as num).toInt(),
      policyCount: (json['policy_count'] as num).toInt(),
    );

Map<String, dynamic> _$PriceListSummaryDtoToJson(
        _PriceListSummaryDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'enabled': instance.enabled,
      if (instance.validFrom?.toIso8601String() case final value?)
        'valid_from': value,
      if (instance.validTo?.toIso8601String() case final value?)
        'valid_to': value,
      'is_default': instance.isDefault,
      'sale_point_count': instance.salePointCount,
      'policy_count': instance.policyCount,
    };
