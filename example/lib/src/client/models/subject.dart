import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'subject.freezed.dart';
part 'subject.g.dart';

@freezed
class Subject with _$Subject {
  const Subject._();

  @JsonSerializable(converters: convertors)
  const factory Subject({
    @JsonKey(name: 'id')

    /// Id
    required int? id,
    @JsonKey(name: 'selected_course_id')

    /// Selected Course Id
    required int? selectedCourseId,
    @JsonKey(name: 'name')

    /// Name
    required String? name,
    @JsonKey(name: 'arabic_name')

    /// Arabic Name
    required String? arabicName,
    @JsonKey(name: 'english_name')

    /// English Name
    required String? englishName,
    @JsonKey(name: 'code')

    /// Code
    required String? code,
    @JsonKey(name: 'number_of_units')

    /// Number Of Units
    required int? numberOfUnits,
    @JsonKey(name: 'semester_id')

    /// Semester Id
    required int? semesterId,
    @JsonKey(name: 'is_enrolled')

    /// Is Enrolled
    required bool? isEnrolled,
    @JsonKey(name: 'is_enabled')

    /// Is Enabled
    required bool? isEnabled,
    @JsonKey(name: 'course_status')

    /// Course Status
    required int? courseStatus,
    @JsonKey(name: 'course_staff')

    /// Course Staff
    required List? courseStaff,
  }) = _Subject;

  factory Subject.fromJson(Map<String, dynamic> json) =>
      _$SubjectFromJson(json);
}
