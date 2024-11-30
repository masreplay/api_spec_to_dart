// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_reset_password_verify_email_otp_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentResetPasswordVerifyEmailOtpQueriesImpl
    _$$StudentResetPasswordVerifyEmailOtpQueriesImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentResetPasswordVerifyEmailOtpQueriesImpl(
          email: json['email'] as String,
          method: json['method'] as String? ?? 'email',
          otp: json['otp'] as String,
        );

Map<String, dynamic> _$$StudentResetPasswordVerifyEmailOtpQueriesImplToJson(
        _$StudentResetPasswordVerifyEmailOtpQueriesImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'method': instance.method,
      'otp': instance.otp,
    };
