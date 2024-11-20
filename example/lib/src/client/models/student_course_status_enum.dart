import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_course_status_enum.freezed.dart';
part 'student_course_status_enum.g.dart';

@freezed
class StudentCourseStatusEnum with _$StudentCourseStatusEnum {
  const factory StudentCourseStatusEnum() = _StudentCourseStatusEnum;

  factory StudentCourseStatusEnum.fromJson(Map<String, dynamic> json) =>
      _$StudentCourseStatusEnumFromJson(json);
}
