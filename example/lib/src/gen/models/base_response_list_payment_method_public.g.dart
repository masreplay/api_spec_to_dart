// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_response_list_payment_method_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseResponseListPaymentMethodPublicImpl
    _$$BaseResponseListPaymentMethodPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$BaseResponseListPaymentMethodPublicImpl(
          message: json['message'] as String?,
          data: (json['data'] as List<dynamic>)
              .map((e) =>
                  PaymentMethodPublic.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BaseResponseListPaymentMethodPublicImplToJson(
        _$BaseResponseListPaymentMethodPublicImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };
