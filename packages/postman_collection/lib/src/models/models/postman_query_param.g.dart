// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_query_param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanQueryParam _$PostmanQueryParamFromJson(Map<String, dynamic> json) =>
    _PostmanQueryParam(
      key: json['key'] as String?,
      value: json['value'] as String?,
      disabled: json['disabled'] as bool? ?? false,
      description: json['description'] == null
          ? null
          : PostmanDescription.fromJson(json['description']),
    );

Map<String, dynamic> _$PostmanQueryParamToJson(_PostmanQueryParam instance) =>
    <String, dynamic>{
      'key': ?instance.key,
      'value': ?instance.value,
      'disabled': instance.disabled,
      'description': ?instance.description?.toJson(),
    };
