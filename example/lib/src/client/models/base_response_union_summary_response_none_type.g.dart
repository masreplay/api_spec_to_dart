// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_summary_response_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionSummaryResponseNoneTypeImpl
    _$$BaseResponseUnionSummaryResponseNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionSummaryResponseNoneTypeImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : SummaryResponse.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseUnionSummaryResponseNoneTypeImplToJson(
        _$BaseResponseUnionSummaryResponseNoneTypeImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
