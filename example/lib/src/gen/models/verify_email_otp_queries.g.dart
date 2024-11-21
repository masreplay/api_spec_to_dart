// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_email_otp_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VerifyEmailOtpQueriesImpl _$$VerifyEmailOtpQueriesImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifyEmailOtpQueriesImpl(
      email: json['email'] as String,
      method: json['method'] as String? ?? 'email',
      otp: json['otp'] as String,
    );

Map<String, dynamic> _$$VerifyEmailOtpQueriesImplToJson(
        _$VerifyEmailOtpQueriesImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'method': instance.method,
      'otp': instance.otp,
    };
