// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_init_ekyc_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseInitEkycResponseImpl _$$BaseResponseInitEkycResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseInitEkycResponseImpl(
      message: json['message'] as String?,
      data: InitEkycResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BaseResponseInitEkycResponseImplToJson(
        _$BaseResponseInitEkycResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
