// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'animal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimalDog _$AnimalDogFromJson(Map<String, dynamic> json) => AnimalDog(
      Dog.fromJson(json['value'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AnimalDogToJson(AnimalDog instance) => <String, dynamic>{
      'value': instance.value.toJson(),
      'runtimeType': instance.$type,
    };

AnimalCat _$AnimalCatFromJson(Map<String, dynamic> json) => AnimalCat(
      Cat.fromJson(json['value'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AnimalCatToJson(AnimalCat instance) => <String, dynamic>{
      'value': instance.value.toJson(),
      'runtimeType': instance.$type,
    };

AnimalParrot _$AnimalParrotFromJson(Map<String, dynamic> json) => AnimalParrot(
      Parrot.fromJson(json['value'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AnimalParrotToJson(AnimalParrot instance) =>
    <String, dynamic>{
      'value': instance.value.toJson(),
      'runtimeType': instance.$type,
    };

AnimalFallback _$AnimalFallbackFromJson(Map<String, dynamic> json) =>
    AnimalFallback(
      json['value'] as Map<String, dynamic>?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$AnimalFallbackToJson(AnimalFallback instance) =>
    <String, dynamic>{
      if (instance.value case final value?) 'value': value,
      'runtimeType': instance.$type,
    };
