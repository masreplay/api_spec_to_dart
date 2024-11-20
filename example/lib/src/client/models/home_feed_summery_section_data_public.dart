import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'home_feed_summery_section_data_public.freezed.dart';
part 'home_feed_summery_section_data_public.g.dart';

@freezed
class HomeFeedSummerySectionDataPublic with _$HomeFeedSummerySectionDataPublic {
  const HomeFeedSummerySectionDataPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedSummerySectionDataPublic({
    @JsonKey(name: 'courses_count')

    /// Courses Count
    required int coursesCount,
    @JsonKey(name: 'courses_count_formatted')

    /// Courses Count Formatted
    required String coursesCountFormatted,
    @JsonKey(name: 'courses_completed_units_count')

    /// Courses Completed Units Count
    required int coursesCompletedUnitsCount,
    @JsonKey(name: 'courses_units_count')

    /// Courses Units Count
    required int coursesUnitsCount,
    @JsonKey(name: 'courses_units_formatted')

    /// Courses Units Formatted
    required String coursesUnitsFormatted,
  }) = _HomeFeedSummerySectionDataPublic;

  factory HomeFeedSummerySectionDataPublic.fromJson(
          Map<String, dynamic> json) =>
      _$HomeFeedSummerySectionDataPublicFromJson(json);
}
