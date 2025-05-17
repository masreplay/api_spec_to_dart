// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_dog_parrot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dog _$DogFromJson(Map<String, dynamic> json) => Dog(
  name: json['name'] as String,
  type: json['type'] as String? ?? "dog",
  barkLoudness: (json['barkLoudness'] as num).toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$DogToJson(Dog instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'barkLoudness': instance.barkLoudness,
  'runtimeType': instance.$type,
};

Cat _$CatFromJson(Map<String, dynamic> json) => Cat(
  name: json['name'] as String,
  type: json['type'] as String? ?? "cat",
  meowCuteness: (json['meowCuteness'] as num).toInt(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$CatToJson(Cat instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'meowCuteness': instance.meowCuteness,
  'runtimeType': instance.$type,
};

Parrot _$ParrotFromJson(Map<String, dynamic> json) => Parrot(
  name: json['name'] as String,
  type: json['type'] as String? ?? "parrot",
  phrases: (json['phrases'] as List<dynamic>).map((e) => e as String).toList(),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ParrotToJson(Parrot instance) => <String, dynamic>{
  'name': instance.name,
  'type': instance.type,
  'phrases': instance.phrases,
  'runtimeType': instance.$type,
};
