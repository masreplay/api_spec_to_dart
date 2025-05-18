// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_dog_parrot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatDogParrotDog _$CatDogParrotDogFromJson(Map<String, dynamic> json) =>
    CatDogParrotDog(
      name: json['name'] as String,
      type: json['type'] as String? ?? "dog",
      barkLoudness: (json['barkLoudness'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CatDogParrotDogToJson(CatDogParrotDog instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'barkLoudness': instance.barkLoudness,
      'runtimeType': instance.$type,
    };

CatDogParrotCat _$CatDogParrotCatFromJson(Map<String, dynamic> json) =>
    CatDogParrotCat(
      name: json['name'] as String,
      type: json['type'] as String? ?? "cat",
      meowCuteness: (json['meowCuteness'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CatDogParrotCatToJson(CatDogParrotCat instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'meowCuteness': instance.meowCuteness,
      'runtimeType': instance.$type,
    };

CatDogParrotParrot _$CatDogParrotParrotFromJson(Map<String, dynamic> json) =>
    CatDogParrotParrot(
      name: json['name'] as String,
      type: json['type'] as String? ?? "parrot",
      phrases:
          (json['phrases'] as List<dynamic>).map((e) => e as String).toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CatDogParrotParrotToJson(CatDogParrotParrot instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'phrases': instance.phrases,
      'runtimeType': instance.$type,
    };
