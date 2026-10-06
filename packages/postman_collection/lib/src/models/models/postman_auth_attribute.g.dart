// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_auth_attribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanAuthAttribute _$PostmanAuthAttributeFromJson(
  Map<String, dynamic> json,
) => _PostmanAuthAttribute(
  key: json['key'] as String,
  value: json['value'],
  type: json['type'] as String?,
);

Map<String, dynamic> _$PostmanAuthAttributeToJson(
  _PostmanAuthAttribute instance,
) => <String, dynamic>{
  'key': instance.key,
  'value': ?instance.value,
  'type': ?instance.type,
};
