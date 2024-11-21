import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import 'package:example/src/gen/models/models.dart';

part 'home_feed_missing_payment_section_data_public.freezed.dart';
part 'home_feed_missing_payment_section_data_public.g.dart';

@freezed
class HomeFeedMissingPaymentSectionDataPublic
    with _$HomeFeedMissingPaymentSectionDataPublic {
  const HomeFeedMissingPaymentSectionDataPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedMissingPaymentSectionDataPublic({
    /// Price
    @JsonKey(name: 'price') required num price,
    @JsonKey(name: 'currency') required PriceCurrency currency,

    /// Price Formatted
    @JsonKey(name: 'price_formatted') required String priceFormatted,
  }) = _HomeFeedMissingPaymentSectionDataPublic;

  factory HomeFeedMissingPaymentSectionDataPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$HomeFeedMissingPaymentSectionDataPublicFromJson(json);
}
