// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_list_student_seamsters_summary_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionListStudentSeamstersSummaryImpl
    _$$BaseResponseUnionListStudentSeamstersSummaryImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionListStudentSeamstersSummaryImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  StudentSeamstersSummary.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseUnionListStudentSeamstersSummaryImplToJson(
        _$BaseResponseUnionListStudentSeamstersSummaryImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
