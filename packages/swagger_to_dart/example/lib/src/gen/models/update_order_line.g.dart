// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateOrderLine _$UpdateOrderLineFromJson(Map<String, dynamic> json) =>
    _UpdateOrderLine(
      id: json['id'] as String,
      quantity: (json['quantity'] as num?)?.toInt(),
      salePrice: (json['sale_price'] as num?)?.toDouble(),
      type: json['type'] as String? ?? 'update',
    );

Map<String, dynamic> _$UpdateOrderLineToJson(_UpdateOrderLine instance) =>
    <String, dynamic>{
      'id': instance.id,
      if (instance.quantity case final value?) 'quantity': value,
      if (instance.salePrice case final value?) 'sale_price': value,
      'type': instance.type,
    };
