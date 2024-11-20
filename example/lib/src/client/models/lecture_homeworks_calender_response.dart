import 'package:freezed_annotation/freezed_annotation.dart';

part 'lecture_homeworks_calender_response.freezed.dart';
part 'lecture_homeworks_calender_response.g.dart';

@freezed
class LectureHomeworksCalenderResponse with _$LectureHomeworksCalenderResponse {
  const factory LectureHomeworksCalenderResponse({
    @JsonKey(name: 'events') required List events,
  }) = _LectureHomeworksCalenderResponse;

  factory LectureHomeworksCalenderResponse.fromJson(
          Map<String, dynamic> json) =>
      _$LectureHomeworksCalenderResponseFromJson(json);
}
