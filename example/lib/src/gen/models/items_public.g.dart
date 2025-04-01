// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ItemsPublic _$ItemsPublicFromJson(Map<String, dynamic> json) => _ItemsPublic(
  data:
      (json['data'] as List<dynamic>)
          .map((e) => ItemPublic.fromJson(e as Map<String, dynamic>))
          .toList(),
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$ItemsPublicToJson(_ItemsPublic instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'count': instance.count,
    };
