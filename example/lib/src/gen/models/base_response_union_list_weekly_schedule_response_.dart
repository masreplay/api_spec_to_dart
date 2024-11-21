import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_union_list_weekly_schedule_response_.freezed.dart';
part 'base_response_union_list_weekly_schedule_response_.g.dart';

@freezed
class BaseResponseUnionListWeeklyScheduleResponse
    with _$BaseResponseUnionListWeeklyScheduleResponse {
  const BaseResponseUnionListWeeklyScheduleResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseUnionListWeeklyScheduleResponse({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<WeeklyScheduleResponse>? data,
  }) = _BaseResponseUnionListWeeklyScheduleResponse;

  factory BaseResponseUnionListWeeklyScheduleResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BaseResponseUnionListWeeklyScheduleResponseFromJson(json);
}
