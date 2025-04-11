// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) =>
    _LanguageModel(
      alpha2: json['alpha2'] as String?,
      name: json['name'] as String?,
      iso6393: json['iso639_3'] as String?,
      iso6395: json['iso639_5'] as String?,
    );

Map<String, dynamic> _$LanguageModelToJson(_LanguageModel instance) =>
    <String, dynamic>{
      'alpha2': instance.alpha2,
      'name': instance.name,
      'iso639_3': instance.iso6393,
      'iso639_5': instance.iso6395,
    };
