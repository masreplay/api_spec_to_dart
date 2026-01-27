// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_price_list_policy_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePriceListPolicyDto _$CreatePriceListPolicyDtoFromJson(
        Map<String, dynamic> json) =>
    _CreatePriceListPolicyDto(
      policyType:
          PriceListPolicyPolicyType.fromJson(json['policy_type'] as String),
      policyTypeValue: (json['policy_type_value'] as num).toDouble(),
      notes: json['notes'] as String?,
      items: (json['items'] as List<dynamic>)
          .map((e) =>
              CreatePriceListPolicyItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreatePriceListPolicyDtoToJson(
        _CreatePriceListPolicyDto instance) =>
    <String, dynamic>{
      'policy_type': instance.policyType.toJson(),
      'policy_type_value': instance.policyTypeValue,
      if (instance.notes case final value?) 'notes': value,
      'items': instance.items.map((e) => e.toJson()).toList(),
    };
