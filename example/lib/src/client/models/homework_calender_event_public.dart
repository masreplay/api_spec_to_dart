import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'homework_calender_event_public.freezed.dart';
part 'homework_calender_event_public.g.dart';

@freezed
class HomeworkCalenderEventPublic with _$HomeworkCalenderEventPublic {
  const HomeworkCalenderEventPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeworkCalenderEventPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'start_date')

    /// Start Date
    required DateTime? startDate,
    @JsonKey(name: 'start_date_formatted')

    /// Start Date Formatted
    required String? startDateFormatted,
    @JsonKey(name: 'end_date')

    /// End Date
    required DateTime? endDate,
    @JsonKey(name: 'end_date_formatted')

    /// End Date Formatted
    required String? endDateFormatted,
    @Default(assignment)
    @JsonKey(name: 'type')

    /// Type
    required String type,
    @JsonKey(name: 'title')

    /// Title
    required String title,
    @JsonKey(name: 'description')

    /// Description
    required String? description,
  }) = _HomeworkCalenderEventPublic;

  factory HomeworkCalenderEventPublic.fromJson(Map<String, dynamic> json) =>
      _$HomeworkCalenderEventPublicFromJson(json);
}
