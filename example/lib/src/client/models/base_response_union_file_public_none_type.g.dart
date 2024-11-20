// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_file_public_none_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionFilePublicNoneTypeImpl
    _$$BaseResponseUnionFilePublicNoneTypeImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseUnionFilePublicNoneTypeImpl(
          message: json['message'] as String?,
          data: json['data'] == null
              ? null
              : FilePublic.fromJson(json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseUnionFilePublicNoneTypeImplToJson(
        _$BaseResponseUnionFilePublicNoneTypeImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
