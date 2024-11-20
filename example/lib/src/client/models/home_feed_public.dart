import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_feed_public.freezed.dart';
part 'home_feed_public.g.dart';

@freezed
class HomeFeedPublic with _$HomeFeedPublic {
  const factory HomeFeedPublic({
    @Default(String.feed) @JsonKey(name: 'type') required String type,
    @JsonKey(name: 'sections') required List sections,
  }) = _HomeFeedPublic;

  factory HomeFeedPublic.fromJson(Map<String, dynamic> json) =>
      _$HomeFeedPublicFromJson(json);
}
