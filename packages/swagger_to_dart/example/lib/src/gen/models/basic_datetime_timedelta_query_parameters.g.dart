// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_datetime_timedelta_query_parameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BasicDatetimeTimedeltaQueryParameters
_$BasicDatetimeTimedeltaQueryParametersFromJson(Map<String, dynamic> json) =>
    _BasicDatetimeTimedeltaQueryParameters(
      td: const TimeOfDayStringJsonConverter().fromJson(json['td'] as String),
    );

Map<String, dynamic> _$BasicDatetimeTimedeltaQueryParametersToJson(
  _BasicDatetimeTimedeltaQueryParameters instance,
) => <String, dynamic>{
  'td': const TimeOfDayStringJsonConverter().toJson(instance.td),
};
