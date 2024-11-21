// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_majors_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListMajorsPublicImpl _$$BaseResponseListMajorsPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseListMajorsPublicImpl(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>)
          .map((e) => MajorsPublic.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BaseResponseListMajorsPublicImplToJson(
        _$BaseResponseListMajorsPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
