// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_item_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanItemGroup _$PostmanItemGroupFromJson(Map<String, dynamic> json) =>
    _PostmanItemGroup(
      name: json['name'] as String?,
      description: json['description'] == null
          ? null
          : PostmanDescription.fromJson(json['description']),
      variable: (json['variable'] as List<dynamic>?)
          ?.map((e) => PostmanVariable.fromJson(e as Map<String, dynamic>))
          .toList(),
      item: (json['item'] as List<dynamic>)
          .map((e) => PostmanItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map((e) => PostmanEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      auth: json['auth'] == null
          ? null
          : PostmanAuth.fromJson(json['auth'] as Map<String, dynamic>),
      protocolProfileBehavior:
          json['protocolProfileBehavior'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$PostmanItemGroupToJson(_PostmanItemGroup instance) =>
    <String, dynamic>{
      'name': ?instance.name,
      'description': ?instance.description?.toJson(),
      'variable': ?instance.variable?.map((e) => e.toJson()).toList(),
      'item': instance.item.map((e) => e.toJson()).toList(),
      'event': ?instance.event?.map((e) => e.toJson()).toList(),
      'auth': ?instance.auth?.toJson(),
      'protocolProfileBehavior': ?instance.protocolProfileBehavior,
    };
