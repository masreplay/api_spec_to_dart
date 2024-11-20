import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'governorate_public.freezed.dart';
part 'governorate_public.g.dart';

@freezed
class GovernoratePublic with _$GovernoratePublic {
  const GovernoratePublic._();

  @JsonSerializable(converters: convertors)
  const factory GovernoratePublic({
    @JsonKey(name: 'country_id')

    /// Country Id
    required int countryId,
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'name')

    /// Name
    required String name,
  }) = _GovernoratePublic;

  factory GovernoratePublic.fromJson(Map<String, dynamic> json) =>
      _$GovernoratePublicFromJson(json);
}
