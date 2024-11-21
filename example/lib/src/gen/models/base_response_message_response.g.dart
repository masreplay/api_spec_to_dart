// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_message_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseMessageResponseImpl _$$BaseResponseMessageResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseResponseMessageResponseImpl(
      message: json['message'] as String?,
      data: MessageResponse.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BaseResponseMessageResponseImplToJson(
        _$BaseResponseMessageResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
