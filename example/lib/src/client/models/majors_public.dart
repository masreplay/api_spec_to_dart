import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'majors_public.freezed.dart';
part 'majors_public.g.dart';

@freezed
class MajorsPublic with _$MajorsPublic {
  const MajorsPublic._();

  @JsonSerializable(converters: convertors)
  const factory MajorsPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'education_type_id')

    /// Education Type Id
    required int educationTypeId,
    @JsonKey(name: 'name')

    /// Name
    required String name,
  }) = _MajorsPublic;

  factory MajorsPublic.fromJson(Map<String, dynamic> json) =>
      _$MajorsPublicFromJson(json);
}
