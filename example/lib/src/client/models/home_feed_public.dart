import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'home_feed_public.freezed.dart';
part 'home_feed_public.g.dart';

@freezed
class HomeFeedPublic with _$HomeFeedPublic {
  const HomeFeedPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedPublic({
    /// Type
    @Default(feed) @JsonKey(name: 'type') required String type,

    /// Sections
    @JsonKey(name: 'sections') required List sections,
  }) = _HomeFeedPublic;

  factory HomeFeedPublic.fromJson(Map<String, dynamic> json) =>
      _$HomeFeedPublicFromJson(json);
}
