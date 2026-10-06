// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_request_object_value_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanRequestObjectValueBody _$PostmanRequestObjectValueBodyFromJson(
  Map<String, dynamic> json,
) => _PostmanRequestObjectValueBody(
  mode: json['mode'] == null
      ? null
      : PostmanRequestObjectValueBodyMode.fromJson(json['mode'] as String),
  raw: json['raw'] as String?,
  graphql: json['graphql'] as Map<String, dynamic>?,
  urlencoded: (json['urlencoded'] as List<dynamic>?)
      ?.map(
        (e) => PostmanUrlEncodedParameter.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  formdata: (json['formdata'] as List<dynamic>?)
      ?.map((e) => PostmanFormParameter.fromJson(e as Map<String, dynamic>))
      .toList(),
  file: json['file'] == null
      ? null
      : PostmanRequestObjectValueBodyFile.fromJson(
          json['file'] as Map<String, dynamic>,
        ),
  options: json['options'] as Map<String, dynamic>?,
  disabled: json['disabled'] as bool? ?? false,
);

Map<String, dynamic> _$PostmanRequestObjectValueBodyToJson(
  _PostmanRequestObjectValueBody instance,
) => <String, dynamic>{
  'mode': ?instance.mode?.toJson(),
  'raw': ?instance.raw,
  'graphql': ?instance.graphql,
  'urlencoded': ?instance.urlencoded?.map((e) => e.toJson()).toList(),
  'formdata': ?instance.formdata?.map((e) => e.toJson()).toList(),
  'file': ?instance.file?.toJson(),
  'options': ?instance.options,
  'disabled': instance.disabled,
};
