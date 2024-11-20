import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_year_public.freezed.dart';
part 'study_year_public.g.dart';

@freezed
class StudyYearPublic with _$StudyYearPublic {
  const factory StudyYearPublic({
    @JsonKey(name: 'id') required int id,
    @JsonKey(name: 'value') required String value,
  }) = _StudyYearPublic;

  factory StudyYearPublic.fromJson(Map<String, dynamic> json) =>
      _$StudyYearPublicFromJson(json);
}
