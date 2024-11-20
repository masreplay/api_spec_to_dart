import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'religion_public.freezed.dart';
part 'religion_public.g.dart';

@freezed
class ReligionPublic with _$ReligionPublic {
  const ReligionPublic._();

  @JsonSerializable(converters: convertors)
  const factory ReligionPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _ReligionPublic;

  factory ReligionPublic.fromJson(Map<String, dynamic> json) =>
      _$ReligionPublicFromJson(json);
}
