// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_item_line_chart_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FeedItemLineChartPublic _$FeedItemLineChartPublicFromJson(
  Map<String, dynamic> json,
) => _FeedItemLineChartPublic(
  type_: json['type'] as String? ?? 'line_chart',
  title: json['title'] as String? ?? 'Line Chart',
  startDate: DateTime.parse(json['start_date'] as String),
  endDate: DateTime.parse(json['end_date'] as String),
  data:
      (json['data'] as List<dynamic>)
          .map((e) => (e as num).toDouble())
          .toList(),
  labels:
      (json['labels'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
);

Map<String, dynamic> _$FeedItemLineChartPublicToJson(
  _FeedItemLineChartPublic instance,
) => <String, dynamic>{
  'type': instance.type_,
  'title': instance.title,
  'start_date': instance.startDate.toIso8601String(),
  'end_date': instance.endDate.toIso8601String(),
  'data': instance.data,
  'labels': instance.labels,
};
