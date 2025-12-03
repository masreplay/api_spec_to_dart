// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'country_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountryModel _$CountryModelFromJson(Map<String, dynamic> json) =>
    _CountryModel(
      alpha2: json['alpha2'] as String?,
      alpha3: json['alpha3'] as String?,
      numeric: json['numeric'] as String?,
      shortName: json['short_name'] as String?,
    );

Map<String, dynamic> _$CountryModelToJson(_CountryModel instance) =>
    <String, dynamic>{
      if (instance.alpha2 case final value?) 'alpha2': value,
      if (instance.alpha3 case final value?) 'alpha3': value,
      if (instance.numeric case final value?) 'numeric': value,
      if (instance.shortName case final value?) 'short_name': value,
    };
