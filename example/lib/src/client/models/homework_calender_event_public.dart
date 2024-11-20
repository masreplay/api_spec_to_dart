import 'package:freezed_annotation/freezed_annotation.dart';

part 'homework_calender_event_public.freezed.dart';
part 'homework_calender_event_public.g.dart';

@freezed
class HomeworkCalenderEventPublic with _$HomeworkCalenderEventPublic {
  const factory HomeworkCalenderEventPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'start_date') required DateTime? startDate,
    @JsonKey(name: 'start_date_formatted') required String? startDateFormatted,
    @JsonKey(name: 'end_date') required DateTime? endDate,
    @JsonKey(name: 'end_date_formatted') required String? endDateFormatted,
    @Default(String.assignment) @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
  }) = _HomeworkCalenderEventPublic;

  factory HomeworkCalenderEventPublic.fromJson(Map<String, dynamic> json) =>
      _$HomeworkCalenderEventPublicFromJson(json);
}
