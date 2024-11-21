import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'app_api_routes_v1_student_attendance_route_lecture.freezed.dart';
part 'app_api_routes_v1_student_attendance_route_lecture.g.dart';

@freezed
class AppApiRoutesV1StudentAttendanceRouteLecture
    with _$AppApiRoutesV1StudentAttendanceRouteLecture {
  const AppApiRoutesV1StudentAttendanceRouteLecture._();

  @JsonSerializable(converters: convertors)
  const factory AppApiRoutesV1StudentAttendanceRouteLecture({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Subject Title
    @JsonKey(name: 'subject_title') required String subjectTitle,

    /// Start Time
    @JsonKey(name: 'start_time') required DateTime startTime,

    /// End Time
    @JsonKey(name: 'end_time') required DateTime endTime,

    /// Group Code
    @JsonKey(name: 'group_code') required String groupCode,

    /// Semester Name
    @JsonKey(name: 'semester_name') required String semesterName,

    /// Room Code
    @JsonKey(name: 'room_code') required String roomCode,

    /// Duration
    @JsonKey(name: 'duration') required int duration,
  }) = _AppApiRoutesV1StudentAttendanceRouteLecture;

  factory AppApiRoutesV1StudentAttendanceRouteLecture.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AppApiRoutesV1StudentAttendanceRouteLectureFromJson(json);
}
