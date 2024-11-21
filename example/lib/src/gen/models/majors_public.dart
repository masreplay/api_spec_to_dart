import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'majors_public.freezed.dart';
part 'majors_public.g.dart';

///MajorsPublic

@freezed
class MajorsPublic with _$MajorsPublic {
  const MajorsPublic._();

  @JsonSerializable(converters: convertors)
  const factory MajorsPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Education Type Id
    @JsonKey(name: 'education_type_id') required int educationTypeId,

    /// Name
    @JsonKey(name: 'name') required String name,
  }) = _MajorsPublic;

  factory MajorsPublic.fromJson(Map<String, dynamic> json) =>
      _$MajorsPublicFromJson(json);
}
