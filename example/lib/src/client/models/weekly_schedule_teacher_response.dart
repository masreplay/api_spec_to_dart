import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'weekly_schedule_teacher_response.freezed.dart';
part 'weekly_schedule_teacher_response.g.dart';

@freezed
class WeeklyScheduleTeacherResponse with _$WeeklyScheduleTeacherResponse {
  const WeeklyScheduleTeacherResponse._();

  @JsonSerializable(converters: convertors)
  const factory WeeklyScheduleTeacherResponse({
    /// Weekday
    @JsonKey(name: 'weekday') required int weekday,

    /// Lectures
    @JsonKey(name: 'lectures') required List lectures,
  }) = _WeeklyScheduleTeacherResponse;

  factory WeeklyScheduleTeacherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeeklyScheduleTeacherResponseFromJson(json);
}
