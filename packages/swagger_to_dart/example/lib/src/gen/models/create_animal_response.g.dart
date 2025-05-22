// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_animal_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateAnimalResponse _$CreateAnimalResponseFromJson(
  Map<String, dynamic> json,
) => _CreateAnimalResponse(
  animal: const CatDogParrotMapJsonConverter().fromJson(
    json['animal'] as Map<String, dynamic>,
  ),
  message: json['message'] as String,
);

Map<String, dynamic> _$CreateAnimalResponseToJson(
  _CreateAnimalResponse instance,
) => <String, dynamic>{
  'animal': const CatDogParrotMapJsonConverter().toJson(instance.animal),
  'message': instance.message,
};
