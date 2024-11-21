// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_student_personal_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseStudentPersonalInfoResponseImpl
    _$$BaseResponseStudentPersonalInfoResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseStudentPersonalInfoResponseImpl(
          message: json['message'] as String?,
          data: StudentPersonalInfoResponse.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseStudentPersonalInfoResponseImplToJson(
        _$BaseResponseStudentPersonalInfoResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
