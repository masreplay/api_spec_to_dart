// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_student_school_info_response_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl
    _$$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : StudentSchoolInfoResponse.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImplToJson(
        _$BaseResponseUnionStudentSchoolInfoResponseNoneTypeImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
