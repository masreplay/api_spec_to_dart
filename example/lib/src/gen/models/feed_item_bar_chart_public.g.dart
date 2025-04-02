// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_item_bar_chart_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedItemBarChartPublic _$FeedItemBarChartPublicFromJson(
  Map<String, dynamic> json,
) => _FeedItemBarChartPublic(
  type_: json['type'] as String? ?? 'bar_chart',
  title: json['title'] as String? ?? 'Bar Chart',
  data:
      (json['data'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
  labels:
      (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$FeedItemBarChartPublicToJson(
  _FeedItemBarChartPublic instance,
) => <String, dynamic>{
  'type': instance.type_,
  'title': instance.title,
  'data': instance.data,
  'labels': instance.labels,
};
