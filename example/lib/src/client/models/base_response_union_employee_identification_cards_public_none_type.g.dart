// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_employee_identification_cards_public_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionEmployeeIdentificationCardsPublicNoneTypeImpl
    _$$BaseResponseUnionEmployeeIdentificationCardsPublicNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionEmployeeIdentificationCardsPublicNoneTypeImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : EmployeeIdentificationCardsPublic.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$$BaseResponseUnionEmployeeIdentificationCardsPublicNoneTypeImplToJson(
            _$BaseResponseUnionEmployeeIdentificationCardsPublicNoneTypeImpl
                instance) =>
        <String, dynamic>{
          'message': instance.message,
          'data': instance.data,
        };
