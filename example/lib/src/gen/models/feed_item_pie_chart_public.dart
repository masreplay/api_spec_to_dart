import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'feed_item_pie_chart_public.freezed.dart';
part 'feed_item_pie_chart_public.g.dart';

/// FeedItemPieChartPublic
/// A feed item representing pie chart data.
@freezed
abstract class FeedItemPieChartPublic with _$FeedItemPieChartPublic {
  @JsonSerializable(converters: convertors)
  const factory FeedItemPieChartPublic({
    /// type
    @Default('pie_chart')
    @JsonKey(name: FeedItemPieChartPublic.type_Key)
    String type_,

    /// title, Title of the pie chart
    @Default('Pie Chart')
    @JsonKey(name: FeedItemPieChartPublic.titleKey)
    String title,

    /// data, Data points for the pie chart. Each value represents a slice of the pie.
    @JsonKey(name: FeedItemPieChartPublic.dataKey) required List<double> data,

    /// labels, Optional labels for each slice of the pie chart.
    @Default([])
    @JsonKey(name: FeedItemPieChartPublic.labelsKey)
    List<String> labels,
  }) = _FeedItemPieChartPublic;

  factory FeedItemPieChartPublic.fromJson(Map<String, dynamic> json) =>
      _$FeedItemPieChartPublicFromJson(json);
  const FeedItemPieChartPublic._();

  static const String type_Key = 'type';
  static const String titleKey = 'title';
  static const String dataKey = 'data';
  static const String labelsKey = 'labels';
}
