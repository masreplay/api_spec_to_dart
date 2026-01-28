// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_price_list_policy_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdatePriceListPolicyDto _$UpdatePriceListPolicyDtoFromJson(
        Map<String, dynamic> json) =>
    _UpdatePriceListPolicyDto(
      id: json['id'] as String?,
      policyType: json['policy_type'] == null
          ? null
          : PriceListPolicyPolicyType.fromJson(json['policy_type'] as String),
      policyTypeValue: (json['policy_type_value'] as num?)?.toDouble(),
      enabled: json['enabled'] as bool?,
      notes: json['notes'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              UpdatePriceListPolicyItemDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdatePriceListPolicyDtoToJson(
        _UpdatePriceListPolicyDto instance) =>
    <String, dynamic>{
      if (instance.id case final value?) 'id': value,
      if (instance.policyType?.toJson() case final value?) 'policy_type': value,
      if (instance.policyTypeValue case final value?)
        'policy_type_value': value,
      if (instance.enabled case final value?) 'enabled': value,
      if (instance.notes case final value?) 'notes': value,
      if (instance.items?.map((e) => e.toJson()).toList() case final value?)
        'items': value,
    };
