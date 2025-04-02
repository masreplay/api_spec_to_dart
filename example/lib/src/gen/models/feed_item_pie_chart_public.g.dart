// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_item_pie_chart_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedItemPieChartPublic _$FeedItemPieChartPublicFromJson(
  Map<String, dynamic> json,
) => _FeedItemPieChartPublic(
  type_: json['type'] as String? ?? 'pie_chart',
  title: json['title'] as String? ?? 'Pie Chart',
  data:
      (json['data'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
  labels:
      (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$FeedItemPieChartPublicToJson(
  _FeedItemPieChartPublic instance,
) => <String, dynamic>{
  'type': instance.type_,
  'title': instance.title,
  'data': instance.data,
  'labels': instance.labels,
};
