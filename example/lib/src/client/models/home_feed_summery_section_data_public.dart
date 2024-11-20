import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'home_feed_summery_section_data_public.freezed.dart';
part 'home_feed_summery_section_data_public.g.dart';

@freezed
class HomeFeedSummerySectionDataPublic with _$HomeFeedSummerySectionDataPublic {
  const HomeFeedSummerySectionDataPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedSummerySectionDataPublic({
    @JsonKey(name: 'courses_count') required int coursesCount,
    @JsonKey(name: 'courses_count_formatted')
    required String coursesCountFormatted,
    @JsonKey(name: 'courses_completed_units_count')
    required int coursesCompletedUnitsCount,
    @JsonKey(name: 'courses_units_count') required int coursesUnitsCount,
    @JsonKey(name: 'courses_units_formatted')
    required String coursesUnitsFormatted,
  }) = _HomeFeedSummerySectionDataPublic;

  factory HomeFeedSummerySectionDataPublic.fromJson(
          Map<String, dynamic> json) =>
      _$HomeFeedSummerySectionDataPublicFromJson(json);
}
