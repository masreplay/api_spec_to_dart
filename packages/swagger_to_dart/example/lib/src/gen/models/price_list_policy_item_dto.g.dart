// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_list_policy_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PriceListPolicyItemDto _$PriceListPolicyItemDtoFromJson(
        Map<String, dynamic> json) =>
    _PriceListPolicyItemDto(
      productId: json['product_id'] as String,
      productName: json['product_name'] as String,
      productPresentations: (json['product_presentations'] as List<dynamic>)
          .map((e) => PriceListPolicyItemProductPresentationDto.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PriceListPolicyItemDtoToJson(
        _PriceListPolicyItemDto instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_name': instance.productName,
      'product_presentations':
          instance.productPresentations.map((e) => e.toJson()).toList(),
    };
