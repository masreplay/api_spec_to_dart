import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'home_feed_study_program_section_data_public.freezed.dart';
part 'home_feed_study_program_section_data_public.g.dart';

@freezed
class HomeFeedStudyProgramSectionDataPublic
    with _$HomeFeedStudyProgramSectionDataPublic {
  const HomeFeedStudyProgramSectionDataPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedStudyProgramSectionDataPublic({
    @JsonKey(name: 'study_program_id')

    /// Study Program Id
    required int studyProgramId,
    @JsonKey(name: 'name')

    /// Name
    required int name,
    @JsonKey(name: 'study_year')

    /// Study Year
    required String studyYear,
    @JsonKey(name: 'study_year_formatted')

    /// Study Year Formatted
    required String studyYearFormatted,
    @JsonKey(name: 'study_type') required StudyProgramType studyType,
    @JsonKey(name: 'study_type_formatted')

    /// Study Type Formatted
    required String studyTypeFormatted,
    @JsonKey(name: 'semester')

    /// Semester
    required String semester,
    @JsonKey(name: 'grade')

    /// Grade
    required int grade,
    @JsonKey(name: 'grade_formatted')

    /// Grade Formatted
    required String gradeFormatted,
  }) = _HomeFeedStudyProgramSectionDataPublic;

  factory HomeFeedStudyProgramSectionDataPublic.fromJson(
          Map<String, dynamic> json) =>
      _$HomeFeedStudyProgramSectionDataPublicFromJson(json);
}
