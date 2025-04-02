import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:swagger_api_client/src/gen/models/models.dart';

part 'data_union_response.freezed.dart';
part 'data_union_response.g.dart';

/// DataUnionResponse

@freezed
abstract class DataUnionResponse with _$DataUnionResponse {
  const factory DataUnionResponse.fallback() = DataUnionResponseFallback;

  @FreezedUnionValue('bar_chart')
  const factory DataUnionResponse.barChart(FeedItemBarChartPublic value) =
      DataUnionResponseBarChart;

  @FreezedUnionValue('line_chart')
  const factory DataUnionResponse.lineChart(FeedItemLineChartPublic value) =
      DataUnionResponseLineChart;

  @FreezedUnionValue('pie_chart')
  const factory DataUnionResponse.pieChart(FeedItemPieChartPublic value) =
      DataUnionResponsePieChart;

  factory DataUnionResponse.fromJson(Map<String, dynamic> json) =>
      _$DataUnionResponseFromJson(json);
}
