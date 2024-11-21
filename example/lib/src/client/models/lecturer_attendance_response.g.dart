// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lecturer_attendance_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LecturerAttendanceResponseImpl _$$LecturerAttendanceResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LecturerAttendanceResponseImpl(
      issuingDate: DateTime.parse(json['issuing_date'] as String),
      expirationDate: DateTime.parse(json['expiration_date'] as String),
    );

Map<String, dynamic> _$$LecturerAttendanceResponseImplToJson(
        _$LecturerAttendanceResponseImpl instance) =>
    <String, dynamic>{
      'issuing_date': instance.issuingDate.toIso8601String(),
      'expiration_date': instance.expirationDate.toIso8601String(),
    };
