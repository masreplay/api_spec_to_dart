// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_api_routes_v1_lecturer_weekly_schedule_route_lecture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppApiRoutesV1LecturerWeeklyScheduleRouteLectureImpl
    _$$AppApiRoutesV1LecturerWeeklyScheduleRouteLectureImplFromJson(
            Map<String, dynamic> json) =>
        _$AppApiRoutesV1LecturerWeeklyScheduleRouteLectureImpl(
          id: (json['id'] as num?)?.toInt(),
          subjectTitle: json['subject_title'] as String?,
          startTime: json['start_time'] == null
              ? null
              : DateTime.parse(json['start_time'] as String),
          endTime: json['end_time'] == null
              ? null
              : DateTime.parse(json['end_time'] as String),
          groupCode: json['group_code'] as String?,
          roomCode: json['room_code'] as String?,
          duration: json['duration'] as num?,
          grade: (json['grade'] as num?)?.toInt(),
          collage: json['collage'] as String?,
          division: json['division'] as String?,
          members: (json['members'] as List<dynamic>)
              .map((e) => e == null
                  ? null
                  : StudentSummery.fromJson(e as Map<String, dynamic>))
              .toList(),
          hasCode: json['has_code'] as bool?,
          numberOfStudents: (json['number_of_students'] as num?)?.toInt(),
        );

Map<String, dynamic>
    _$$AppApiRoutesV1LecturerWeeklyScheduleRouteLectureImplToJson(
            _$AppApiRoutesV1LecturerWeeklyScheduleRouteLectureImpl instance) =>
        <String, dynamic>{
          'id': instance.id,
          'subject_title': instance.subjectTitle,
          'start_time': instance.startTime?.toIso8601String(),
          'end_time': instance.endTime?.toIso8601String(),
          'group_code': instance.groupCode,
          'room_code': instance.roomCode,
          'duration': instance.duration,
          'grade': instance.grade,
          'collage': instance.collage,
          'division': instance.division,
          'members': instance.members,
          'has_code': instance.hasCode,
          'number_of_students': instance.numberOfStudents,
        };
