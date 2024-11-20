import 'package:freezed_annotation/freezed_annotation.dart';

part 'governorate_public.freezed.dart';
part 'governorate_public.g.dart';

@freezed
class GovernoratePublic with _$GovernoratePublic {
  const factory GovernoratePublic({
    @JsonKey(name: 'country_id') required int countryId,
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _GovernoratePublic;

  factory GovernoratePublic.fromJson(Map<String, dynamic> json) =>
      _$GovernoratePublicFromJson(json);
}
