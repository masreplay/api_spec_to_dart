// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_animal_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CreateAnimalResponse _$CreateAnimalResponseFromJson(
  Map<String, dynamic> json,
) => _CreateAnimalResponse(
  animal: CatDogParrot.fromJson(json['animal'] as Map<String, dynamic>),
  message: json['message'] as String,
);

Map<String, dynamic> _$CreateAnimalResponseToJson(
  _CreateAnimalResponse instance,
) => <String, dynamic>{'animal': instance.animal, 'message': instance.message};
