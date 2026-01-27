// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_price_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePriceListDto _$CreatePriceListDtoFromJson(Map<String, dynamic> json) =>
    _CreatePriceListDto(
      name: json['name'] as String,
      validFrom: json['valid_from'] == null
          ? null
          : DateTime.parse(json['valid_from'] as String),
      validTo: json['valid_to'] == null
          ? null
          : DateTime.parse(json['valid_to'] as String),
      salePointIds: (json['sale_point_ids'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      policies: (json['policies'] as List<dynamic>)
          .map((e) =>
              CreatePriceListPolicyDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreatePriceListDtoToJson(_CreatePriceListDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      if (instance.validFrom?.toIso8601String() case final value?)
        'valid_from': value,
      if (instance.validTo?.toIso8601String() case final value?)
        'valid_to': value,
      'sale_point_ids': instance.salePointIds,
      'policies': instance.policies.map((e) => e.toJson()).toList(),
    };
