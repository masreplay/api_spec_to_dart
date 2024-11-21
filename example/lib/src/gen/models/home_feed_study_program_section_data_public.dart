import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'home_feed_study_program_section_data_public.freezed.dart';
part 'home_feed_study_program_section_data_public.g.dart';

@freezed
class HomeFeedStudyProgramSectionDataPublic
    with _$HomeFeedStudyProgramSectionDataPublic {
  const HomeFeedStudyProgramSectionDataPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedStudyProgramSectionDataPublic({
    /// Study Program Id
    @JsonKey(name: 'study_program_id') required int studyProgramId,

    /// Name
    @JsonKey(name: 'name') required int name,

    /// Study Year
    @JsonKey(name: 'study_year') required String studyYear,

    /// Study Year Formatted
    @JsonKey(name: 'study_year_formatted') required String studyYearFormatted,
    @JsonKey(name: 'study_type') required StudyProgramType studyType,

    /// Study Type Formatted
    @JsonKey(name: 'study_type_formatted') required String studyTypeFormatted,

    /// Semester
    @JsonKey(name: 'semester') required String semester,

    /// Grade
    @JsonKey(name: 'grade') required int grade,

    /// Grade Formatted
    @JsonKey(name: 'grade_formatted') required String gradeFormatted,
  }) = _HomeFeedStudyProgramSectionDataPublic;

  factory HomeFeedStudyProgramSectionDataPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$HomeFeedStudyProgramSectionDataPublicFromJson(json);
}
