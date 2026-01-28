// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_order_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateOrderCommand _$CreateOrderCommandFromJson(Map<String, dynamic> json) =>
    _CreateOrderCommand(
      salePointId: json['sale_point_id'] as String,
      customerId: json['customer_id'] as String,
      userId: json['user_id'] as String,
      lines: (json['lines'] as List<dynamic>)
          .map((e) => CreateOrderLine.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPaid: json['is_paid'] as bool,
    );

Map<String, dynamic> _$CreateOrderCommandToJson(_CreateOrderCommand instance) =>
    <String, dynamic>{
      'sale_point_id': instance.salePointId,
      'customer_id': instance.customerId,
      'user_id': instance.userId,
      'lines': instance.lines.map((e) => e.toJson()).toList(),
      'is_paid': instance.isPaid,
    };
