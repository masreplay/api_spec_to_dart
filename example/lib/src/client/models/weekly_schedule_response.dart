import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'weekly_schedule_response.freezed.dart';
part 'weekly_schedule_response.g.dart';

@freezed
class WeeklyScheduleResponse with _$WeeklyScheduleResponse {
  const WeeklyScheduleResponse._();

  @JsonSerializable(converters: convertors)
  const factory WeeklyScheduleResponse({
    @JsonKey(name: 'weekday')

    /// Weekday
    required int weekday,
    @JsonKey(name: 'lectures')

    /// Lectures
    required List lectures,
  }) = _WeeklyScheduleResponse;

  factory WeeklyScheduleResponse.fromJson(Map<String, dynamic> json) =>
      _$WeeklyScheduleResponseFromJson(json);
}
