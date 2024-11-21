// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_feed_summery_section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeFeedSummerySectionModelImpl _$$HomeFeedSummerySectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeFeedSummerySectionModelImpl(
      id: (json['id'] as num).toInt(),
      type: json['type'] as String? ?? 'summary',
      title: json['title'] as String,
      description: json['description'] as String?,
      data: HomeFeedSummerySectionDataPublic.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HomeFeedSummerySectionModelImplToJson(
        _$HomeFeedSummerySectionModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'description': instance.description,
      'data': instance.data,
    };
