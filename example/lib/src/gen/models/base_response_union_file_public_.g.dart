// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_union_file_public_.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseUnionFilePublicImpl _$$BaseResponseUnionFilePublicImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseUnionFilePublicImpl(
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : FilePublic.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BaseResponseUnionFilePublicImplToJson(
        _$BaseResponseUnionFilePublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
