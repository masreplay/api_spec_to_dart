import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'weekly_schedule_response.freezed.dart';
part 'weekly_schedule_response.g.dart';

///WeeklyScheduleResponse

@freezed
class WeeklyScheduleResponse with _$WeeklyScheduleResponse {
  const WeeklyScheduleResponse._();

  @JsonSerializable(converters: convertors)
  const factory WeeklyScheduleResponse({
    /// Weekday
    @JsonKey(name: 'weekday') required int weekday,

    /// Lectures
    @JsonKey(name: 'lectures')
    required List<AppApiRoutesV1StudentWeeklyScheduleRouteLecture?> lectures,
  }) = _WeeklyScheduleResponse;

  factory WeeklyScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$WeeklyScheduleResponseFromJson(json);
}
