import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'governorate_public.freezed.dart';
part 'governorate_public.g.dart';

///GovernoratePublic

@freezed
class GovernoratePublic with _$GovernoratePublic {
  const GovernoratePublic._();

  @JsonSerializable(converters: convertors)
  const factory GovernoratePublic({
    /// Country Id
    @JsonKey(name: 'country_id') required int countryId,

    /// Id
    @JsonKey(name: 'id') required int id,

    /// Name
    @JsonKey(name: 'name') required String name,
  }) = _GovernoratePublic;

  factory GovernoratePublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GovernoratePublicFromJson(
        json,
      );
}
