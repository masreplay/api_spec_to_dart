import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'student_os_public.freezed.dart';
part 'student_os_public.g.dart';

///StudentOSPublic

@freezed
class StudentOSPublic with _$StudentOSPublic {
  const StudentOSPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentOSPublic({
    /// Id
    @JsonKey(name: 'id') required int? id,

    /// Department
    @JsonKey(name: 'department') required String? department,

    /// Collage
    @JsonKey(name: 'collage') required String? collage,
    @JsonKey(name: 'year') required StudyYearPublic? year,

    /// Study Type
    @JsonKey(name: 'study_type') required int? studyType,

    /// Grade
    @JsonKey(name: 'grade') required int? grade,

    /// Current Semester
    @JsonKey(name: 'current_semester') required String? currentSemester,
  }) = _StudentOSPublic;

  factory StudentOSPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentOSPublicFromJson(json);
}
