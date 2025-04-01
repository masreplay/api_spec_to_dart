// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_update.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemUpdate _$ItemUpdateFromJson(Map<String, dynamic> json) => _ItemUpdate(
  title: json['title'] as String?,
  description: json['description'] as String?,
);

Map<String, dynamic> _$ItemUpdateToJson(_ItemUpdate instance) =>
    <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.description case final value?) 'description': value,
    };
