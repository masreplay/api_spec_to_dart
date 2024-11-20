import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_selected_courses.freezed.dart';
part 'update_selected_courses.g.dart';

@freezed
class UpdateSelectedCourses with _$UpdateSelectedCourses {
  const factory UpdateSelectedCourses({
    @JsonKey(name: 'course_id') required int courseId,
    @JsonKey(name: 'course_stuff_id') required int courseStuffId,
  }) = _UpdateSelectedCourses;

  factory UpdateSelectedCourses.fromJson(Map<String, dynamic> json) =>
      _$UpdateSelectedCoursesFromJson(json);
}
