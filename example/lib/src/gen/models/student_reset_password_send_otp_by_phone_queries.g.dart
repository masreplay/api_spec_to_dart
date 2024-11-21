// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_reset_password_send_otp_by_phone_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentResetPasswordSendOtpByPhoneQueriesImpl
    _$$StudentResetPasswordSendOtpByPhoneQueriesImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentResetPasswordSendOtpByPhoneQueriesImpl(
          phoneNumber: json['phoneNumber'] as String,
          method: json['method'] as String? ?? 'sms',
        );

Map<String, dynamic> _$$StudentResetPasswordSendOtpByPhoneQueriesImplToJson(
        _$StudentResetPasswordSendOtpByPhoneQueriesImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'method': instance.method,
    };
