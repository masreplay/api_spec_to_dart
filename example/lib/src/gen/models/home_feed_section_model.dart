import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:example/src/gen/models/models.dart';

part 'home_feed_section_model.freezed.dart';
part 'home_feed_section_model.g.dart';

///HomeFeedSectionModel

@freezed
class HomeFeedSectionModel with _$HomeFeedSectionModel {
  const factory HomeFeedSectionModel.fallback() = HomeFeedSectionModelFallback;

  @FreezedUnionValue('HomeFeedSummerySectionModel')
  const factory HomeFeedSectionModel.homeFeedSummerySectionModel(
    HomeFeedSummerySectionModel value,
  ) = HomeFeedSectionModelHomeFeedSummerySectionModel;

  @FreezedUnionValue('HomeFeedStudyProgramSectionPublic')
  const factory HomeFeedSectionModel.homeFeedStudyProgramSectionPublic(
    HomeFeedStudyProgramSectionPublic value,
  ) = HomeFeedSectionModelHomeFeedStudyProgramSectionPublic;

  @FreezedUnionValue('HomeFeedCourseSelectionStatusSectionModel')
  const factory HomeFeedSectionModel.homeFeedCourseSelectionStatusSectionModel(
    HomeFeedCourseSelectionStatusSectionModel value,
  ) = HomeFeedSectionModelHomeFeedCourseSelectionStatusSectionModel;

  @FreezedUnionValue('HomeFeedMissingPaymentSectionPublic')
  const factory HomeFeedSectionModel.homeFeedMissingPaymentSectionPublic(
    HomeFeedMissingPaymentSectionPublic value,
  ) = HomeFeedSectionModelHomeFeedMissingPaymentSectionPublic;

  factory HomeFeedSectionModel.fromJson(Map<String, dynamic> json) =>
      _$HomeFeedSectionModelFromJson(json);
}
