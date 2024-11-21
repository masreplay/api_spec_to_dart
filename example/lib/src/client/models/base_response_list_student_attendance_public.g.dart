// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_student_attendance_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListStudentAttendancePublicImpl
    _$$BaseResponseListStudentAttendancePublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseListStudentAttendancePublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) =>
                  StudentAttendancePublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListStudentAttendancePublicImplToJson(
        _$BaseResponseListStudentAttendancePublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
