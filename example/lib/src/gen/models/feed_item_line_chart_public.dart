import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'feed_item_line_chart_public.freezed.dart';
part 'feed_item_line_chart_public.g.dart';

/// FeedItemLineChartPublic
/// A feed item representing line chart data.
@freezed
abstract class FeedItemLineChartPublic with _$FeedItemLineChartPublic {
  @JsonSerializable(converters: convertors)
  const factory FeedItemLineChartPublic({
    /// type
    @Default('line_chart')
    @JsonKey(name: FeedItemLineChartPublic.type_Key)
    String type_,

    /// title, Title of the line chart
    @Default('Line Chart')
    @JsonKey(name: FeedItemLineChartPublic.titleKey)
    String title,

    /// start_date, Start date for the line chart time series
    @JsonKey(name: FeedItemLineChartPublic.startDateKey)
    required DateTime startDate,

    /// end_date, End date for the line chart time series
    @JsonKey(name: FeedItemLineChartPublic.endDateKey)
    required DateTime endDate,

    /// data, Data points for the line chart. Each value represents a point on the line.
    @JsonKey(name: FeedItemLineChartPublic.dataKey) required List<double> data,

    /// labels, Optional labels for x-axis data points.
    @Default([])
    @JsonKey(name: FeedItemLineChartPublic.labelsKey)
    List<String> labels,
  }) = _FeedItemLineChartPublic;

  factory FeedItemLineChartPublic.fromJson(Map<String, dynamic> json) =>
      _$FeedItemLineChartPublicFromJson(json);
  const FeedItemLineChartPublic._();

  static const String type_Key = 'type';
  static const String titleKey = 'title';
  static const String startDateKey = 'start_date';
  static const String endDateKey = 'end_date';
  static const String dataKey = 'data';
  static const String labelsKey = 'labels';
}
