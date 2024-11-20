import 'package:freezed_annotation/freezed_annotation.dart';

part 'nationalities_public.freezed.dart';
part 'nationalities_public.g.dart';

@freezed
class NationalitiesPublic with _$NationalitiesPublic {
  const factory NationalitiesPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _NationalitiesPublic;

  factory NationalitiesPublic.fromJson(Map<String, dynamic> json) =>
      _$NationalitiesPublicFromJson(json);
}
