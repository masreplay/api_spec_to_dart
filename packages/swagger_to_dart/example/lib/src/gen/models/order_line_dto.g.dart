// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_line_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderLineDto _$OrderLineDtoFromJson(Map<String, dynamic> json) =>
    _OrderLineDto(
      id: json['id'] as String,
      productId: json['product_id'] as String,
      productName: json['product_name'] as String,
      variantId: json['variant_id'] as String?,
      variantName: json['variant_name'] as String?,
      presentationId: json['presentation_id'] as String,
      presentationName: json['presentation_name'] as String,
      presentationQuantityMultiplier:
          (json['presentation_quantity_multiplier'] as num).toInt(),
      quantity: (json['quantity'] as num).toInt(),
      unitPriceExcludingTax:
          (json['unit_price_excluding_tax'] as num).toDouble(),
      discountPercentage: (json['discount_percentage'] as num?)?.toDouble(),
      discountAmount: (json['discount_amount'] as num?)?.toDouble(),
      netExcludingTax: (json['net_excluding_tax'] as num).toDouble(),
      totalTax: (json['total_tax'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$OrderLineDtoToJson(_OrderLineDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'product_id': instance.productId,
      'product_name': instance.productName,
      if (instance.variantId case final value?) 'variant_id': value,
      if (instance.variantName case final value?) 'variant_name': value,
      'presentation_id': instance.presentationId,
      'presentation_name': instance.presentationName,
      'presentation_quantity_multiplier':
          instance.presentationQuantityMultiplier,
      'quantity': instance.quantity,
      'unit_price_excluding_tax': instance.unitPriceExcludingTax,
      if (instance.discountPercentage case final value?)
        'discount_percentage': value,
      if (instance.discountAmount case final value?) 'discount_amount': value,
      'net_excluding_tax': instance.netExcludingTax,
      'total_tax': instance.totalTax,
      'total': instance.total,
    };
