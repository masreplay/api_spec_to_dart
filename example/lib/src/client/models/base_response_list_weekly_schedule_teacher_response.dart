import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_list_weekly_schedule_teacher_response.freezed.dart';
part 'base_response_list_weekly_schedule_teacher_response.g.dart';

@freezed
class BaseResponseListWeeklyScheduleTeacherResponse
    with _$BaseResponseListWeeklyScheduleTeacherResponse {
  const BaseResponseListWeeklyScheduleTeacherResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseListWeeklyScheduleTeacherResponse({
    /// Message
    @JsonKey(name: 'message') required String? message,

    /// Data
    @JsonKey(name: 'data') required List<WeeklyScheduleTeacherResponse> data,
  }) = _BaseResponseListWeeklyScheduleTeacherResponse;

  factory BaseResponseListWeeklyScheduleTeacherResponse.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseListWeeklyScheduleTeacherResponseFromJson(json);
}
