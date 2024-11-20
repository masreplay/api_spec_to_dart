// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_pagination_response_student_fees_public_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionPaginationResponseStudentFeesPublicNoneTypeImpl
    _$$BaseResponseUnionPaginationResponseStudentFeesPublicNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionPaginationResponseStudentFeesPublicNoneTypeImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : PaginationResponseStudentFeesPublic.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$BaseResponseUnionPaginationResponseStudentFeesPublicNoneTypeImplToJson(
            _$BaseResponseUnionPaginationResponseStudentFeesPublicNoneTypeImpl
                instance) =>
        <String, dynamic>{
          'message': instance.message,
          'data': instance.data,
        };
