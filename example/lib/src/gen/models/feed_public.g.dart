// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedPublic _$FeedPublicFromJson(Map<String, dynamic> json) => _FeedPublic(
  count: (json['count'] as num).toInt(),
  data:
      (json['data'] as List<dynamic>)
          .map((e) => DataUnionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$FeedPublicToJson(_FeedPublic instance) =>
    <String, dynamic>{
      'count': instance.count,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
