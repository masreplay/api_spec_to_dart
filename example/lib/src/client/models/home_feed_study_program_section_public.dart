import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'home_feed_study_program_section_public.freezed.dart';
part 'home_feed_study_program_section_public.g.dart';

@freezed
class HomeFeedStudyProgramSectionPublic
    with _$HomeFeedStudyProgramSectionPublic {
  const HomeFeedStudyProgramSectionPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedStudyProgramSectionPublic({
    @JsonKey(name: 'id') required int id,
    @Default(study_program) @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'data') required HomeFeedStudyProgramSectionDataPublic data,
  }) = _HomeFeedStudyProgramSectionPublic;

  factory HomeFeedStudyProgramSectionPublic.fromJson(
          Map<String, dynamic> json) =>
      _$HomeFeedStudyProgramSectionPublicFromJson(json);
}
