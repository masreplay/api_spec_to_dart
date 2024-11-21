import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'course_selection_status_type.freezed.dart';
part 'course_selection_status_type.g.dart';

@freezed
class CourseSelectionStatusType with _$CourseSelectionStatusType {
  const CourseSelectionStatusType._();

  @JsonSerializable(converters: convertors)
  const factory CourseSelectionStatusType() = _CourseSelectionStatusType;

  factory CourseSelectionStatusType.fromJson(Map<String, dynamic> json) =>
      _$CourseSelectionStatusTypeFromJson(json);
}
