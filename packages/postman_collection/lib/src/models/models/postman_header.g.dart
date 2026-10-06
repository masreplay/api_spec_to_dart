// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanHeader _$PostmanHeaderFromJson(Map<String, dynamic> json) =>
    _PostmanHeader(
      key: json['key'] as String,
      value: json['value'] as String,
      disabled: json['disabled'] as bool? ?? false,
      description: json['description'] == null
          ? null
          : PostmanDescription.fromJson(json['description']),
    );

Map<String, dynamic> _$PostmanHeaderToJson(_PostmanHeader instance) =>
    <String, dynamic>{
      'key': instance.key,
      'value': instance.value,
      'disabled': instance.disabled,
      'description': ?instance.description?.toJson(),
    };
