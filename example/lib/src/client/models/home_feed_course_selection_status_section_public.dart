import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'home_feed_course_selection_status_section_public.freezed.dart';
part 'home_feed_course_selection_status_section_public.g.dart';

@freezed
class HomeFeedCourseSelectionStatusSectionPublic
    with _$HomeFeedCourseSelectionStatusSectionPublic {
  const factory HomeFeedCourseSelectionStatusSectionPublic({
    @JsonKey(name: 'id') required int id,
    @Default(String.course_selection_status)
    @JsonKey(name: 'type')
    required String type,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'data')
    required HomeFeedCourseSelectionStatusSectionDataPublic data,
  }) = _HomeFeedCourseSelectionStatusSectionPublic;

  factory HomeFeedCourseSelectionStatusSectionPublic.fromJson(
          Map<String, dynamic> json) =>
      _$HomeFeedCourseSelectionStatusSectionPublicFromJson(json);
}
