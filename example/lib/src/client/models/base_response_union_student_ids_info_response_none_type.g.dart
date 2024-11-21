// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_student_ids_info_response_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl
    _$$BaseResponseUnionStudentIdsInfoResponseNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : StudentIdsInfoResponse.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$BaseResponseUnionStudentIdsInfoResponseNoneTypeImplToJson(
            _$BaseResponseUnionStudentIdsInfoResponseNoneTypeImpl instance) =>
        <String, dynamic>{
          'message': instance.message,
          'data': instance.data,
        };
