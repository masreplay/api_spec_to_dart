import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'homework_calender_event_public.freezed.dart';
part 'homework_calender_event_public.g.dart';

///HomeworkCalenderEventPublic

@freezed
class HomeworkCalenderEventPublic with _$HomeworkCalenderEventPublic {
  const HomeworkCalenderEventPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeworkCalenderEventPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Start Date
    @JsonKey(name: 'start_date') required DateTime? startDate,

    /// Start Date Formatted
    @JsonKey(name: 'start_date_formatted') required String? startDateFormatted,

    /// End Date
    @JsonKey(name: 'end_date') required DateTime? endDate,

    /// End Date Formatted
    @JsonKey(name: 'end_date_formatted') required String? endDateFormatted,

    /// Type
    @Default('assignment') @JsonKey(name: 'type') String type,

    /// Title
    @JsonKey(name: 'title') required String title,

    /// Description
    @JsonKey(name: 'description') required String? description,
  }) = _HomeworkCalenderEventPublic;

  factory HomeworkCalenderEventPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$HomeworkCalenderEventPublicFromJson(
        json,
      );
}
