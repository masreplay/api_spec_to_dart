import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'app_api_routes_v1_lecturer_weekly_schedule_route_lecture.freezed.dart';
part 'app_api_routes_v1_lecturer_weekly_schedule_route_lecture.g.dart';

@freezed
class AppApiRoutesV1LecturerWeeklyScheduleRouteLecture
    with _$AppApiRoutesV1LecturerWeeklyScheduleRouteLecture {
  const AppApiRoutesV1LecturerWeeklyScheduleRouteLecture._();

  @JsonSerializable(converters: convertors)
  const factory AppApiRoutesV1LecturerWeeklyScheduleRouteLecture({
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'subject_title') required String? subjectTitle,
    @JsonKey(name: 'start_time') required DateTime? startTime,
    @JsonKey(name: 'end_time') required DateTime? endTime,
    @JsonKey(name: 'group_code') required String? groupCode,
    @JsonKey(name: 'room_code') required String? roomCode,
    @JsonKey(name: 'duration') required num? duration,
    @JsonKey(name: 'grade') required int? grade,
    @JsonKey(name: 'collage') required String? collage,
    @JsonKey(name: 'division') required String? division,
    @JsonKey(name: 'members') required List members,
    @JsonKey(name: 'has_code') required bool? hasCode,
    @JsonKey(name: 'number_of_students') required int? numberOfStudents,
  }) = _AppApiRoutesV1LecturerWeeklyScheduleRouteLecture;

  factory AppApiRoutesV1LecturerWeeklyScheduleRouteLecture.fromJson(
          Map<String, dynamic> json) =>
      _$AppApiRoutesV1LecturerWeeklyScheduleRouteLectureFromJson(json);
}
