// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_create_datetime_datetime_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BasicCreateDatetimeDatetimeQueryParameters
    _$BasicCreateDatetimeDatetimeQueryParametersFromJson(
            Map<String, dynamic> json) =>
        _BasicCreateDatetimeDatetimeQueryParameters(
          dt: DateTime.parse(json['dt'] as String),
        );

Map<String, dynamic> _$BasicCreateDatetimeDatetimeQueryParametersToJson(
        _BasicCreateDatetimeDatetimeQueryParameters instance) =>
    <String, dynamic>{
      'dt': instance.dt.toIso8601String(),
    };
