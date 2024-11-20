import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'majors_public.freezed.dart';
part 'majors_public.g.dart';

@freezed
class MajorsPublic with _$MajorsPublic {
  const MajorsPublic._();

  @JsonSerializable(converters: convertors)
  const factory MajorsPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'education_type_id') required int educationTypeId,
    @JsonKey(name: 'name') required String name,
  }) = _MajorsPublic;

  factory MajorsPublic.fromJson(Map<String, dynamic> json) =>
      _$MajorsPublicFromJson(json);
}
