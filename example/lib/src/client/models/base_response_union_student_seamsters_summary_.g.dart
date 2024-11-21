// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_student_seamsters_summary_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionStudentSeamstersSummaryImpl
    _$$BaseResponseUnionStudentSeamstersSummaryImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionStudentSeamstersSummaryImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : StudentSeamstersSummary.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseUnionStudentSeamstersSummaryImplToJson(
        _$BaseResponseUnionStudentSeamstersSummaryImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
