import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'feed_item_bar_chart_public.freezed.dart';
part 'feed_item_bar_chart_public.g.dart';

/// FeedItemBarChartPublic
/// A feed item representing bar chart data.
@freezed
abstract class FeedItemBarChartPublic with _$FeedItemBarChartPublic {
  @JsonSerializable(converters: convertors)
  const factory FeedItemBarChartPublic({
    /// type
    @Default('bar_chart')
    @JsonKey(name: FeedItemBarChartPublic.type_Key)
    String type_,

    /// title, Title of the bar chart
    @Default('Bar Chart')
    @JsonKey(name: FeedItemBarChartPublic.titleKey)
    String title,

    /// data, Data points for the bar chart. Each value represents the height of a bar.
    @JsonKey(name: FeedItemBarChartPublic.dataKey) required List<double> data,

    /// labels, Optional labels for each bar in the chart.
    @Default([])
    @JsonKey(name: FeedItemBarChartPublic.labelsKey)
    List<String> labels,
  }) = _FeedItemBarChartPublic;

  factory FeedItemBarChartPublic.fromJson(Map<String, dynamic> json) =>
      _$FeedItemBarChartPublicFromJson(json);
  const FeedItemBarChartPublic._();

  static const String type_Key = 'type';
  static const String titleKey = 'title';
  static const String dataKey = 'data';
  static const String labelsKey = 'labels';
}
