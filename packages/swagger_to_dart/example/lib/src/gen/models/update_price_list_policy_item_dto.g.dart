// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_price_list_policy_item_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdatePriceListPolicyItemDto _$UpdatePriceListPolicyItemDtoFromJson(
        Map<String, dynamic> json) =>
    _UpdatePriceListPolicyItemDto(
      productId: json['product_id'] as String,
      productPresentationId: json['product_presentation_id'] as String,
    );

Map<String, dynamic> _$UpdatePriceListPolicyItemDtoToJson(
        _UpdatePriceListPolicyItemDto instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'product_presentation_id': instance.productPresentationId,
    };
