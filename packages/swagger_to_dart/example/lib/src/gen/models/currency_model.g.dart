// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) =>
    _CurrencyModel(
      currency: json['currency'] == null
          ? null
          : Currency.fromJson(json['currency'] as Object),
      iso4217: json['iso4217'] == null
          ? null
          : Iso4217.fromJson(json['iso4217'] as Object),
    );

Map<String, dynamic> _$CurrencyModelToJson(_CurrencyModel instance) =>
    <String, dynamic>{
      if (instance.currency?.toJson() case final value?) 'currency': value,
      if (instance.iso4217?.toJson() case final value?) 'iso4217': value,
    };
