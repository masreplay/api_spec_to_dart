// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_validation_param_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BodyValidationParamBody _$BodyValidationParamBodyFromJson(
  Map<String, dynamic> json,
) =>
    _BodyValidationParamBody(
      data: json['data'] as Map<String, dynamic>,
      importance: (json['importance'] as num).toInt(),
    );

Map<String, dynamic> _$BodyValidationParamBodyToJson(
  _BodyValidationParamBody instance,
) =>
    <String, dynamic>{
      'data': instance.data,
      'importance': instance.importance,
    };
