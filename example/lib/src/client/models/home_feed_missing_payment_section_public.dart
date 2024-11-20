import 'package:freezed_annotation/freezed_annotation.dart';

import './models.dart';

part 'home_feed_missing_payment_section_public.freezed.dart';
part 'home_feed_missing_payment_section_public.g.dart';

@freezed
class HomeFeedMissingPaymentSectionPublic
    with _$HomeFeedMissingPaymentSectionPublic {
  const factory HomeFeedMissingPaymentSectionPublic({
    @JsonKey(name: 'id') required int id,
    @Default(String.missing_payment)
    @JsonKey(name: 'type')
    required String type,
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'description') required String? description,
    @JsonKey(name: 'data')
    required HomeFeedMissingPaymentSectionDataPublic data,
  }) = _HomeFeedMissingPaymentSectionPublic;

  factory HomeFeedMissingPaymentSectionPublic.fromJson(
          Map<String, dynamic> json) =>
      _$HomeFeedMissingPaymentSectionPublicFromJson(json);
}
