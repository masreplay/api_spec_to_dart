import 'package:freezed_annotation/freezed_annotation.dart';

part 'country_public.freezed.dart';
part 'country_public.g.dart';

@freezed
class CountryPublic with _$CountryPublic {
  const factory CountryPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _CountryPublic;

  factory CountryPublic.fromJson(Map<String, dynamic> json) =>
      _$CountryPublicFromJson(json);
}
