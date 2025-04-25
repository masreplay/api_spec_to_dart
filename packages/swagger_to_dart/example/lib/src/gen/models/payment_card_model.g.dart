// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_card_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentCardModel _$PaymentCardModelFromJson(Map<String, dynamic> json) =>
    _PaymentCardModel(
      cardNumber: json['cardNumber'] as String,
      cardBrand:
          $enumDecodeNullable(_$PaymentCardBrandEnumMap, json['cardBrand']),
    );

Map<String, dynamic> _$PaymentCardModelToJson(_PaymentCardModel instance) =>
    <String, dynamic>{
      'cardNumber': instance.cardNumber,
      'cardBrand': instance.cardBrand,
    };

const _$PaymentCardBrandEnumMap = {
  PaymentCardBrand.valueMastercard: 'Mastercard',
  PaymentCardBrand.valueVisa: 'Visa',
  PaymentCardBrand.valueMir: 'Mir',
  PaymentCardBrand.valueMaestro: 'Maestro',
  PaymentCardBrand.valueDiscover: 'Discover',
  PaymentCardBrand.valueVerve: 'Verve',
  PaymentCardBrand.valueDankort: 'Dankort',
  PaymentCardBrand.valueTroy: 'Troy',
  PaymentCardBrand.valueUnionPay: 'UnionPay',
  PaymentCardBrand.valueJCB: 'JCB',
  PaymentCardBrand.valueother: 'other',
};
