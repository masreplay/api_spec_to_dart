import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'nationalities_public.freezed.dart';
part 'nationalities_public.g.dart';

///NationalitiesPublic

@freezed
class NationalitiesPublic with _$NationalitiesPublic {
  const NationalitiesPublic._();

  @JsonSerializable(converters: convertors)
  const factory NationalitiesPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Name
    @JsonKey(name: 'name') required String name,
  }) = _NationalitiesPublic;

  factory NationalitiesPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NationalitiesPublicFromJson(
        json,
      );
}
