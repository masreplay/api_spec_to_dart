import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'home_feed_summery_section_public.freezed.dart';
part 'home_feed_summery_section_public.g.dart';

@freezed
class HomeFeedSummerySectionPublic with _$HomeFeedSummerySectionPublic {
  const factory HomeFeedSummerySectionPublic({
    @JsonKey(name: 'id') required int id,
    @Default(String.summary) @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'data') required HomeFeedSummerySectionDataPublic data,
  }) = _HomeFeedSummerySectionPublic;

  factory HomeFeedSummerySectionPublic.fromJson(Map<String, dynamic> json) =>
      _$HomeFeedSummerySectionPublicFromJson(json);
}
