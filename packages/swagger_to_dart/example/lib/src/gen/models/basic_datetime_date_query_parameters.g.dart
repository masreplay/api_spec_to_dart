// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_datetime_date_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BasicDatetimeDateQueryParameters _$BasicDatetimeDateQueryParametersFromJson(
        Map<String, dynamic> json) =>
    _BasicDatetimeDateQueryParameters(
      d: DateTime.parse(json['d'] as String),
    );

Map<String, dynamic> _$BasicDatetimeDateQueryParametersToJson(
        _BasicDatetimeDateQueryParameters instance) =>
    <String, dynamic>{
      'd': instance.d.toIso8601String(),
    };
