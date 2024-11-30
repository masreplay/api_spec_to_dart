// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_student_profile_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseStudentProfileInfoResponseImpl
    _$$BaseResponseStudentProfileInfoResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseStudentProfileInfoResponseImpl(
          message: json['message'] as String?,
          data: StudentProfileInfoResponse.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseStudentProfileInfoResponseImplToJson(
        _$BaseResponseStudentProfileInfoResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
