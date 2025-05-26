// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentCardModel _$PaymentCardModelFromJson(Map<String, dynamic> json) =>
    _PaymentCardModel(
      cardNumber: json['card_number'] as String,
      cardBrand: $enumDecodeNullable(
        _$PaymentCardBrandEnumMap,
        json['card_brand'],
      ),
    );

Map<String, dynamic> _$PaymentCardModelToJson(_PaymentCardModel instance) =>
    <String, dynamic>{
      'card_number': instance.cardNumber,
      if (instance.cardBrand?.toJson() case final value?) 'card_brand': value,
    };

const _$PaymentCardBrandEnumMap = {
  PaymentCardBrand.americanExpress: 'American Express',
  PaymentCardBrand.mastercard: 'Mastercard',
  PaymentCardBrand.visa: 'Visa',
  PaymentCardBrand.mir: 'Mir',
  PaymentCardBrand.maestro: 'Maestro',
  PaymentCardBrand.discover: 'Discover',
  PaymentCardBrand.verve: 'Verve',
  PaymentCardBrand.dankort: 'Dankort',
  PaymentCardBrand.troy: 'Troy',
  PaymentCardBrand.unionPay: 'UnionPay',
  PaymentCardBrand.jcb: 'JCB',
  PaymentCardBrand.other: 'other',
};
