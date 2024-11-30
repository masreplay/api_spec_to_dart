// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_reset_password_verify_phone_otp_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentResetPasswordVerifyPhoneOtpQueriesImpl
    _$$StudentResetPasswordVerifyPhoneOtpQueriesImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentResetPasswordVerifyPhoneOtpQueriesImpl(
          phone: json['phone'] as String,
          method: json['method'] as String? ?? 'sms',
          otp: json['otp'] as String,
        );

Map<String, dynamic> _$$StudentResetPasswordVerifyPhoneOtpQueriesImplToJson(
        _$StudentResetPasswordVerifyPhoneOtpQueriesImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'method': instance.method,
      'otp': instance.otp,
    };
