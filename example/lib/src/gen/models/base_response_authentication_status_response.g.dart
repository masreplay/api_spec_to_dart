// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_authentication_status_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseAuthenticationStatusResponseImpl
    _$$BaseResponseAuthenticationStatusResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseAuthenticationStatusResponseImpl(
          message: json['message'] as String?,
          data: AuthenticationStatusResponse.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponseAuthenticationStatusResponseImplToJson(
        _$BaseResponseAuthenticationStatusResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
