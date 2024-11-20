import 'package:freezed_annotation/freezed_annotation.dart';

part 'subject.freezed.dart';
part 'subject.g.dart';

@freezed
class Subject with _$Subject {
  const factory Subject({
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'selected_course_id') required int? selectedCourseId,
    @JsonKey(name: 'name') required String? name,
    @JsonKey(name: 'arabic_name') required String? arabicName,
    @JsonKey(name: 'english_name') required String? englishName,
    @JsonKey(name: 'code') required String? code,
    @JsonKey(name: 'number_of_units') required int? numberOfUnits,
    @JsonKey(name: 'semester_id') required int? semesterId,
    @JsonKey(name: 'is_enrolled') required bool? isEnrolled,
    @JsonKey(name: 'is_enabled') required bool? isEnabled,
    @JsonKey(name: 'course_status') required int? courseStatus,
    @JsonKey(name: 'course_staff') required List? courseStaff,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}
