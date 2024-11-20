import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'home_feed_course_selection_status_section_public.freezed.dart';
part 'home_feed_course_selection_status_section_public.g.dart';

@freezed
class HomeFeedCourseSelectionStatusSectionPublic
    with _$HomeFeedCourseSelectionStatusSectionPublic {
  const HomeFeedCourseSelectionStatusSectionPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedCourseSelectionStatusSectionPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Type
    @Default(course_selection_status)
    @JsonKey(name: 'type')
    required String type,

    /// Title
    @JsonKey(name: 'title') required String title,

    /// Description
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'data')
    required HomeFeedCourseSelectionStatusSectionDataPublic data,
  }) = _HomeFeedCourseSelectionStatusSectionPublic;

  factory HomeFeedCourseSelectionStatusSectionPublic.fromJson(
          Map<String, dynamic> json) =>
      _$HomeFeedCourseSelectionStatusSectionPublicFromJson(json);
}
