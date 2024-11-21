// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_schedule_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyScheduleResponseImpl _$$WeeklyScheduleResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WeeklyScheduleResponseImpl(
      weekday: (json['weekday'] as num).toInt(),
      lectures: json['lectures'] as List<dynamic>,
    );

Map<String, dynamic> _$$WeeklyScheduleResponseImplToJson(
        _$WeeklyScheduleResponseImpl instance) =>
    <String, dynamic>{
      'weekday': instance.weekday,
      'lectures': instance.lectures,
    };
