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
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'subject_title')

    /// Subject Title
    required String subjectTitle,
    @JsonKey(name: 'start_time')

    /// Start Time
    required DateTime startTime,
    @JsonKey(name: 'end_time')

    /// End Time
    required DateTime endTime,
    @JsonKey(name: 'group_code')

    /// Group Code
    required String groupCode,
    @JsonKey(name: 'semester_name')

    /// Semester Name
    required String semesterName,
    @JsonKey(name: 'room_code')

    /// Room Code
    required String roomCode,
    @JsonKey(name: 'duration')

    /// Duration
    required int duration,
  }) = _AppApiRoutesV1StudentAttendanceRouteLecture;

  factory AppApiRoutesV1StudentAttendanceRouteLecture.fromJson(
          Map<String, dynamic> json) =>
      _$AppApiRoutesV1StudentAttendanceRouteLectureFromJson(json);
}
