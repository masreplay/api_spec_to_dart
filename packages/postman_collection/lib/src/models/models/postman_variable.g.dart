// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'postman_variable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostmanVariable _$PostmanVariableFromJson(Map<String, dynamic> json) =>
    _PostmanVariable(
      id: json['id'] as String?,
      key: json['key'] as String?,
      value: json['value'],
      type: json['type'] == null
          ? null
          : PostmanVariableType.fromJson(json['type'] as String),
      name: json['name'] as String?,
      description: json['description'] == null
          ? null
          : PostmanDescription.fromJson(json['description']),
      system: json['system'] as bool? ?? false,
      disabled: json['disabled'] as bool? ?? false,
    );

Map<String, dynamic> _$PostmanVariableToJson(_PostmanVariable instance) =>
    <String, dynamic>{
      'id': ?instance.id,
      'key': ?instance.key,
      'value': ?instance.value,
      'type': ?instance.type?.toJson(),
      'name': ?instance.name,
      'description': ?instance.description?.toJson(),
      'system': instance.system,
      'disabled': instance.disabled,
    };
