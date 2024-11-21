import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'selected_course_result_enum.freezed.dart';
part 'selected_course_result_enum.g.dart';

@freezed
class SelectedCourseResultEnum with _$SelectedCourseResultEnum {
  const SelectedCourseResultEnum._();

  @JsonSerializable(converters: convertors)
  const factory SelectedCourseResultEnum() = _SelectedCourseResultEnum;

  factory SelectedCourseResultEnum.fromJson(Map<String, dynamic> json) =>
      _$SelectedCourseResultEnumFromJson(json);
}
