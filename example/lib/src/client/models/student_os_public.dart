import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'student_os_public.freezed.dart';
part 'student_os_public.g.dart';

@freezed
class StudentOSPublic with _$StudentOSPublic {
  const factory StudentOSPublic({
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'department') required String? department,
    @JsonKey(name: 'collage') required String? collage,
    @JsonKey(name: 'year') required StudyYearPublic? year,
    @JsonKey(name: 'study_type') required int? studyType,
    @JsonKey(name: 'grade') required int? grade,
    @JsonKey(name: 'current_semester') required String? currentSemester,
  }) = _StudentOSPublic;

  factory StudentOSPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentOSPublicFromJson(json);
}
