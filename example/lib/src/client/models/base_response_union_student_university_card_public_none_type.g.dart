// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_student_university_card_public_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionStudentUniversityCardPublicNoneTypeImpl
    _$$BaseResponseUnionStudentUniversityCardPublicNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionStudentUniversityCardPublicNoneTypeImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : StudentUniversityCardPublic.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$$BaseResponseUnionStudentUniversityCardPublicNoneTypeImplToJson(
        _$BaseResponseUnionStudentUniversityCardPublicNoneTypeImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
