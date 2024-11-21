import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'app_api_routes_v1_lecturer_weekly_schedule_route_lecture.freezed.dart';
part 'app_api_routes_v1_lecturer_weekly_schedule_route_lecture.g.dart';

///app__api__routes__v1__lecturer__weekly_schedule_route__Lecture

@freezed
class AppApiRoutesV1LecturerWeeklyScheduleRouteLecture
    with _$AppApiRoutesV1LecturerWeeklyScheduleRouteLecture {
  const AppApiRoutesV1LecturerWeeklyScheduleRouteLecture._();

  @JsonSerializable(converters: convertors)
  const factory AppApiRoutesV1LecturerWeeklyScheduleRouteLecture({
    /// Id
    @JsonKey(name: 'id') required int? id,

    /// Subject Title
    @JsonKey(name: 'subject_title') required String? subjectTitle,

    /// Start Time
    @JsonKey(name: 'start_time') required DateTime? startTime,

    /// End Time
    @JsonKey(name: 'end_time') required DateTime? endTime,

    /// Group Code
    @JsonKey(name: 'group_code') required String? groupCode,

    /// Room Code
    @JsonKey(name: 'room_code') required String? roomCode,

    /// Duration
    @JsonKey(name: 'duration') required num? duration,

    /// Grade
    @JsonKey(name: 'grade') required int? grade,

    /// Collage
    @JsonKey(name: 'collage') required String? collage,

    /// Division
    @JsonKey(name: 'division') required String? division,

    /// Members
    @JsonKey(name: 'members') required List<StudentSummery?> members,

    /// Has Code
    @JsonKey(name: 'has_code') required bool? hasCode,

    /// Number Of Students
    @JsonKey(name: 'number_of_students') required int? numberOfStudents,
  }) = _AppApiRoutesV1LecturerWeeklyScheduleRouteLecture;

  factory AppApiRoutesV1LecturerWeeklyScheduleRouteLecture.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AppApiRoutesV1LecturerWeeklyScheduleRouteLectureFromJson(json);
}
