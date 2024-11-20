import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'home_feed_course_selection_status_section_data_public.freezed.dart';
part 'home_feed_course_selection_status_section_data_public.g.dart';

@freezed
class HomeFeedCourseSelectionStatusSectionDataPublic
    with _$HomeFeedCourseSelectionStatusSectionDataPublic {
  const factory HomeFeedCourseSelectionStatusSectionDataPublic({
    @JsonKey(name: 'status') required CourseSelectionStatusType status,
  }) = _HomeFeedCourseSelectionStatusSectionDataPublic;

  factory HomeFeedCourseSelectionStatusSectionDataPublic.fromJson(
          Map<String, dynamic> json) =>
      _$HomeFeedCourseSelectionStatusSectionDataPublicFromJson(json);
}
