// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_schedule_teacher_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeeklyScheduleTeacherResponseImpl
    _$$WeeklyScheduleTeacherResponseImplFromJson(Map<String, dynamic> json) =>
        _$WeeklyScheduleTeacherResponseImpl(
          weekday: (json['weekday'] as num).toInt(),
          lectures: (json['lectures'] as List<dynamic>)
              .map((e) => e == null
                  ? null
                  : AppApiRoutesV1LecturerWeeklyScheduleRouteLecture.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$WeeklyScheduleTeacherResponseImplToJson(
        _$WeeklyScheduleTeacherResponseImpl instance) =>
    <String, dynamic>{
      'weekday': instance.weekday,
      'lectures': instance.lectures,
    };
