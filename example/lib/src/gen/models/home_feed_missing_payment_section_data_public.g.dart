// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_feed_missing_payment_section_data_public.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeFeedMissingPaymentSectionDataPublicImpl
    _$$HomeFeedMissingPaymentSectionDataPublicImplFromJson(
            Map<String, dynamic> json) =>
        _$HomeFeedMissingPaymentSectionDataPublicImpl(
          price: json['price'] as num,
          currency: PriceCurrency.fromJson(json['currency'] as String),
          priceFormatted: json['price_formatted'] as String,
        );

Map<String, dynamic> _$$HomeFeedMissingPaymentSectionDataPublicImplToJson(
        _$HomeFeedMissingPaymentSectionDataPublicImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'currency': instance.currency,
      'price_formatted': instance.priceFormatted,
    };
