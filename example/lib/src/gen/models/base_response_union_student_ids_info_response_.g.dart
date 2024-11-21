// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_student_ids_info_response_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionStudentIdsInfoResponseImpl
    _$$BaseResponseUnionStudentIdsInfoResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionStudentIdsInfoResponseImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : StudentIdsInfoResponse.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseUnionStudentIdsInfoResponseImplToJson(
        _$BaseResponseUnionStudentIdsInfoResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
