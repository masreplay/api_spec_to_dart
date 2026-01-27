// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_line_change.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OrderLineChangeCreate _$OrderLineChangeCreateFromJson(
        Map<String, dynamic> json) =>
    OrderLineChangeCreate(
      productId: json['product_id'] as String,
      presentationId: json['presentation_id'] as String,
      variantId: json['variant_id'] as String?,
      quantity: (json['quantity'] as num).toInt(),
      salePrice: (json['sale_price'] as num?)?.toDouble(),
      type: json['type'] as String? ?? 'create',
    );

Map<String, dynamic> _$OrderLineChangeCreateToJson(
        OrderLineChangeCreate instance) =>
    <String, dynamic>{
      'product_id': instance.productId,
      'presentation_id': instance.presentationId,
      if (instance.variantId case final value?) 'variant_id': value,
      'quantity': instance.quantity,
      if (instance.salePrice case final value?) 'sale_price': value,
      'type': instance.type,
    };

OrderLineChangeUpdate _$OrderLineChangeUpdateFromJson(
        Map<String, dynamic> json) =>
    OrderLineChangeUpdate(
      id: json['id'] as String,
      quantity: (json['quantity'] as num?)?.toInt(),
      salePrice: (json['sale_price'] as num?)?.toDouble(),
      type: json['type'] as String? ?? 'update',
    );

Map<String, dynamic> _$OrderLineChangeUpdateToJson(
        OrderLineChangeUpdate instance) =>
    <String, dynamic>{
      'id': instance.id,
      if (instance.quantity case final value?) 'quantity': value,
      if (instance.salePrice case final value?) 'sale_price': value,
      'type': instance.type,
    };

OrderLineChangeDelete _$OrderLineChangeDeleteFromJson(
        Map<String, dynamic> json) =>
    OrderLineChangeDelete(
      id: json['id'] as String,
      type: json['type'] as String? ?? 'delete',
    );

Map<String, dynamic> _$OrderLineChangeDeleteToJson(
        OrderLineChangeDelete instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
    };

OrderLineChangeFallback _$OrderLineChangeFallbackFromJson(
        Map<String, dynamic> json) =>
    OrderLineChangeFallback(
      json: json['json'] as Map<String, dynamic>?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$OrderLineChangeFallbackToJson(
        OrderLineChangeFallback instance) =>
    <String, dynamic>{
      if (instance.json case final value?) 'json': value,
      'type': instance.$type,
    };
