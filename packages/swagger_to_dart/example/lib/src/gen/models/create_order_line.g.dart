// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOrderLine _$CreateOrderLineFromJson(Map<String, dynamic> json) =>
    _CreateOrderLine(
      productId: json['product_id'] as String,
      presentationId: json['presentation_id'] as String,
      variantId: json['variant_id'] as String?,
      quantity: (json['quantity'] as num).toInt(),
      salePrice: (json['sale_price'] as num?)?.toDouble(),
      type: json['type'] as String? ?? 'create',
    );

Map<String, dynamic> _$CreateOrderLineToJson(_CreateOrderLine instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'presentation_id': instance.presentationId,
      if (instance.variantId case final value?) 'variant_id': value,
      'quantity': instance.quantity,
      if (instance.salePrice case final value?) 'sale_price': value,
      'type': instance.type,
    };
