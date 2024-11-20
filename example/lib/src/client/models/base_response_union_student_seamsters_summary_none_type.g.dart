// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_student_seamsters_summary_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionStudentSeamstersSummaryNoneTypeImpl
    _$$BaseResponseUnionStudentSeamstersSummaryNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionStudentSeamstersSummaryNoneTypeImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : StudentSeamstersSummary.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$BaseResponseUnionStudentSeamstersSummaryNoneTypeImplToJson(
            _$BaseResponseUnionStudentSeamstersSummaryNoneTypeImpl instance) =>
        <String, dynamic>{
          'message': instance.message,
          'data': instance.data,
        };
