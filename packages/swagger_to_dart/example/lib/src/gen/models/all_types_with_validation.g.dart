// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_types_with_validation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AllTypesWithValidation _$AllTypesWithValidationFromJson(
        Map<String, dynamic> json) =>
    _AllTypesWithValidation(
      intValue: (json['intValue'] as num).toInt(),
      floatValue: (json['floatValue'] as num).toDouble(),
      strValue: json['strValue'] as String,
      boolValue: json['boolValue'] as bool,
      emailValue: json['emailValue'] as String,
      urlValue: json['urlValue'] as String,
      listValue:
          (json['listValue'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AllTypesWithValidationToJson(
        _AllTypesWithValidation instance) =>
    <String, dynamic>{
      'intValue': instance.intValue,
      'floatValue': instance.floatValue,
      'strValue': instance.strValue,
      'boolValue': instance.boolValue,
      'emailValue': instance.emailValue,
      'urlValue': instance.urlValue,
      'listValue': instance.listValue,
    };
