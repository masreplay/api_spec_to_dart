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
    @JsonKey(name: 'id')

    /// Id
    required int? id,
    @JsonKey(name: 'subject_title')

    /// Subject Title
    required String? subjectTitle,
    @JsonKey(name: 'start_time')

    /// Start Time
    required DateTime? startTime,
    @JsonKey(name: 'end_time')

    /// End Time
    required DateTime? endTime,
    @JsonKey(name: 'group_code')

    /// Group Code
    required String? groupCode,
    @JsonKey(name: 'room_code')

    /// Room Code
    required String? roomCode,
    @JsonKey(name: 'duration')

    /// Duration
    required num? duration,
    @JsonKey(name: 'grade')

    /// Grade
    required int? grade,
    @JsonKey(name: 'collage')

    /// Collage
    required String? collage,
    @JsonKey(name: 'division')

    /// Division
    required String? division,
    @JsonKey(name: 'members')

    /// Members
    required List members,
    @JsonKey(name: 'has_code')

    /// Has Code
    required bool? hasCode,
    @JsonKey(name: 'number_of_students')

    /// Number Of Students
    required int? numberOfStudents,
  }) = _AppApiRoutesV1LecturerWeeklyScheduleRouteLecture;

  factory AppApiRoutesV1LecturerWeeklyScheduleRouteLecture.fromJson(
          Map<String, dynamic> json) =>
      _$AppApiRoutesV1LecturerWeeklyScheduleRouteLectureFromJson(json);
}
