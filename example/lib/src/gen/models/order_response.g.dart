// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderResponseImpl _$$OrderResponseImplFromJson(Map<String, dynamic> json) =>
    _$OrderResponseImpl(
      price: json['price'] as num?,
      currency: json['currency'] as String?,
      product: json['product'],
      orderType: json['order_type'] == null
          ? null
          : OrderTypeEnum.fromJson(json['order_type'] as String),
      orderStatus: json['order_status'] == null
          ? null
          : OrderStatusEnum.fromJson(json['order_status'] as String),
      orderStatusHistory: json['order_status_history'] as Map<String, dynamic>?,
      quantity: (json['quantity'] as num?)?.toInt(),
      paymentMethod: json['payment_method'] as String?,
      paymentStatus: json['payment_status'] as String?,
      shippingAddress: json['shipping_address'] as String?,
      shippingStatus: json['shipping_status'] == null
          ? null
          : ShippingStatusEnum.fromJson(json['shipping_status'] as String),
      discount: json['discount'] as num?,
      discountType: json['discount_type'] == null
          ? null
          : DiscountTypeEnum.fromJson(json['discount_type'] as String),
      paymentProcessingId: json['payment_processing_id'] as String?,
      finalPrice: json['final_price'] as num?,
      id: (json['id'] as num).toInt(),
      student: json['student'] == null
          ? null
          : StudentTable.fromJson(json['student'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OrderResponseImplToJson(_$OrderResponseImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'currency': instance.currency,
      'product': instance.product,
      'order_type': instance.orderType,
      'order_status': instance.orderStatus,
      'order_status_history': instance.orderStatusHistory,
      'quantity': instance.quantity,
      'payment_method': instance.paymentMethod,
      'payment_status': instance.paymentStatus,
      'shipping_address': instance.shippingAddress,
      'shipping_status': instance.shippingStatus,
      'discount': instance.discount,
      'discount_type': instance.discountType,
      'payment_processing_id': instance.paymentProcessingId,
      'final_price': instance.finalPrice,
      'id': instance.id,
      'student': instance.student,
    };
