// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_employee_identification_cards_public_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionEmployeeIdentificationCardsPublicImpl
    _$$BaseResponseUnionEmployeeIdentificationCardsPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : EmployeeIdentificationCardsPublic.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String,
    dynamic> _$$BaseResponseUnionEmployeeIdentificationCardsPublicImplToJson(
        _$BaseResponseUnionEmployeeIdentificationCardsPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
