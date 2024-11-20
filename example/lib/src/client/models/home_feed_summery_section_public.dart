import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'home_feed_summery_section_public.freezed.dart';
part 'home_feed_summery_section_public.g.dart';

@freezed
class HomeFeedSummerySectionPublic with _$HomeFeedSummerySectionPublic {
  const HomeFeedSummerySectionPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedSummerySectionPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Type
    @Default(summary) @JsonKey(name: 'type') required String type,

    /// Title
    @JsonKey(name: 'title') required String title,

    /// Description
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'data') required HomeFeedSummerySectionDataPublic data,
  }) = _HomeFeedSummerySectionPublic;

  factory HomeFeedSummerySectionPublic.fromJson(Map<String, dynamic> json) =>
      _$HomeFeedSummerySectionPublicFromJson(json);
}
