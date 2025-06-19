// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'language_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) =>
    _LanguageModel(
      alpha2: json['alpha2'] as String?,
      name: json['name'] as String?,
      iso6393: json['iso639_3'] == null
          ? null
          : Iso6393.fromJson(json['iso639_3'] as String),
      iso6395: json['iso639_5'] == null
          ? null
          : Iso6395.fromJson(json['iso639_5'] as String),
    );

Map<String, dynamic> _$LanguageModelToJson(_LanguageModel instance) =>
    <String, dynamic>{
      if (instance.alpha2 case final value?) 'alpha2': value,
      if (instance.name case final value?) 'name': value,
      if (instance.iso6393?.toJson() case final value?) 'iso639_3': value,
      if (instance.iso6395?.toJson() case final value?) 'iso639_5': value,
    };
