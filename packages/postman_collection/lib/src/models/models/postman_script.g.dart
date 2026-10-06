// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_script.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanScript _$PostmanScriptFromJson(Map<String, dynamic> json) =>
    _PostmanScript(
      id: json['id'] as String?,
      type: json['type'] as String?,
      exec: json['exec'] == null
          ? null
          : PostmanScriptExec.fromJson(json['exec']),
      src: json['src'] == null ? null : PostmanUrl.fromJson(json['src']),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$PostmanScriptToJson(_PostmanScript instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'type': ?instance.type,
      'exec': ?instance.exec?.toJson(),
      'src': ?instance.src?.toJson(),
      'name': ?instance.name,
    };
