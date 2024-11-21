// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_info_amount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentInfoAmountImpl _$$PaymentInfoAmountImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentInfoAmountImpl(
      total: (json['total'] as num).toInt(),
      tax: (json['tax'] as num).toInt(),
      cost: (json['cost'] as num).toInt(),
    );

Map<String, dynamic> _$$PaymentInfoAmountImplToJson(
        _$PaymentInfoAmountImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'tax': instance.tax,
      'cost': instance.cost,
    };
