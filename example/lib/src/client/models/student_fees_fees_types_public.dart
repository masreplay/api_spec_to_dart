import 'package:freezed_annotation/freezed_annotation.dart';

part 'student_fees_fees_types_public.freezed.dart';
part 'student_fees_fees_types_public.g.dart';

@freezed
class StudentFeesFeesTypesPublic with _$StudentFeesFeesTypesPublic {
  const factory StudentFeesFeesTypesPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'name') required String name,
  }) = _StudentFeesFeesTypesPublic;

  factory StudentFeesFeesTypesPublic.fromJson(Map<String, dynamic> json) =>
      _$StudentFeesFeesTypesPublicFromJson(json);
}
