// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parrot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Parrot _$ParrotFromJson(Map<String, dynamic> json) => _Parrot(
  name: json['name'] as String,
  typeAA: json['type'] as String? ?? 'parrot',
  phrases: (json['phrases'] as List<dynamic>).map((e) => e as String).toList(),
);

Map<String, dynamic> _$ParrotToJson(_Parrot instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.typeAA,
  'phrases': instance.phrases,
};
