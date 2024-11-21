// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_summary_response_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionSummaryResponseImpl
    _$$BaseResponseUnionSummaryResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionSummaryResponseImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : SummaryResponse.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseUnionSummaryResponseImplToJson(
        _$BaseResponseUnionSummaryResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
