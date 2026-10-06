// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_url_encoded_parameter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanUrlEncodedParameter _$PostmanUrlEncodedParameterFromJson(
  Map<String, dynamic> json,
) => _PostmanUrlEncodedParameter(
  key: json['key'] as String,
  value: json['value'] as String?,
  disabled: json['disabled'] as bool? ?? false,
  description: json['description'] == null
      ? null
      : PostmanDescription.fromJson(json['description']),
);

Map<String, dynamic> _$PostmanUrlEncodedParameterToJson(
  _PostmanUrlEncodedParameter instance,
) => <String, dynamic>{
  'key': instance.key,
  'value': ?instance.value,
  'disabled': instance.disabled,
  'description': ?instance.description?.toJson(),
};
