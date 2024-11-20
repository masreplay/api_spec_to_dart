import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'base_response_lecture_homeworks_calender_response.freezed.dart';
part 'base_response_lecture_homeworks_calender_response.g.dart';

@freezed
class BaseResponseLectureHomeworksCalenderResponse
    with _$BaseResponseLectureHomeworksCalenderResponse {
  const BaseResponseLectureHomeworksCalenderResponse._();

  @JsonSerializable(converters: convertors)
  const factory BaseResponseLectureHomeworksCalenderResponse({
    @JsonKey(name: 'message')

    /// Message
    required String? message,
    @JsonKey(name: 'data') required LectureHomeworksCalenderResponse data,
  }) = _BaseResponseLectureHomeworksCalenderResponse;

  factory BaseResponseLectureHomeworksCalenderResponse.fromJson(
          Map<String, dynamic> json) =>
      _$BaseResponseLectureHomeworksCalenderResponseFromJson(json);
}
