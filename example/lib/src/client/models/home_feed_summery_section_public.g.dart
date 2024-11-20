// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_feed_summery_section_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeFeedSummerySectionPublicImpl _$$HomeFeedSummerySectionPublicImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeFeedSummerySectionPublicImpl(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String? ?? String.summary,
      title: json['title'] as String,
      description: json['description'] as String?,
      data: HomeFeedSummerySectionDataPublic.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeFeedSummerySectionPublicImplToJson(
        _$HomeFeedSummerySectionPublicImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'data': instance.data,
    };
