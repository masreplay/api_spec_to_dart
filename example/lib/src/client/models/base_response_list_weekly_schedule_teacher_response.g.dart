// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_weekly_schedule_teacher_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListWeeklyScheduleTeacherResponseImpl
    _$$BaseResponseListWeeklyScheduleTeacherResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseListWeeklyScheduleTeacherResponseImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) => WeeklyScheduleTeacherResponse.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListWeeklyScheduleTeacherResponseImplToJson(
        _$BaseResponseListWeeklyScheduleTeacherResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
