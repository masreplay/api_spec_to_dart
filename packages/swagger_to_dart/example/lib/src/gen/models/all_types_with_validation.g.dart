// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_types_with_validation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllTypesWithValidation _$AllTypesWithValidationFromJson(
        Map<String, dynamic> json) =>
    _AllTypesWithValidation(
      intValue: (json['int_value'] as num).toInt(),
      floatValue: (json['float_value'] as num).toDouble(),
      strValue: json['str_value'] as String,
      boolValue: json['bool_value'] as bool,
      emailValue: json['email_value'] as String,
      urlValue: Uri.parse(json['url_value'] as String),
      listValue: (json['list_value'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AllTypesWithValidationToJson(
        _AllTypesWithValidation instance) =>
    <String, dynamic>{
      'int_value': instance.intValue,
      'float_value': instance.floatValue,
      'str_value': instance.strValue,
      'bool_value': instance.boolValue,
      'email_value': instance.emailValue,
      'url_value': instance.urlValue.toString(),
      'list_value': instance.listValue,
    };
