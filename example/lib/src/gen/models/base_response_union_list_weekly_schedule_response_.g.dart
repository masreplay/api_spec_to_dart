// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_list_weekly_schedule_response_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionListWeeklyScheduleResponseImpl
    _$$BaseResponseUnionListWeeklyScheduleResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionListWeeklyScheduleResponseImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  WeeklyScheduleResponse.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseUnionListWeeklyScheduleResponseImplToJson(
        _$BaseResponseUnionListWeeklyScheduleResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
