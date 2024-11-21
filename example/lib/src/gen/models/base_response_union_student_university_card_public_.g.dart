// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_student_university_card_public_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionStudentUniversityCardPublicImpl
    _$$BaseResponseUnionStudentUniversityCardPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionStudentUniversityCardPublicImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : StudentUniversityCardPublic.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseUnionStudentUniversityCardPublicImplToJson(
        _$BaseResponseUnionStudentUniversityCardPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
