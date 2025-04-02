import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:swagger_api_client/src/gen/models/models.dart';

part 'feed_public.freezed.dart';
part 'feed_public.g.dart';

/// FeedPublic
@freezed
abstract class FeedPublic with _$FeedPublic {
  @JsonSerializable(converters: convertors)
  const factory FeedPublic({
    /// count
    @JsonKey(name: FeedPublic.countKey) required int count,

    /// data
    @JsonKey(name: FeedPublic.dataKey) required List<DataUnionResponse> data,
  }) = _FeedPublic;

  factory FeedPublic.fromJson(Map<String, dynamic> json) =>
      _$FeedPublicFromJson(json);
  const FeedPublic._();

  static const String countKey = 'count';
  static const String dataKey = 'data';
}
