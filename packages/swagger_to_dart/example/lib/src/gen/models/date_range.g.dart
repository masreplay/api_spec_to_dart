// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'date_range.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DateRange _$DateRangeFromJson(Map<String, dynamic> json) => _DateRange(
      start: DateTime.parse(json['start'] as String),
      end: DateTime.parse(json['end'] as String),
    );

Map<String, dynamic> _$DateRangeToJson(_DateRange instance) =>
    <String, dynamic>{
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
    };
