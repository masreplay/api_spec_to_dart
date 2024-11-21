import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'weekly_schedule_teacher_response.freezed.dart';
part 'weekly_schedule_teacher_response.g.dart';

///WeeklyScheduleTeacherResponse

@freezed
class WeeklyScheduleTeacherResponse with _$WeeklyScheduleTeacherResponse {
  const WeeklyScheduleTeacherResponse._();

  @JsonSerializable(converters: convertors)
  const factory WeeklyScheduleTeacherResponse({
    /// Weekday
    @JsonKey(name: 'weekday') required int weekday,

    /// Lectures
    @JsonKey(name: 'lectures')
    required List<AppApiRoutesV1LecturerWeeklyScheduleRouteLecture?> lectures,
  }) = _WeeklyScheduleTeacherResponse;

  factory WeeklyScheduleTeacherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeeklyScheduleTeacherResponseFromJson(json);
}
