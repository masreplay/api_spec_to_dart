import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';
import './models.dart';

part 'home_feed_missing_payment_section_public.freezed.dart';
part 'home_feed_missing_payment_section_public.g.dart';

@freezed
class HomeFeedMissingPaymentSectionPublic
    with _$HomeFeedMissingPaymentSectionPublic {
  const HomeFeedMissingPaymentSectionPublic._();

  @JsonSerializable(converters: convertors)
  const factory HomeFeedMissingPaymentSectionPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @Default(missing_payment)
    @JsonKey(name: 'type')

    /// Type
    required String type,
    @JsonKey(name: 'title')

    /// Title
    required String title,
    @JsonKey(name: 'description')

    /// Description
    required String? description,
    @JsonKey(name: 'data')
    required HomeFeedMissingPaymentSectionDataPublic data,
  }) = _HomeFeedMissingPaymentSectionPublic;

  factory HomeFeedMissingPaymentSectionPublic.fromJson(
          Map<String, dynamic> json) =>
      _$HomeFeedMissingPaymentSectionPublicFromJson(json);
}
