import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'home_feed_missing_payment_section_data_public.freezed.dart';
part 'home_feed_missing_payment_section_data_public.g.dart';

@freezed
class HomeFeedMissingPaymentSectionDataPublic
    with _$HomeFeedMissingPaymentSectionDataPublic {
  const HomeFeedMissingPaymentSectionDataPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedMissingPaymentSectionDataPublic({
    @JsonKey(name: 'price')

    /// Price
    required num price,
    @JsonKey(name: 'currency') required PriceCurrency currency,
    @JsonKey(name: 'price_formatted')

    /// Price Formatted
    required String priceFormatted,
  }) = _HomeFeedMissingPaymentSectionDataPublic;

  factory HomeFeedMissingPaymentSectionDataPublic.fromJson(
          Map<String, dynamic> json) =>
      _$HomeFeedMissingPaymentSectionDataPublicFromJson(json);
}
