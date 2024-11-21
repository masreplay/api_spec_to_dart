import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'lecturer_calender_get_lecturer_read_homework_calender_queries.freezed.dart';
part 'lecturer_calender_get_lecturer_read_homework_calender_queries.g.dart';

///lecturerCalenderGetLecturerReadHomeworkCalenderQueries

@freezed
class LecturerCalenderGetLecturerReadHomeworkCalenderQueries
    with _$LecturerCalenderGetLecturerReadHomeworkCalenderQueries {
  const LecturerCalenderGetLecturerReadHomeworkCalenderQueries._();

  @JsonSerializable(converters: convertors)
  const factory LecturerCalenderGetLecturerReadHomeworkCalenderQueries({
    /// Course Id
    @JsonKey(name: 'courseId') required int? courseId,

    /// Start Date
    @JsonKey(name: 'startDate') required DateTime? startDate,

    /// End Date
    @JsonKey(name: 'endDate') required DateTime? endDate,
  }) = _LecturerCalenderGetLecturerReadHomeworkCalenderQueries;

  factory LecturerCalenderGetLecturerReadHomeworkCalenderQueries.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LecturerCalenderGetLecturerReadHomeworkCalenderQueriesFromJson(
        json,
      );
}
