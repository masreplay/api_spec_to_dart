import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'specialization_public.freezed.dart';
part 'specialization_public.g.dart';

@freezed
class SpecializationPublic with _$SpecializationPublic {
  const SpecializationPublic._();

  @JsonSerializable(converters: convertors)
  const factory SpecializationPublic({
    @JsonKey(name: 'major_id')

    /// Major Id
    required int majorId,
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'name')

    /// Name
    required String name,
  }) = _SpecializationPublic;

  factory SpecializationPublic.fromJson(Map<String, dynamic> json) =>
      _$SpecializationPublicFromJson(json);
}
