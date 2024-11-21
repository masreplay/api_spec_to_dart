import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'subject.freezed.dart';
part 'subject.g.dart';

@freezed
class Subject with _$Subject {
  const Subject._();

  @JsonSerializable(converters: convertors)
  const factory Subject({
    /// Id
    @JsonKey(name: 'id') required int? id,

    /// Selected Course Id
    @JsonKey(name: 'selected_course_id') required int? selectedCourseId,

    /// Name
    @JsonKey(name: 'name') required String? name,

    /// Arabic Name
    @JsonKey(name: 'arabic_name') required String? arabicName,

    /// English Name
    @JsonKey(name: 'english_name') required String? englishName,

    /// Code
    @JsonKey(name: 'code') required String? code,

    /// Number Of Units
    @JsonKey(name: 'number_of_units') required int? numberOfUnits,

    /// Semester Id
    @JsonKey(name: 'semester_id') required int? semesterId,

    /// Is Enrolled
    @JsonKey(name: 'is_enrolled') required bool? isEnrolled,

    /// Is Enabled
    @JsonKey(name: 'is_enabled') required bool? isEnabled,

    /// Course Status
    @JsonKey(name: 'course_status') required int? courseStatus,

    /// Course Staff
    @JsonKey(name: 'course_staff')
    required List<CourseStaffsTable>? courseStaff,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}
