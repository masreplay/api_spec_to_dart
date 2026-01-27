// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_price_list_policy_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreatePriceListPolicyItemDto _$CreatePriceListPolicyItemDtoFromJson(
        Map<String, dynamic> json) =>
    _CreatePriceListPolicyItemDto(
      productId: json['product_id'] as String,
      productPresentationId: json['product_presentation_id'] as String,
    );

Map<String, dynamic> _$CreatePriceListPolicyItemDtoToJson(
        _CreatePriceListPolicyItemDto instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_presentation_id': instance.productPresentationId,
    };
