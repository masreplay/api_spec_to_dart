// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_attendance_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentAttendancePublicImpl _$$StudentAttendancePublicImplFromJson(
        Map<String, dynamic> json) =>
    _$StudentAttendancePublicImpl(
      attendanceStatus: (json['attendance_status'] as num).toInt(),
      attendanceDate: DateTime.parse(json['attendance_date'] as String),
      id: (json['id'] as num).toInt(),
      weeklyScheduleId: (json['weekly_schedule_id'] as num).toInt(),
    );

Map<String, dynamic> _$$StudentAttendancePublicImplToJson(
        _$StudentAttendancePublicImpl instance) =>
    <String, dynamic>{
      'attendance_status': instance.attendanceStatus,
      'attendance_date': instance.attendanceDate.toIso8601String(),
      'id': instance.id,
      'weekly_schedule_id': instance.weeklyScheduleId,
    };
