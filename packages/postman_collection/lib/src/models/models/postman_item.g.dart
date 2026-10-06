// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanItem _$PostmanItemFromJson(Map<String, dynamic> json) => _PostmanItem(
  id: json['id'] as String?,
  name: json['name'] as String?,
  description: json['description'] == null
      ? null
      : PostmanDescription.fromJson(json['description']),
  variable: (json['variable'] as List<dynamic>?)
      ?.map((e) => PostmanVariable.fromJson(e as Map<String, dynamic>))
      .toList(),
  event: (json['event'] as List<dynamic>?)
      ?.map((e) => PostmanEvent.fromJson(e as Map<String, dynamic>))
      .toList(),
  request: PostmanRequest.fromJson(json['request']),
  response: (json['response'] as List<dynamic>?)
      ?.map((e) => PostmanResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  protocolProfileBehavior:
      json['protocolProfileBehavior'] as Map<String, dynamic>?,
);

Map<String, dynamic> _$PostmanItemToJson(_PostmanItem instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'name': ?instance.name,
      'description': ?instance.description?.toJson(),
      'variable': ?instance.variable?.map((e) => e.toJson()).toList(),
      'event': ?instance.event?.map((e) => e.toJson()).toList(),
      'request': instance.request.toJson(),
      'response': ?instance.response?.map((e) => e.toJson()).toList(),
      'protocolProfileBehavior': ?instance.protocolProfileBehavior,
    };
