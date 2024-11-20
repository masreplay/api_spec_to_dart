import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_fees_fees_types_public.freezed.dart';
part 'student_fees_fees_types_public.g.dart';

@freezed
class StudentFeesFeesTypesPublic with _$StudentFeesFeesTypesPublic {
  const StudentFeesFeesTypesPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentFeesFeesTypesPublic({
    @JsonKey(name: 'id')

    /// Id
    required int id,
    @JsonKey(name: 'name')

    /// Name
    required String name,
  }) = _StudentFeesFeesTypesPublic;

  factory StudentFeesFeesTypesPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentFeesFeesTypesPublicFromJson(json);
}
