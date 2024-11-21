// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_list_student_seamsters_summary_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl
    _$$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>?)
              ?.map((e) =>
                  StudentSeamstersSummary.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String,
    dynamic> _$$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImplToJson(
        _$BaseResponseUnionListStudentSeamstersSummaryNoneTypeImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
