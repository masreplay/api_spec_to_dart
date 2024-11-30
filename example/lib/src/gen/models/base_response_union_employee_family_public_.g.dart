// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_employee_family_public_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionEmployeeFamilyPublicImpl
    _$$BaseResponseUnionEmployeeFamilyPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionEmployeeFamilyPublicImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : EmployeeFamilyPublic.fromJson(
                  json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseUnionEmployeeFamilyPublicImplToJson(
        _$BaseResponseUnionEmployeeFamilyPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
