// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_payment_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponsePaymentInfoResponseImpl
    _$$BaseResponsePaymentInfoResponseImplFromJson(Map<String, dynamic> json) =>
        _$BaseResponsePaymentInfoResponseImpl(
          message: json['message'] as String?,
          data: PaymentInfoResponse.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$BaseResponsePaymentInfoResponseImplToJson(
        _$BaseResponsePaymentInfoResponseImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
