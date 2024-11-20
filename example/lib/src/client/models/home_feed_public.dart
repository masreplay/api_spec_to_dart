import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'home_feed_public.freezed.dart';
part 'home_feed_public.g.dart';

@freezed
class HomeFeedPublic with _$HomeFeedPublic {
  const HomeFeedPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedPublic({
    @Default(feed)
    @JsonKey(name: 'type')

    /// Type
    required String type,
    @JsonKey(name: 'sections')

    /// Sections
    required List sections,
  }) = _HomeFeedPublic;

  factory HomeFeedPublic.fromJson(Map<String, dynamic> json) =>
      _$HomeFeedPublicFromJson(json);
}
