// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_phone_otp_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyPhoneOtpQueriesImpl _$$VerifyPhoneOtpQueriesImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyPhoneOtpQueriesImpl(
      phone: json['phone'] as String,
      method: json['method'] as String? ?? 'sms',
      otp: json['otp'] as String,
    );

Map<String, dynamic> _$$VerifyPhoneOtpQueriesImplToJson(
        _$VerifyPhoneOtpQueriesImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'method': instance.method,
      'otp': instance.otp,
    };
