// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_otp_by_phone_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendOtpByPhoneQueriesImpl _$$SendOtpByPhoneQueriesImplFromJson(
        Map<String, dynamic> json) =>
    _$SendOtpByPhoneQueriesImpl(
      phoneNumber: json['phoneNumber'] as String,
      method: json['method'] as String? ?? 'sms',
    );

Map<String, dynamic> _$$SendOtpByPhoneQueriesImplToJson(
        _$SendOtpByPhoneQueriesImpl instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'method': instance.method,
    };
