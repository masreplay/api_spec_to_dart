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
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @Default(summary)
    @JsonKey(name: 'type')

    /// Type
    required String type,
    @JsonKey(name: 'title')

    /// Title
    required String title,
    @JsonKey(name: 'description')

    /// Description
    required String? description,
    @JsonKey(name: 'data') required HomeFeedSummerySectionDataPublic data,
  }) = _HomeFeedSummerySectionPublic;

  factory HomeFeedSummerySectionPublic.fromJson(Map<String, dynamic> json) =>
      _$HomeFeedSummerySectionPublicFromJson(json);
}
