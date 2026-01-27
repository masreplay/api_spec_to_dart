// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_list_policy_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceListPolicyDto _$PriceListPolicyDtoFromJson(Map<String, dynamic> json) =>
    _PriceListPolicyDto(
      id: json['id'] as String,
      policyType:
          PriceListPolicyPolicyType.fromJson(json['policy_type'] as String),
      policyTypeValue: (json['policy_type_value'] as num).toDouble(),
      enabled: json['enabled'] as bool,
      notes: json['notes'] as String?,
      items: (json['items'] as List<dynamic>)
          .map(
              (e) => PriceListPolicyItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PriceListPolicyDtoToJson(_PriceListPolicyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'policy_type': instance.policyType.toJson(),
      'policy_type_value': instance.policyTypeValue,
      'enabled': instance.enabled,
      if (instance.notes case final value?) 'notes': value,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
