import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'home_feed_course_selection_status_section_model.freezed.dart';
part 'home_feed_course_selection_status_section_model.g.dart';

///HomeFeedCourseSelectionStatusSectionModel

@freezed
class HomeFeedCourseSelectionStatusSectionModel
    with _$HomeFeedCourseSelectionStatusSectionModel {
  const HomeFeedCourseSelectionStatusSectionModel._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedCourseSelectionStatusSectionModel({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Type
    @Default('course_selection_status') @JsonKey(name: 'type') String type,

    /// Title
    @JsonKey(name: 'title') required String title,

    /// Description
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'data')
    required HomeFeedCourseSelectionStatusSectionDataPublic data,
  }) = _HomeFeedCourseSelectionStatusSectionModel;

  factory HomeFeedCourseSelectionStatusSectionModel.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$HomeFeedCourseSelectionStatusSectionModelFromJson(
        json,
      );
}
