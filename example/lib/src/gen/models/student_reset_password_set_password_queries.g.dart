// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'student_reset_password_set_password_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentResetPasswordSetPasswordQueriesImpl
    _$$StudentResetPasswordSetPasswordQueriesImplFromJson(
            Map<String, dynamic> json) =>
        _$StudentResetPasswordSetPasswordQueriesImpl(
          password1: json['password1'] as String,
          method: json['method'] as String? ?? 'sms',
          input: json['input'] as String,
        );

Map<String, dynamic> _$$StudentResetPasswordSetPasswordQueriesImplToJson(
        _$StudentResetPasswordSetPasswordQueriesImpl instance) =>
    <String, dynamic>{
      'password1': instance.password1,
      'method': instance.method,
      'input': instance.input,
    };
