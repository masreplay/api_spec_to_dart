// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer_calender_get_lecturer_read_homework_calender_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerCalenderGetLecturerReadHomeworkCalenderQueriesImpl
    _$$LecturerCalenderGetLecturerReadHomeworkCalenderQueriesImplFromJson(
            Map<String, dynamic> json) =>
        _$LecturerCalenderGetLecturerReadHomeworkCalenderQueriesImpl(
          courseId: (json['courseId'] as num?)?.toInt(),
          startDate: json['startDate'] == null
              ? null
              : DateTime.parse(json['startDate'] as String),
          endDate: json['endDate'] == null
              ? null
              : DateTime.parse(json['endDate'] as String),
        );

Map<String, dynamic>
    _$$LecturerCalenderGetLecturerReadHomeworkCalenderQueriesImplToJson(
            _$LecturerCalenderGetLecturerReadHomeworkCalenderQueriesImpl
                instance) =>
        <String, dynamic>{
          'courseId': instance.courseId,
          'startDate': instance.startDate?.toIso8601String(),
          'endDate': instance.endDate?.toIso8601String(),
        };
