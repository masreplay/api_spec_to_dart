// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Cat _$CatFromJson(Map<String, dynamic> json) => _Cat(
  name: json['name'] as String,
  type: json['type'] as String? ?? 'cat',
  meowCuteness: (json['meow_cuteness'] as num).toInt(),
);

Map<String, dynamic> _$CatToJson(_Cat instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'meow_cuteness': instance.meowCuteness,
};
