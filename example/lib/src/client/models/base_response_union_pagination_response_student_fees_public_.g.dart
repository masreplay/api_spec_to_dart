// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_pagination_response_student_fees_public_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionPaginationResponseStudentFeesPublicImpl
    _$$BaseResponseUnionPaginationResponseStudentFeesPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : PaginationResponseStudentFeesPublic.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$$BaseResponseUnionPaginationResponseStudentFeesPublicImplToJson(
        _$BaseResponseUnionPaginationResponseStudentFeesPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
