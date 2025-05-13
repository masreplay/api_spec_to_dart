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
      shortName: json['shortName'] as String?,
    );

Map<String, dynamic> _$CountryModelToJson(_CountryModel instance) =>
    <String, dynamic>{
      'alpha2': instance.alpha2,
      'alpha3': instance.alpha3,
      'numeric': instance.numeric,
      'shortName': instance.shortName,
    };
