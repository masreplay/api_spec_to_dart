// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_api_routes_v1_student_attendance_route_lecture.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppApiRoutesV1StudentAttendanceRouteLectureImpl
    _$$AppApiRoutesV1StudentAttendanceRouteLectureImplFromJson(
            Map<String, dynamic> json) =>
        _$AppApiRoutesV1StudentAttendanceRouteLectureImpl(
          id: (json['id'] as num).toInt(),
          subjectTitle: json['subject_title'] as String,
          startTime: DateTime.parse(json['start_time'] as String),
          endTime: DateTime.parse(json['end_time'] as String),
          groupCode: json['group_code'] as String,
          semesterName: json['semester_name'] as String,
          roomCode: json['room_code'] as String,
          duration: (json['duration'] as num).toInt(),
        );

Map<String, dynamic> _$$AppApiRoutesV1StudentAttendanceRouteLectureImplToJson(
        _$AppApiRoutesV1StudentAttendanceRouteLectureImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subject_title': instance.subjectTitle,
      'start_time': instance.startTime.toIso8601String(),
      'end_time': instance.endTime.toIso8601String(),
      'group_code': instance.groupCode,
      'semester_name': instance.semesterName,
      'room_code': instance.roomCode,
      'duration': instance.duration,
    };
