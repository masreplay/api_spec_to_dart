// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_student_school_info_response_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionStudentSchoolInfoResponseImpl
    _$$BaseResponseUnionStudentSchoolInfoResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionStudentSchoolInfoResponseImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : StudentSchoolInfoResponse.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseUnionStudentSchoolInfoResponseImplToJson(
        _$BaseResponseUnionStudentSchoolInfoResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
