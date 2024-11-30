import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'religion_public.freezed.dart';
part 'religion_public.g.dart';

///ReligionPublic

@freezed
class ReligionPublic with _$ReligionPublic {
  const ReligionPublic._();

  @JsonSerializable(converters: convertors)
  const factory ReligionPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Name
    @JsonKey(name: 'name') required String name,
  }) = _ReligionPublic;

  factory ReligionPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ReligionPublicFromJson(
        json,
      );
}
