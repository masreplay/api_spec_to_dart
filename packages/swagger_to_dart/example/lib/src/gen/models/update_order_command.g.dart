// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_order_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UpdateOrderCommand _$UpdateOrderCommandFromJson(Map<String, dynamic> json) =>
    _UpdateOrderCommand(
      customerId: json['customer_id'] as String?,
      lines: (json['lines'] as List<dynamic>?)
          ?.map((e) => const OrderLineChangeMapJsonConverter()
              .fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpdateOrderCommandToJson(_UpdateOrderCommand instance) =>
    <String, dynamic>{
      if (instance.customerId case final value?) 'customer_id': value,
      if (instance.lines
              ?.map(const OrderLineChangeMapJsonConverter().toJson)
              .toList()
          case final value?)
        'lines': value,
    };
