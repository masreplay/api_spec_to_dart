// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentCardModel _$PaymentCardModelFromJson(Map<String, dynamic> json) =>
    _PaymentCardModel(
      cardNumber: json['card_number'] as String,
      cardBrand: json['card_brand'] == null
          ? null
          : PaymentCardBrand.fromJson(json['card_brand'] as String),
    );

Map<String, dynamic> _$PaymentCardModelToJson(_PaymentCardModel instance) =>
    <String, dynamic>{
      'card_number': instance.cardNumber,
      'card_brand': instance.cardBrand,
    };
