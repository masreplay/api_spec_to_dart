import 'package:freezed_annotation/freezed_annotation.dart';

part 'weekly_schedule_teacher_response.freezed.dart';
part 'weekly_schedule_teacher_response.g.dart';

@freezed
class WeeklyScheduleTeacherResponse with _$WeeklyScheduleTeacherResponse {
  const factory WeeklyScheduleTeacherResponse({
    @JsonKey(name: 'weekday') required int weekday,
    @JsonKey(name: 'lectures') required List lectures,
  }) = _WeeklyScheduleTeacherResponse;

  factory WeeklyScheduleTeacherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeeklyScheduleTeacherResponseFromJson(json);
}
