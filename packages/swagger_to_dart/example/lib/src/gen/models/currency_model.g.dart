// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrencyModel _$CurrencyModelFromJson(Map<String, dynamic> json) =>
    _CurrencyModel(
      currency: $enumDecodeNullable(_$CurrencyEnumEnumMap, json['currency']),
      iso4217: $enumDecodeNullable(_$Iso4217EnumEnumMap, json['iso4217']),
    );

Map<String, dynamic> _$CurrencyModelToJson(_CurrencyModel instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'iso4217': instance.iso4217,
    };

const _$CurrencyEnumEnumMap = {CurrencyEnum.hi: 'HI'};

const _$Iso4217EnumEnumMap = {Iso4217Enum.hi: 'HI'};
