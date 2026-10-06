// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_form_parameter_text_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanFormParameterTextValue _$PostmanFormParameterTextValueFromJson(
  Map<String, dynamic> json,
) => _PostmanFormParameterTextValue(
  key: json['key'] as String,
  value: json['value'] as String?,
  disabled: json['disabled'] as bool? ?? false,
  type: json['type'] as String?,
  contentType: json['contentType'] as String?,
  description: json['description'] == null
      ? null
      : PostmanDescription.fromJson(json['description']),
);

Map<String, dynamic> _$PostmanFormParameterTextValueToJson(
  _PostmanFormParameterTextValue instance,
) => <String, dynamic>{
  'key': instance.key,
  'value': ?instance.value,
  'disabled': instance.disabled,
  'type': ?instance.type,
  'contentType': ?instance.contentType,
  'description': ?instance.description?.toJson(),
};
