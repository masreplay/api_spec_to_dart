import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'student_os_public.freezed.dart';
part 'student_os_public.g.dart';

@freezed
class StudentOSPublic with _$StudentOSPublic {
  const StudentOSPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentOSPublic({
    @JsonKey(name: 'id')

    /// Id
    required int? id,
    @JsonKey(name: 'department')

    /// Department
    required String? department,
    @JsonKey(name: 'collage')

    /// Collage
    required String? collage,
    @JsonKey(name: 'year') required StudyYearPublic? year,
    @JsonKey(name: 'study_type')

    /// Study Type
    required int? studyType,
    @JsonKey(name: 'grade')

    /// Grade
    required int? grade,
    @JsonKey(name: 'current_semester')

    /// Current Semester
    required String? currentSemester,
  }) = _StudentOSPublic;

  factory StudentOSPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentOSPublicFromJson(json);
}
