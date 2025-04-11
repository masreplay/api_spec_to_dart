// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models_create_animal_union_animal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelsCreateAnimalUnionAnimalFallback
_$ModelsCreateAnimalUnionAnimalFallbackFromJson(Map<String, dynamic> json) =>
    ModelsCreateAnimalUnionAnimalFallback(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ModelsCreateAnimalUnionAnimalFallbackToJson(
  ModelsCreateAnimalUnionAnimalFallback instance,
) => <String, dynamic>{'runtimeType': instance.$type};

ModelsCreateAnimalUnionAnimalDog _$ModelsCreateAnimalUnionAnimalDogFromJson(
  Map<String, dynamic> json,
) => ModelsCreateAnimalUnionAnimalDog(
  Dog.fromJson(json['value'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ModelsCreateAnimalUnionAnimalDogToJson(
  ModelsCreateAnimalUnionAnimalDog instance,
) => <String, dynamic>{'value': instance.value, 'runtimeType': instance.$type};

ModelsCreateAnimalUnionAnimalCat _$ModelsCreateAnimalUnionAnimalCatFromJson(
  Map<String, dynamic> json,
) => ModelsCreateAnimalUnionAnimalCat(
  Cat.fromJson(json['value'] as Map<String, dynamic>),
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ModelsCreateAnimalUnionAnimalCatToJson(
  ModelsCreateAnimalUnionAnimalCat instance,
) => <String, dynamic>{'value': instance.value, 'runtimeType': instance.$type};

ModelsCreateAnimalUnionAnimalParrot
_$ModelsCreateAnimalUnionAnimalParrotFromJson(Map<String, dynamic> json) =>
    ModelsCreateAnimalUnionAnimalParrot(
      Parrot.fromJson(json['value'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ModelsCreateAnimalUnionAnimalParrotToJson(
  ModelsCreateAnimalUnionAnimalParrot instance,
) => <String, dynamic>{'value': instance.value, 'runtimeType': instance.$type};
