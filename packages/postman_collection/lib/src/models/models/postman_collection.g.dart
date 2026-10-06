// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanCollection _$PostmanCollectionFromJson(Map<String, dynamic> json) =>
    _PostmanCollection(
      info: PostmanInfo.fromJson(json['info'] as Map<String, dynamic>),
      item: (json['item'] as List<dynamic>)
          .map((e) => PostmanItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      event: (json['event'] as List<dynamic>?)
          ?.map((e) => PostmanEvent.fromJson(e as Map<String, dynamic>))
          .toList(),
      variable: (json['variable'] as List<dynamic>?)
          ?.map((e) => PostmanVariable.fromJson(e as Map<String, dynamic>))
          .toList(),
      auth: json['auth'] == null
          ? null
          : PostmanAuth.fromJson(json['auth'] as Map<String, dynamic>),
      protocolProfileBehavior:
          json['protocolProfileBehavior'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$PostmanCollectionToJson(_PostmanCollection instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'item': instance.item.map((e) => e.toJson()).toList(),
      'event': ?instance.event?.map((e) => e.toJson()).toList(),
      'variable': ?instance.variable?.map((e) => e.toJson()).toList(),
      'auth': ?instance.auth?.toJson(),
      'protocolProfileBehavior': ?instance.protocolProfileBehavior,
    };
