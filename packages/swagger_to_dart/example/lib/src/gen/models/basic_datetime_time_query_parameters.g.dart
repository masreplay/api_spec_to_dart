// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_datetime_time_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BasicDatetimeTimeQueryParameters _$BasicDatetimeTimeQueryParametersFromJson(
  Map<String, dynamic> json,
) => _BasicDatetimeTimeQueryParameters(
  t: const TimeOfDayStringJsonConverter().fromJson(json['t'] as String),
);

Map<String, dynamic> _$BasicDatetimeTimeQueryParametersToJson(
  _BasicDatetimeTimeQueryParameters instance,
) => <String, dynamic>{
  't': const TimeOfDayStringJsonConverter().toJson(instance.t),
};
