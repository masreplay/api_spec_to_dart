import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'country_public.freezed.dart';
part 'country_public.g.dart';

@freezed
class CountryPublic with _$CountryPublic {
  const CountryPublic._();

  @JsonSerializable(converters: convertors)
  const factory CountryPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'name')

    /// Name
    required String name,
  }) = _CountryPublic;

  factory CountryPublic.fromJson(Map<String, dynamic> json) =>
      _$CountryPublicFromJson(json);
}
