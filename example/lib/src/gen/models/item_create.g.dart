// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_create.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemCreate _$ItemCreateFromJson(Map<String, dynamic> json) => _ItemCreate(
  title: json['title'] as String,
  description: json['description'] as String?,
);

Map<String, dynamic> _$ItemCreateToJson(_ItemCreate instance) =>
    <String, dynamic>{
      'title': instance.title,
      if (instance.description case final value?) 'description': value,
    };
