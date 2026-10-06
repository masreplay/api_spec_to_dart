// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_form_parameter_file_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanFormParameterFileValue _$PostmanFormParameterFileValueFromJson(
  Map<String, dynamic> json,
) => _PostmanFormParameterFileValue(
  key: json['key'] as String,
  src: json['src'] == null
      ? null
      : PostmanFormParameterFileValueSrc.fromJson(json['src']),
  disabled: json['disabled'] as bool? ?? false,
  type: json['type'] as String?,
  contentType: json['contentType'] as String?,
  description: json['description'] == null
      ? null
      : PostmanDescription.fromJson(json['description']),
);

Map<String, dynamic> _$PostmanFormParameterFileValueToJson(
  _PostmanFormParameterFileValue instance,
) => <String, dynamic>{
  'key': instance.key,
  'src': ?instance.src?.toJson(),
  'disabled': instance.disabled,
  'type': ?instance.type,
  'contentType': ?instance.contentType,
  'description': ?instance.description?.toJson(),
};
