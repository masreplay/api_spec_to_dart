// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) =>
    _CurrencyModel(
      currency: json['currency'] as String?,
      iso4217: json['iso4217'] as String?,
    );

Map<String, dynamic> _$CurrencyModelToJson(_CurrencyModel instance) =>
    <String, dynamic>{
      if (instance.currency case final value?) 'currency': value,
      if (instance.iso4217 case final value?) 'iso4217': value,
    };
