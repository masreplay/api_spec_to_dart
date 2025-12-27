// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Dog _$DogFromJson(Map<String, dynamic> json) => _Dog(
      name: json['name'] as String,
      type: json['type'] as String? ?? 'dog',
      barkLoudness: (json['bark_loudness'] as num).toInt(),
    );

Map<String, dynamic> _$DogToJson(_Dog instance) => <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'bark_loudness': instance.barkLoudness,
    };
