// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentInfoResponseImpl _$$PaymentInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PaymentInfoResponseImpl(
      amount:
          PaymentInfoAmount.fromJson(json['amount'] as Map<String, dynamic>),
      paymentMethods: json['payment_methods'] as List<dynamic>,
    );

Map<String, dynamic> _$$PaymentInfoResponseImplToJson(
        _$PaymentInfoResponseImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'payment_methods': instance.paymentMethods,
    };
