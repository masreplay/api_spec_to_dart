// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemPublic _$ItemPublicFromJson(Map<String, dynamic> json) => _ItemPublic(
  title: json['title'] as String,
  description: json['description'] as String?,
  id: json['id'] as String,
  ownerId: json['owner_id'] as String,
);

Map<String, dynamic> _$ItemPublicToJson(_ItemPublic instance) =>
    <String, dynamic>{
      'title': instance.title,
      if (instance.description case final value?) 'description': value,
      'id': instance.id,
      'owner_id': instance.ownerId,
    };
