// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_employee_family_public_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl
    _$$BaseResponseUnionEmployeeFamilyPublicNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : EmployeeFamilyPublic.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseUnionEmployeeFamilyPublicNoneTypeImplToJson(
        _$BaseResponseUnionEmployeeFamilyPublicNoneTypeImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
