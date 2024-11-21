// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_student_attendance_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseStudentAttendancePublicImpl
    _$$BaseResponseStudentAttendancePublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseStudentAttendancePublicImpl(
          message: json['message'] as String?,
          data: StudentAttendancePublic.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseStudentAttendancePublicImplToJson(
        _$BaseResponseStudentAttendancePublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
