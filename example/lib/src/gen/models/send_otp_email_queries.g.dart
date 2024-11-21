// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_email_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendOtpEmailQueriesImpl _$$SendOtpEmailQueriesImplFromJson(
        Map<String, dynamic> json) =>
    _$SendOtpEmailQueriesImpl(
      email: json['email'] as String,
      method: json['method'] as String? ?? 'email',
    );

Map<String, dynamic> _$$SendOtpEmailQueriesImplToJson(
        _$SendOtpEmailQueriesImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'method': instance.method,
    };
