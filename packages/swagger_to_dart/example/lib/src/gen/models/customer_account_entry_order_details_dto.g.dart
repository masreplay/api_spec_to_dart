// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_account_entry_order_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomerAccountEntryOrderDetailsDto
    _$CustomerAccountEntryOrderDetailsDtoFromJson(Map<String, dynamic> json) =>
        _CustomerAccountEntryOrderDetailsDto(
          orderId: json['order_id'] as String,
          orderNumber: (json['order_number'] as num).toInt(),
          amount: (json['amount'] as num).toDouble(),
          date: DateTime.parse(json['date'] as String),
        );

Map<String, dynamic> _$CustomerAccountEntryOrderDetailsDtoToJson(
        _CustomerAccountEntryOrderDetailsDto instance) =>
    <String, dynamic>{
      'order_id': instance.orderId,
      'order_number': instance.orderNumber,
      'amount': instance.amount,
      'date': instance.date.toIso8601String(),
    };
