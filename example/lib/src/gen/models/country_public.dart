import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'country_public.freezed.dart';
part 'country_public.g.dart';

///CountryPublic

@freezed
class CountryPublic with _$CountryPublic {
  const CountryPublic._();

  @JsonSerializable(converters: convertors)
  const factory CountryPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Name
    @JsonKey(name: 'name') required String name,
  }) = _CountryPublic;

  factory CountryPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CountryPublicFromJson(
        json,
      );
}
