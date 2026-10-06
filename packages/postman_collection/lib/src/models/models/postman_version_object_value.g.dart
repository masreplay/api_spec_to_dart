// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_version_object_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanVersionObjectValue _$PostmanVersionObjectValueFromJson(
  Map<String, dynamic> json,
) => _PostmanVersionObjectValue(
  major: (json['major'] as num).toInt(),
  minor: (json['minor'] as num).toInt(),
  patch: (json['patch'] as num).toInt(),
  identifier: json['identifier'] as String?,
  meta: json['meta'],
);

Map<String, dynamic> _$PostmanVersionObjectValueToJson(
  _PostmanVersionObjectValue instance,
) => <String, dynamic>{
  'major': instance.major,
  'minor': instance.minor,
  'patch': instance.patch,
  'identifier': ?instance.identifier,
  'meta': ?instance.meta,
};
