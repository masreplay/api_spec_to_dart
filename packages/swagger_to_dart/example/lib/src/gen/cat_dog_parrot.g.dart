// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cat_dog_parrot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CatDogParrotDog _$CatDogParrotDogFromJson(Map<String, dynamic> json) =>
    CatDogParrotDog(
      Dog.fromJson(json['value'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CatDogParrotDogToJson(CatDogParrotDog instance) =>
    <String, dynamic>{
      'value': instance.value.toJson(),
      'runtimeType': instance.$type,
    };

CatDogParrotCat _$CatDogParrotCatFromJson(Map<String, dynamic> json) =>
    CatDogParrotCat(
      Cat.fromJson(json['value'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CatDogParrotCatToJson(CatDogParrotCat instance) =>
    <String, dynamic>{
      'value': instance.value.toJson(),
      'runtimeType': instance.$type,
    };

CatDogParrotParrot _$CatDogParrotParrotFromJson(Map<String, dynamic> json) =>
    CatDogParrotParrot(
      Parrot.fromJson(json['value'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$CatDogParrotParrotToJson(CatDogParrotParrot instance) =>
    <String, dynamic>{
      'value': instance.value.toJson(),
      'runtimeType': instance.$type,
    };
