// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanEvent _$PostmanEventFromJson(Map<String, dynamic> json) =>
    _PostmanEvent(
      id: json['id'] as String?,
      listen: json['listen'] as String,
      script: json['script'] == null
          ? null
          : PostmanScript.fromJson(json['script'] as Map<String, dynamic>),
      disabled: json['disabled'] as bool? ?? false,
    );

Map<String, dynamic> _$PostmanEventToJson(_PostmanEvent instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'listen': instance.listen,
      'script': ?instance.script?.toJson(),
      'disabled': instance.disabled,
    };
