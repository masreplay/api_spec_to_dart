// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_description_object_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanDescriptionObjectValue _$PostmanDescriptionObjectValueFromJson(
  Map<String, dynamic> json,
) => _PostmanDescriptionObjectValue(
  content: json['content'] as String?,
  type: json['type'] as String?,
  version: json['version'],
);

Map<String, dynamic> _$PostmanDescriptionObjectValueToJson(
  _PostmanDescriptionObjectValue instance,
) => <String, dynamic>{
  'content': ?instance.content,
  'type': ?instance.type,
  'version': ?instance.version,
};
