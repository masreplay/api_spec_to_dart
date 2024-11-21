// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_password_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetPasswordQueriesImpl _$$SetPasswordQueriesImplFromJson(
        Map<String, dynamic> json) =>
    _$SetPasswordQueriesImpl(
      password1: json['password1'] as String,
      method: json['method'] as String? ?? 'sms',
      input: json['input'] as String,
    );

Map<String, dynamic> _$$SetPasswordQueriesImplToJson(
        _$SetPasswordQueriesImpl instance) =>
    <String, dynamic>{
      'password1': instance.password1,
      'method': instance.method,
      'input': instance.input,
    };
