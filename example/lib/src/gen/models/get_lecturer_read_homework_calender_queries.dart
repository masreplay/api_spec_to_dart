import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'get_lecturer_read_homework_calender_queries.freezed.dart';
part 'get_lecturer_read_homework_calender_queries.g.dart';

@freezed
class GetLecturerReadHomeworkCalenderQueries
    with _$GetLecturerReadHomeworkCalenderQueries {
  const GetLecturerReadHomeworkCalenderQueries._();

  @JsonSerializable(converters: convertors)
  const factory GetLecturerReadHomeworkCalenderQueries({
    /// Course Id
    @JsonKey(name: 'courseId') required int? courseId,

    /// Start Date
    @JsonKey(name: 'startDate') required DateTime? startDate,

    /// End Date
    @JsonKey(name: 'endDate') required DateTime? endDate,
  }) = _GetLecturerReadHomeworkCalenderQueries;

  factory GetLecturerReadHomeworkCalenderQueries.fromJson(
          Map<String, dynamic> json) =>
      _$GetLecturerReadHomeworkCalenderQueriesFromJson(json);
}
