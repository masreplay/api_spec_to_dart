// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_lecturer_attendance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseLecturerAttendanceResponseImpl
    _$$BaseResponseLecturerAttendanceResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseLecturerAttendanceResponseImpl(
          message: json['message'] as String?,
          data: LecturerAttendanceResponse.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseLecturerAttendanceResponseImplToJson(
        _$BaseResponseLecturerAttendanceResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
