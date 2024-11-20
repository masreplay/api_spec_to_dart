import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'nationalities_public.freezed.dart';
part 'nationalities_public.g.dart';

@freezed
class NationalitiesPublic with _$NationalitiesPublic {
  const NationalitiesPublic._();

  @JsonSerializable(converters: convertors)
  const factory NationalitiesPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'name')

    /// Name
    required String name,
  }) = _NationalitiesPublic;

  factory NationalitiesPublic.fromJson(Map<String, dynamic> json) =>
      _$NationalitiesPublicFromJson(json);
}
