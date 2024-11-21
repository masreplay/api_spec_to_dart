import 'package:freezed_annotation/freezed_annotation.dart';

import '../../convertors.dart';

part 'student_fees_fees_types_public.freezed.dart';
part 'student_fees_fees_types_public.g.dart';

///StudentFeesFeesTypesPublic

@freezed
class StudentFeesFeesTypesPublic with _$StudentFeesFeesTypesPublic {
  const StudentFeesFeesTypesPublic._();

  @JsonSerializable(converters: convertors)
  const factory StudentFeesFeesTypesPublic({
    /// Id
    @JsonKey(name: 'id') required int id,

    /// Name
    @JsonKey(name: 'name') required String name,
  }) = _StudentFeesFeesTypesPublic;

  factory StudentFeesFeesTypesPublic.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StudentFeesFeesTypesPublicFromJson(
        json,
      );
}
